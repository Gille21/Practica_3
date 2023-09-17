from django.urls import path
from .views import ComputerView

urlpatterns = [
    path('computers/',ComputerView.as_view(), name='computer_list')
]
