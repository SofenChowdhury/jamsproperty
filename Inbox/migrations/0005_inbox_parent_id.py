# Generated by Django 3.0.3 on 2020-04-21 13:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Inbox', '0004_auto_20200318_0942'),
    ]

    operations = [
        migrations.AddField(
            model_name='inbox',
            name='parent_id',
            field=models.IntegerField(blank=True, null=True),
        ),
    ]
