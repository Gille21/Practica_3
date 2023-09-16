from django.db import models

# Create your models here.
class Computer(models.Model):
    id_computer = models.BigAutoField(auto_created=True,primary_key=True)
    tip_computador = models.CharField(max_length=50)
    modelo = models.CharField(max_length=50)
    marca = models.CharField(max_length=50)
    tip_memoria = models.CharField(max_length=50)
    cap_memoria = models.CharField(max_length=50)
    put_memoria = models.BigIntegerField(null=True)
    tip_disco = models.CharField(max_length=50)
    cap_disco = models.CharField(max_length=50)
    put_disco = models.BigIntegerField(null=True)
    grafica = models.BooleanField()
    tip_grafica = models.CharField(max_length=50)
    cap_grafica = models.CharField(max_length=50)
    put_grafica = models.BigIntegerField()
    procesador = models.CharField(max_length=50)
    vel_procesador = models.CharField(max_length=50)
    put_procesador = models.BigIntegerField()
    sistema_operativo = models.CharField(max_length=50, null=True)