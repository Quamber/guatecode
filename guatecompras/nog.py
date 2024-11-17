""" https://www.fiverr.com/abhijitk260 """
import sys
import csv
import time
import sqlite3
import requests
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC


"""
CREATE TABLE "contest_details" (
	"nog"	INTEGER NOT NULL,
	"description"	TEXT,
	"modality"	TEXT,
	"category"	TEXT,
	"contest_type"	TEXT,
	"entity"	TEXT,
	"entity_type"	TEXT,
	"coordinating_entity"	TEXT,
	"type_of_receipt_of_offers"	TEXT,
	"publication_date"	TEXT,
	"offer_submission_date"	TEXT,
	"closing_date_for_receipt_of_offers"	TEXT,
	"process_type"	TEXT,
	"support_guarantee_percentage"	TEXT,
	"performance_bond_percentage"	TEXT,
	"last_award_date"	TEXT,
	"date_of_last_status_change"	TEXT,
	"status"	TEXT,
	"proof_of_budget_availability"	TEXT,
	"contract_execution_detail"	TEXT,
	"purchasing_unit"	TEXT,
	"presented_offers"	TEXT,
	PRIMARY KEY("nog")
);
CREATE TABLE "stock_history" (
	"nog"	INTEGER NOT NULL,
	"no"	INTEGER,
	"action"	TEXT,
	"description"	TEXT,
	"description_html"	TEXT,
	PRIMARY KEY("nog")
);


CREATE TABLE "open_contracts" (
	"nog"	INTEGER NOT NULL,
	"open_contract"	TEXT,
	"status"	TEXT,
	"start_date"	TEXT,
	"due_date"	TEXT,
	"observations"	TEXT,
	"category"	TEXT,
	"minimum_order_to_receive_free_shipping"	TEXT,
	"allocation_currency_of_all_products"	TEXT,
	"open_contract_history"	TEXT,
	"contract_execution_detail"	TEXT,
	PRIMARY KEY("nog")
);
CREATE TABLE "open_contract_products" (
	"nog"	INTEGER,
	"category"	TEXT,
	"products"	INTEGER,
	"suppliers"	INTEGER,
	PRIMARY KEY("nog")
);
"""


captcha_api = "d6b5ba5200fc32eceec2aa85cdf6e11f"

db_connection = sqlite3.connect("data2.db")
db_cursor = db_connection.cursor()


nog_list = []
with open('nog-list.txt', encoding="utf-8") as f:
    r = csv.reader(f)
    for x in r:
        if x and x[0] not in nog_list:
            nog_list.append(x[0])

driver = webdriver.Chrome()


def next_page():
    """ Next Page"""
    next = 0
    pages = driver.find_elements(By.CSS_SELECTOR, ".FooterTablaDetalle tr td")
    for page in pages[1:]:
        elem = page.find_element(By.XPATH, "./*")
        if elem.tag_name == "span":
            next = 1
        elif next == 1 and elem.tag_name == "a":
            elem.click()
            WebDriverWait(driver, 50).until(EC.staleness_of(elem))
            return True
    return False

def solve_turnstile_captcha(driver, captcha_api, site_key, page_url):
    """
    Solve Cloudflare Turnstile CAPTCHA using a third-party service like 2Captcha.
    """
    try:
        # Submit CAPTCHA-solving request to 2Captcha
        print("Sending Turnstile CAPTCHA for solving...")
        req = requests.post("https://2captcha.com/in.php", json={
            "key": captcha_api,
            "method": "turnstile",
            "sitekey": site_key,
            "pageurl": page_url,
            "json": 1
        }, timeout=30)

        res = req.json()
        if res.get("status") == 1:
            captcha_id = res["request"]
            print(f"Captcha ID: {captcha_id}")

            # Poll for the CAPTCHA solution
            while True:
                time.sleep(5)
                req = requests.get(
                    f"https://2captcha.com/res.php?json=1&key={captcha_api}&action=get&id={captcha_id}",
                    timeout=30
                )
                res = req.json()
                if res.get("status") == 1:
                    captcha_solution = res["request"]
                    print(f"Turnstile CAPTCHA Solved: {captcha_solution}")
                    return captcha_solution
                elif "error_text" in res:
                    print(f"Error: {res['error_text']}")
                    sys.exit()
        else:
            print(f"Error: {res.get('error_text', 'Unknown error')} while sending Turnstile CAPTCHA.")
            sys.exit()
    except Exception as e:
        print(f"Error solving Turnstile CAPTCHA: {e}")
        return None

