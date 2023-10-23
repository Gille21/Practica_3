from django.core.exceptions import ValidationError
from django.contrib.auth import get_user_model
UserModel = get_user_model()

def custom_validation(data):
    email = data['email'].strip()
    username = data['username'].strip()
    password = data['password'].strip()
    ##
    if not email or UserModel.objects.filter(email=email).exists():
        raise ValidationError('Escoja otro email.')
    ##
    if not password or len(password) < 8:
        raise ValidationError('Escoja otra contraseña, min 8 caracteres')
    ##
    if not username:
        raise ValidationError('escoja otro usuario.')
    return data


def validate_email(data):
    email = data['email'].strip()
    if not email:
        raise ValidationError('El correo es un campo obligatorio')
    return True

def validate_username(data):
    username = data['username'].strip()
    if not username:
        raise ValidationError('Escoja otro usuario')
    return True

def validate_password(data):
    password = data['password'].strip()
    if not password:
        raise ValidationError('La contrseña es un campo obligatorio')
    return True