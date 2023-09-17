from rest_framework import viewsets
from .models import Computer
from .serializer import ComputerSerializer

# Create your views here.

class ComputerViews(viewsets.ModelViewSet):
    queryset = Computer.objects.all()
    serializer_class = ComputerSerializer