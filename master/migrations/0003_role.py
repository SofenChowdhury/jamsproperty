# Generated by Django 2.2.7 on 2020-01-16 07:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('master', '0002_master_title'),
    ]

    operations = [
        migrations.CreateModel(
            name='Role',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
            ],
        ),
    ]