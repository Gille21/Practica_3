from rest_framework import viewsets
from .models import Computer
from .serializer import ComputerSerializer
from rest_framework.permissions import (IsAuthenticated,IsAuthenticatedOrReadOnly,IsAdminUser,DjangoModelPermissions)

from rest_framework.permissions import AllowAny,IsAuthenticated,IsAuthenticatedOrReadOnly
from django.db import connection
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
from rest_framework.decorators import api_view, permission_classes
from rest_framework.parsers import JSONParser
from .procedures import my_custom_sql
from django.http.response import JsonResponse
import json

from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .procedures import my_custom_sql


class ComputerViews(viewsets.ModelViewSet):
    queryset = Computer.objects.all()
    serializer_class = ComputerSerializer
    

    #Agregue los permisos desde el viewModel ofrecido por django Rest Framework donde solo usuarios autenticados puedan realizar los registros de las computadoras
    # permission_classes = [DjangoModelPermissions]

@api_view(['POST'])
def consulta(request):
    if request.method == 'POST':
        data = request.data
        result = my_custom_sql(
            data.get('proposito', ''),
            data.get('marca', ''),
            data.get('sistema_operativo', ''),
            data.get('cap_disco', ''),
            data.get('tip_computador', '')
        )
        json_list = [json.loads(element[0]) for element in result]
        return Response(json_list)

    # def get_permissions(self):
    #     if self.request.method in ['POST','PUT','DELETE','PATCH']:
    #         return [IsAuthenticated()]
    #     return[IsAuthenticatedOrReadOnly()]
    
    


