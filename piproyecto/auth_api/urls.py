from django.urls import path,include
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
	path('registro/', views.RegistroUsuario.as_view(), name='registro'),
	path('login/', views.IngresoUsuario.as_view(), name='login'),
	path('logout/', views.SalidaUsuario.as_view(), name='logout'),
	path('usuario/', views.VistaUsuario.as_view(), name='usuario'),
]