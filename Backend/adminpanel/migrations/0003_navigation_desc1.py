# Generated by Django 4.2.2 on 2023-10-07 05:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('adminpanel', '0002_alter_course_courselevel'),
    ]

    operations = [
        migrations.AddField(
            model_name='navigation',
            name='desc1',
            field=models.TextField(null=True),
        ),
    ]