def handle_dialogue_box():
    try:
        # Wait for the dialogue box to appear
        dialogue_box = WebDriverWait(driver, 10).until(
            EC.presence_of_element_located((By.ID, "MasterGC_ContentBlockHolder_wucTimeContratoAbierto_pubCancel"))
        )
        # Click the cancel button
        dialogue_box.click()
        print("Dialogue box handled successfully")
        return True
    except Exception as e:
        print(f"Error handling dialogue box: {e}")
        return False


def stock_history():
    """stock_history"""
    time.sleep(2)
    rows = driver.find_elements(
        By.CSS_SELECTOR,
        "#MasterGC_ContentBlockHolder_wucConsultaConcursoHistorial_gvResultado tr.FilaTablaDetalle"
    )
    for row in rows:
        columns = row.find_elements(By.XPATH, "./td")
        _columns = [nog]
        for i, column in enumerate(columns):
            if i == 2:
                _columns.append(column.text.strip())
                _columns.append(column.get_attribute("innerHTML").strip())
            elif i < 2:
                _columns.append(column.text.strip())

        sql = db_cursor.execute("SELECT * FROM `stock_history` WHERE `nog`=? AND `no`=? LIMIT 1",
                                (_columns[0], _columns[1]))
        result = sql.fetchone()
        try:
            if result is None:
                db_cursor.execute(
                    "INSERT INTO `stock_history` (nog, no, action, description, description_html) VALUES (?, ?, ?, ?, ?)",
                    (_columns,)
                )
                db_connection.commit()
            else:
                _columns.append(db_row[0])
                _columns.append(db_row[1])
                db_cursor.executemany(
                    "UPDATE `stock_history` SET nog=?, no=?, action=?, description=?, description_html=? WHERE nog=? AND no=?",
                    (_columns, )
                )
                db_connection.commit()
        except: pass


