# Generated by Django 4.2.5 on 2023-10-17 16:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0006_computer_img'),
    ]

    operations = [
        migrations.AlterField(
            model_name='computer',
            name='tienda',
            field=models.CharField(max_length=500, null=True),
        ),
    ]
