# Generated by Django 4.2.5 on 2023-10-17 16:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0008_alter_computer_img'),
    ]

    operations = [
        migrations.AlterField(
            model_name='computer',
            name='img',
            field=models.ImageField(null=True, upload_to='files/covers'),
        ),
    ]