for nog in nog_list:

    driver.get("http://www.guatecompras.gt/")
    time.sleep(3)

    field = driver.find_element(By.ID, "ctl00_ContentBlockHolder_txtInputNOG")
    field.send_keys(nog)
    field.send_keys(Keys.ENTER)
    time.sleep(1)

    max_attempts = 3
    attempt = 0
    while attempt < max_attempts:
        try:
            captcha_element = WebDriverWait(driver, 10).until(
                EC.presence_of_element_located((By.ID, "MasterGC_ContentBlockHolder_divCaptcha"))
            )
            print("Turnstile CAPTCHA detected.")

            # Extract site key
            site_key = captcha_element.get_attribute("data-sitekey")
            page_url = driver.current_url

            captcha_solution = solve_turnstile_captcha(driver, captcha_api, site_key, page_url)
            print("Captcha solution: ", captcha_solution)
            if captcha_solution:
                # Inject the CAPTCHA response into the page
                driver.execute_script(f"validarCaptcha('{captcha_solution}');")
                # Wait for the page to load after CAPTCHA submission
                WebDriverWait(driver, 8).until(
                    EC.invisibility_of_element_located((By.ID, "MasterGC_ContentBlockHolder_divCaptcha"))
                )
                
                # Try to handle the dialogue box, but continue even if it's not present
                try:
                    handle_dialogue_box()
                except Exception as e:
                    print(f"No dialogue box found or error handling it: {e}")
                
                print("Successfully bypassed captcha")
                break
            else:
                print("Failed to solve CAPTCHA. Retrying...")
                attempt += 1
        except Exception as e:
            print(f"Error during CAPTCHA solving or dialogue box handling: {e}")
            attempt += 1
        
        if attempt < max_attempts:
            print(f"Retrying... Attempt {attempt + 1} of {max_attempts}")
            time.sleep(5)
        else:
            print(f"Failed to bypass captcha and handle dialogue box after {max_attempts} attempts. Skipping this NOG.")

    if attempt >= max_attempts:
        continue  # Skip to the next NOG in the list

    driver.find_element(By.XPATH, './/li/a[.="Historial de acciones"]').click()
    time.sleep(1)
    WebDriverWait(driver, 15).until(EC.invisibility_of_element_located(
        (By.ID, "MasterGC_ContentBlockHolder_panelUpdateProgress")))
    time.sleep(1)

    db_row = ["" for _ in range(22)]

    rows = driver.find_elements(By.CSS_SELECTOR, ".TablaForm3 .row")
    print("++++++++++++++length of rows: ", len(rows))
    for row in rows:
        columns = row.find_elements(By.XPATH, "./*")
        label = columns[0].text.strip()
        value = columns[1].text.strip()
        # print("Row: ", row)

        db_row[0] = nog
        # Description
        if label == "Descripción:":
            db_row[1] = value
        # Modality
        elif label == "Modalidad:":
            db_row[2] = value
        # Category
        elif label == "Categoría:":
            db_row[3] = value
        # Contest
        elif label == "Tipo de concurso:":
            db_row[4] = value
        # Entity
        elif label == "Entidad:":
            db_row[5] = value
        # Entity type
        elif label == "Tipo de Entidad:":
            db_row[6] = value
        # Coordinating Entity
        elif label == "Entidad Coordinadora:":
            db_row[7] = value
        # Type of receipt of offers
        elif label == "Tipo de recepción de ofertas:":
            db_row[8] = value
        # Publication date
        elif label == "Fecha de publicación:":
            db_row[9] = value
        # Offer submission date
        elif label == "Fecha de presentación de ofertas:":
            db_row[10] = value
        # Closing date for receipt of offers
        elif label == "Fecha de cierre de recepción de ofertas:":
            db_row[11] = value
        # Process Type
        elif label == "Tipo Proceso:":
            db_row[12] = value
        # Support Guarantee Percentage
        elif label == "Porcentaje de Fianza de sostenimiento:":
            db_row[13] = value
        # Performance Bond Percentage
        elif label == "Porcentaje de Fianza de cumplimiento:":
            db_row[14] = value
        # Last award date:
        elif label == "Fecha de última adjudicación:":
            db_row[15] = value
        # Date of last status change:
        elif label == "Fecha del último cambio de estatus:":
            db_row[16] = value
        # Status:
        elif label == "Estatus:":
            db_row[17] = value
        # Proof of budget availability:
        elif label == "Constancia de disponibilidad presupuestaria:":
            db_row[18] = value
        # Contract Execution Detail
        elif label == "Detalle de Ejecución del Contrato:":
            db_row[19] = value
        # Purchasing unit:
        elif label == "Unidad compradora:":
            db_row[20] = value
        # Ofertas Presentadas
        elif label == "Ofertas Presentadas:":
            db_row[21] = value

    sql = db_cursor.execute("SELECT * FROM `contest_details` WHERE `nog`=? LIMIT 1", (nog,))
    result = sql.fetchone()
    if result is None:
        db_cursor.executemany(
            "INSERT INTO `contest_details` (nog, description, modality, category, contest_type, entity, entity_type, coordinating_entity, type_of_receipt_of_offers, publication_date, offer_submission_date, closing_date_for_receipt_of_offers, process_type, support_guarantee_percentage, performance_bond_percentage, last_award_date, date_of_last_status_change, status, proof_of_budget_availability, contract_execution_detail, purchasing_unit, presented_offers) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
            (db_row,)
        )
        db_connection.commit()
    else:
        db_row.append(db_row[0])
        db_cursor.executemany(
            "UPDATE `contest_details` SET nog=?, description=?, modality=?, category=?, contest_type=?, entity=?, entity_type=?, coordinating_entity=?, type_of_receipt_of_offers=?, publication_date=?, offer_submission_date=?, closing_date_for_receipt_of_offers=?, process_type=?, support_guarantee_percentage=?, performance_bond_percentage=?, last_award_date=?, date_of_last_status_change=?, status=?, proof_of_budget_availability=?, contract_execution_detail=?, purchasing_unit=?, presented_offers=? WHERE nog=?",
            (db_row, )
        )
        db_connection.commit()

    stock_history()
    while next_page():
        stock_history()

driver.close()
driver.quit()
