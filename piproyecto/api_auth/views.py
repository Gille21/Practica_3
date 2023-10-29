from django.shortcuts import render
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from django.http import JsonResponse
from api_auth.serializer import MyTokenObtainPairSerializer, RegisterSerializer
from rest_framework_simplejwt.views import TokenObtainPairView
from rest_framework import generics
from django.contrib.auth.models import User
from rest_framework.permissions import AllowAny, IsAuthenticated
from rest_framework.decorators import api_view, permission_classes
import json

# Create your views here.

# Crea la obtencion del token desde la vista JWT decodificado
class MyTokenObtainPairView(TokenObtainPairView):
    serializer_class = MyTokenObtainPairSerializer


#Crea la vista de registro de usuario
class RegisterView(generics.CreateAPIView):
    queryset = User.objects.all()
    permission_classes = (AllowAny,)
    serializer_class = RegisterSerializer


#Hace que en este apartado de las rutas solo se obtengan los gets necesarios para el inicio de sesión y/o registro
@api_view(['GET'])
def getRoutes(request):
    routes = [
        '/token/',
        '/register/',
        '/token/refresh/',
        '/test/'
    ]
    return Response(routes)


#Define el testeo de la vista en la cual va requerir de los tokens, el cual cuando obtenga el token le permita permanecer en la pagina.
@api_view(['GET', 'POST'])
@permission_classes([IsAuthenticated])
def testEndPoint(request):
    #Cuando inicia en la ruta que siempre se ejecute el get, toma el token y lo valida, ya validado el token guarda en data el mensaje que desea enviarle.
    if request.method == 'GET':
        data = f"Congratulation {request.user}, your API just responded to GET request"
        print(request, type(data), type(request))
        return Response({'response': data}, status=status.HTTP_200_OK)
    #En el metodo post, es que ya autenticado si se desea enviar algo desde la vista, este valida que el token este activo y alli permite el response del api
    elif request.method == 'POST':
        try:
            body = request.body.decode('utf-8')
            data = json.loads(body)
            print(data,body)
            if 'text' not in data:
                return Response("Invalid JSON data", status.HTTP_400_BAD_REQUEST)
            text = data.get('text')
            data = f'Congratulation your API just responded to POST request with text: {text}'
            return Response({'response': data}, status=status.HTTP_200_OK)
        except json.JSONDecodeError:
            return Response("Invalid JSON data", status.HTTP_400_BAD_REQUEST)
    return Response("Invalid JSON data", status.HTTP_400_BAD_REQUEST)
