# Generated by Django 4.2.5 on 2023-09-16 22:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='computer',
            name='sistema_operativo',
            field=models.CharField(max_length=50, null=True),
        ),
    ]
