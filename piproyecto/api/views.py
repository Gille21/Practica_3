from typing import Any
from django import http
from django.http.response import JsonResponse
from django.shortcuts import render
from django.views import View
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
from .models import Computer

import json

# Create your views here.

class ComputerView(View):
    
    @method_decorator(csrf_exempt)
    def dispatch(self, request, *args, **kwargs):
        return super().dispatch(request, *args, **kwargs)
    
    def get(self, request):
        computers = list(Computer.objects.values())
        
        if len(computers)>0:
            datos  = {'message': 'Success', 'computers': computers}
        else:
            datos = {'message': 'Nothing in the list ...' }
        return JsonResponse(datos)
    
    def post(self, request):
        jd = json.loads(request.body)
        Computer.objects.create(tip_computador=jd['tip_computador'],modelo=jd['modelo'],marca=jd['marca'],tip_memoria=jd['tip_memoria'],
                                cap_memoria=jd['cap_memoria'],put_memoria=jd['put_memoria'],tip_disco=jd['tip_disco'],cap_disco=jd['cap_disco'], put_disco=jd['put_disco'],
                                grafica=jd['grafica'],tip_grafica=jd['tip_grafica'],cap_grafica=jd['cap_grafica'],put_grafica=jd['put_grafica'],procesador=jd['procesador'],
                                vel_procesador=jd['vel_procesador'],put_procesador=jd['put_procesador'],sistema_operativo=jd['sistema_operativo'],
                                costo=jd['costo'],proposito=jd['proposito'],tienda=jd['tienda'])
        datos = {'message': 'Success'}
        return JsonResponse(datos)
    
    def put(self, request):
        pass
    
    def delete(self, request):
        pass