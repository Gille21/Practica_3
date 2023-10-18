from django.db import connection

def my_custom_sql(proposito, marca, sis_operativo, cap_disco,tip_com):
    with connection.cursor() as cursor:
        cursor.callproc('obtenerEquipos', [proposito, marca, sis_operativo, cap_disco,tip_com])
        result = cursor.fetchall()
    return result