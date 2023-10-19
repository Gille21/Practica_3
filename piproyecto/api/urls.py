from django.urls import path,include
from rest_framework import routers
from api import views

router = routers.DefaultRouter()
router.register(r'computers', views.ComputerViews)

urlpatterns = [
    path('', include(router.urls)),
    path('consulta/', views.consulta)
]