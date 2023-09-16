from django.urls import path
from .views import ComputerView

urlpatterns = [
    path('computers/',ComputerView, name='computer_list')
]
