# Generated by Django 4.2.5 on 2023-10-11 02:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0005_computer_tienda'),
    ]

    operations = [
        migrations.AddField(
            model_name='computer',
            name='img',
            field=models.ImageField(null=True, upload_to='files/covers'),
        ),
    ]
