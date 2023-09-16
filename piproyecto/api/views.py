from django.shortcuts import render
from django.views import View
from .models import Computer

# Create your views here.

class ComputerView(View):
    def get(self, request):
        computers = Computer.objects.all()
        if len(computers)>0:
            data =
    
    def post(self, request):
        pass
    
    def put(self, request):
        pass
    
    def delete(self, request):
        pass