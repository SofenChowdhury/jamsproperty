# Generated by Django 3.0.3 on 2020-03-07 05:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('property', '0005_property_property_code'),
    ]

    operations = [
        migrations.AlterField(
            model_name='property',
            name='Property_code',
            field=models.CharField(blank=True, default='Null', max_length=20, unique=True),
        ),
    ]
