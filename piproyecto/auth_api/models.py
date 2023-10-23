from django.db import models
from django.contrib.auth.base_user import BaseUserManager
from django.contrib.auth.models import AbstractBaseUser, PermissionsMixin

# Create your models here.  
class SuperUsuarioApp(BaseUserManager):
    #Crear los modelos en los cuales el super usuario tiene el poder
    def create_user(self, email, password=None):
        if not email:
            raise ValueError('An email is required.')
        if not password:
            raise ValueError('A password is required.')
        email = self.normalize_email(email)
        user = self.model(email=email)
        user.set_password(password)
        user.is_staff = True
        user.is_active = True
        user.save()
        return user
    def create_superuser(self, email, password=None,**extra_kwargs):
        if not email:
            raise ValueError('An email is required.')
        if not password:
            raise ValueError('A password is required.')
        user = self.create_user(email, password)
        user.is_superuser = True
        user.is_staff = True
        user.is_active = True
        user.save()
        return user

#En este apartado crea el modelo del usuario, agregndo AbstractBaseUser para la validacion de sesiones 
#el modelo de usuarios personalizados cumpla con las expectativas del backend de Django
class UsuarioApp(AbstractBaseUser, PermissionsMixin):
	user_id = models.AutoField(primary_key=True)
	email = models.EmailField(max_length=50, unique=True)
	username = models.CharField(max_length=50)
	is_staff = models.BooleanField(default=False)
	is_active = models.BooleanField(default=False)
	USERNAME_FIELD = 'email'    
	REQUIRED_FIELDS = ['username']
	objects = SuperUsuarioApp()
	def __str__(self):
		return self.username