from django.shortcuts import render
from django.contrib.auth.models import User
from rest_framework import viewsets
from .serializer import (UsuarioSerializer)
from rest_framework.permissions import (IsAuthenticated,IsAuthenticatedOrReadOnly,IsAdminUser,DjangoModelPermissions)

# Create your views here.
class UsuarioVista(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UsuarioSerializer

    #En este apartado me apoye de la documentación de rest framework - se puede establecer nuestros propios permisos por grupos https://www.django-rest-framework.org/api-guide/permissions/
    #Revisar django-guardian para establecer a ciertos computadores sus unicos proveedores
    # permission_classes = [IsAuthenticated]
    # permission_classes = [IsAuthenticatedOrReadOnly]
    # permission_classes = [IsAdminUser]
    permission_classes = [DjangoModelPermissions]

    #Se definen los permisos del usuario admin por api
    # def get_permissions(self):
    #     if self.request.method in ['POST','PUT','DELETE','PATCH']:
    #         return [IsAdminUser()]
    #     return[IsAuthenticated()]

    def perform_create(self, serializer):
        usuario = serializer.save()
        usuario.set_password(usuario.password)
        usuario.save()

    def perform_update(self, serializer):
        usuario = serializer.save()
        usuario.set_password(usuario.password)
        usuario.save()