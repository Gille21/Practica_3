from rest_framework import viewsets
from .models import Computer
from .serializer import ComputerSerializer
from rest_framework.permissions import (IsAuthenticated,IsAuthenticatedOrReadOnly,IsAdminUser,DjangoModelPermissions)
from django.db import connection
from django.shortcuts import render
from .procedures import my_custom_sql

# Create your views here.

class ComputerViews(viewsets.ModelViewSet):
    queryset = Computer.objects.all()
    serializer_class = ComputerSerializer

    #Agregue los permisos desde el viewModel ofrecido por django Rest Framework donde solo usuarios autenticados puedan realizar los registros de las computadoras
    permission_classes = [DjangoModelPermissions]

    # def get_permissions(self):
    #     if self.request.method in ['POST','PUT','DELETE','PATCH']:
    #         return [IsAuthenticated()]
    #     return[IsAuthenticatedOrReadOnly()]
    

def consulta(request):
    print(my_custom_sql("Trabajo","Lenovo","Windows 11", "512 GB"))
    return render(request, "consulta.html")

