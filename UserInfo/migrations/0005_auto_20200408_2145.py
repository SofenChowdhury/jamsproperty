# Generated by Django 3.0.3 on 2020-04-08 21:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('UserInfo', '0004_auto_20200406_0316'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userinfo',
            name='post_code',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
    ]
