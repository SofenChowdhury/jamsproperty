# Generated by Django 3.0.3 on 2020-03-18 09:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Inbox', '0003_inbox_seentime'),
    ]

    operations = [
        migrations.AlterField(
            model_name='inbox',
            name='seenTime',
            field=models.DateTimeField(blank=True, null=True),
        ),
    ]
