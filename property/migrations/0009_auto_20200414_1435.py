# Generated by Django 3.0.3 on 2020-04-14 14:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('property', '0008_property_totalfloor'),
    ]

    operations = [
        migrations.AddField(
            model_name='property',
            name='Holding_no',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='property',
            name='Road_no',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
    ]
