# Generated by Django 3.0.3 on 2020-04-21 17:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('About', '0007_auto_20200421_1545'),
    ]

    operations = [
        migrations.AddField(
            model_name='companyvideo',
            name='video_poster',
            field=models.ImageField(blank=True, null=True, upload_to='assets/uploads/video/company', verbose_name='Video Poster'),
        ),
    ]
