# Generated by Django 3.0.3 on 2020-04-22 20:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('About', '0008_companyvideo_video_poster'),
    ]

    operations = [
        migrations.AddField(
            model_name='companyvideo',
            name='status',
            field=models.IntegerField(blank=True, choices=[(0, 'Pending'), (1, 'Active')], default=0, null=True),
        ),
    ]
