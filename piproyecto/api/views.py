from rest_framework import viewsets
from .models import Computer
from .serializer import ComputerSerializer
from rest_framework.permissions import AllowAny,IsAuthenticated,IsAuthenticatedOrReadOnly
from django.db import connection
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
from rest_framework.decorators import api_view, permission_classes
from rest_framework.parsers import JSONParser
from .procedures import my_custom_sql
from django.http.response import JsonResponse
import json

# Create your views here.

class ComputerViews(viewsets.ModelViewSet):
    queryset = Computer.objects.all()
    serializer_class = ComputerSerializer

    #Agregue los permisos desde el viewModel ofrecido por django Rest Framework donde solo usuarios autenticados puedan realizar los registros de las computadoras
    # permission_classes = [DjangoModelPermissions]

    # def get_permissions(self):
    #     if self.request.method in ['POST','PUT','DELETE','PATCH']:
    #         return [IsAuthenticated()]
    #     return[IsAuthenticatedOrReadOnly()]
    
    

@csrf_exempt
def consulta(request, id=0):
    json_list = []
    data = JSONParser().parse(request)
    print(data)
    if request.method == 'POST':
        result = my_custom_sql(data['proposito'],data['marca'],data['sistema_operativo'], data['cap_disco'], data['tip_computador'])
        for element in result:
            element_json = json.loads(element[0])
            json_list.append(element_json)
        return JsonResponse(json_list, safe=False)
    return JsonResponse("Error al consultar Computador")
