# Generated by Django 3.0.3 on 2020-03-07 05:28

from django.db import migrations, models
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('property', '0006_auto_20200307_0525'),
    ]

    operations = [
        migrations.AlterField(
            model_name='property',
            name='Property_code',
            field=models.CharField(blank=True, default=uuid.uuid4, max_length=20, unique=True),
        ),
    ]