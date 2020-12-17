# Generated by Django 3.0.2 on 2020-02-15 05:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('UserInfo', '0002_auto_20200203_1638'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userinfo',
            name='address',
            field=models.TextField(blank=True, default=None, null=True),
        ),
        migrations.AlterField(
            model_name='userinfo',
            name='city',
            field=models.CharField(blank=True, max_length=200),
        ),
        migrations.AlterField(
            model_name='userinfo',
            name='country',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='userinfo',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='assets/uploads/user'),
        ),
        migrations.AlterField(
            model_name='userinfo',
            name='post_code',
            field=models.IntegerField(blank=True, default=None, null=True),
        ),
        migrations.AlterField(
            model_name='userinfo',
            name='refference_by',
            field=models.IntegerField(blank=True, default=None, null=True),
        ),
    ]