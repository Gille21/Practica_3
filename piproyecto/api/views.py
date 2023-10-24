from rest_framework import viewsets
from .models import Computer
from .serializer import ComputerSerializer
from rest_framework.permissions import (IsAuthenticated,IsAuthenticatedOrReadOnly,IsAdminUser,DjangoModelPermissions)

from django.shortcuts import render
import json

from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .procedures import my_custom_sql


class ComputerViews(viewsets.ModelViewSet):
    queryset = Computer.objects.all()
    serializer_class = ComputerSerializer
    permission_classes = [DjangoModelPermissions]

@api_view(['POST'])
def consulta(request):
    if request.method == 'POST':
        data = request.data
        result = my_custom_sql(
            data.get('proposito', ''),
            data.get('marca', ''),
            data.get('sistemaOperativo', ''),
            data.get('capDisco', ''),
            data.get('tipComputador', '')
        )
        json_list = [json.loads(element[0]) for element in result]
        return Response(json_list)

