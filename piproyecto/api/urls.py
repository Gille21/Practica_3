from django.urls import path, include
from rest_framework import routers
from api.views import ComputerViews, consulta

router = routers.DefaultRouter()
router.register(r'computers', ComputerViews)

urlpatterns = [
    path('', include(router.urls)),
    path('consulta/', consulta, name='consulta'),
]
