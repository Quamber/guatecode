""" https://www.fiverr.com/abhijitk260 """
import time
import sqlite3
from selenium import webdriver
from selenium.webdriver.common.by import By


db_connection = sqlite3.connect("data.db")
db_cursor = db_connection.cursor()

driver = webdriver.Chrome()


driver.get("http://www.guatecompras.gt/")
time.sleep(2)

driver.find_element(By.ID, "lnk-contratos").click()

links = driver.find_elements(By.CSS_SELECTOR, "#MasterGC_ContentBlockHolder_grid .FilaTablaDetalle td:nth-child(2) a")
link_list = [a.get_attribute("href") for a in links]


for link in link_list:

    driver.get(link)
    time.sleep(2)

    db_row = ["" for _ in range(11)]

    rows = driver.find_elements(By.CSS_SELECTOR, ".TablaForm3 .row")
    for row in rows:
        columns = row.find_elements(By.XPATH, "./*")
        label = columns[0].text.strip()
        value = columns[1].text.strip()

        # Description
        if label == "Número de contrato abierto (NOG):":
            db_row[0] = value
        # Modality
        elif label == "Contrato Abierto:":
            db_row[1] = value
        # Category
        elif label == "Estatus:":
            db_row[2] = value
        # Contest
        elif label == "Fecha de inicio:":
            db_row[3] = value
        # Entity
        elif label == "Fecha de vencimiento:":
            db_row[4] = value
        # Entity type
        elif label == "Observaciones:":
            db_row[5] = value
        # Coordinating Entity
        elif label == "Categoría:":
            db_row[6] = value
        # Type of receipt of offers
        elif label == "Pedido mínimo para recibir flete gratis:":
            db_row[7] = value
        # Publication date
        elif label == "Moneda de adjudicación de todos los productos:":
            db_row[8] = value
        # Offer submission date
        elif label == "Historial del contrato abierto:":
            db_row[9] = value
        # Closing date for receipt of offers
        elif label == "Detalle de Ejecución del Contrato:":
            db_row[10] = value

    sql = db_cursor.execute("SELECT * FROM `open_contracts` WHERE `nog`=? LIMIT 1", (db_row[0],))
    result = sql.fetchone()
    if result is None:
        db_cursor.executemany(
            "INSERT INTO `open_contracts` (nog, open_contract, status, start_date, due_date, observations, category, minimum_order_to_receive_free_shipping, allocation_currency_of_all_products, open_contract_history, contract_execution_detail) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
            (db_row,)
        )
        db_connection.commit()
    else:
        db_row.append(db_row[0])
        db_cursor.executemany(
            "UPDATE `open_contracts` SET nog=?, open_contract=?, status=?, start_date=?, due_date=?, observations=?, category=?, minimum_order_to_receive_free_shipping=?, allocation_currency_of_all_products=?, open_contract_history=?, contract_execution_detail=? WHERE nog=?",
            (db_row, )
        )
        db_connection.commit()

    sql = db_cursor.execute("DELETE FROM `open_contract_products` WHERE `nog`=?", (db_row[0],))

    rows = driver.find_elements(
        By.CSS_SELECTOR,
        "#MasterGC_ContentBlockHolder_dgProductos tr.FilaTablaDetalle"
    )

    arows = []

    for row in rows:
        columns = row.find_elements(By.XPATH, "./td")
        _columns = [db_row[0]]
        for i, column in enumerate(columns):
            if i < 3:
                _columns.append(column.text.strip())
            if i == 1:
                a = column.find_element(By.TAG_NAME, "a")
                _columns.append(a.get_attribute("href"))
        arows.append(_columns)

    for row in arows:
        driver.get(row[3])
        time.sleep(2)

        brows = []

        irows = driver.find_elements(
            By.CSS_SELECTOR,
            "#MasterGC_ContentBlockHolder_dgProductos tr.FilaTablaDetalle"
        )

        for irow in irows:
            columns = irow.find_elements(By.XPATH, "./td")
            _columns = [row[0], row[1], row[2], row[4]]
            for i, column in enumerate(columns):
                if i < 3:
                    _columns.append(column.text.strip())
                if i == 1:
                    a = column.find_element(By.TAG_NAME, "a")
                    _columns.append(a.get_attribute("href"))
            brows.append(_columns)

        for brow in brows:
            driver.get(brow[6])
            time.sleep(2)

            crows = []

            irows = driver.find_elements(
                By.CSS_SELECTOR,
                "#MasterGC_ContentBlockHolder_dgProductos tr.FilaTablaDetalle"
            )

            for irow in irows:
                columns = irow.find_elements(By.XPATH, "./td")
                _columns = [brow[0], brow[1], brow[2], brow[3], brow[4], brow[5], brow[7]]
                for i, column in enumerate(columns):
                    if i == 1:
                        a = column.find_element(By.TAG_NAME, "a")
                        _columns.append(a.text.strip())
                    if i < 3:
                        _columns.append(column.text.strip())
                crows.append(_columns)

            db_cursor.executemany(
                "INSERT INTO `open_contract_products` (nog, category, products, suppliers, product_types, product_types_products, product_types_suppliers, current_price, brand, supplier, stock) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", crows)
            db_connection.commit()



driver.quit()
