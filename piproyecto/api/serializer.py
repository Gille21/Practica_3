from rest_framework import serializers
from .models import Computer


class ComputerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Computer
        # fields = ('fullname', 'nickname')
        fields = '__all__'