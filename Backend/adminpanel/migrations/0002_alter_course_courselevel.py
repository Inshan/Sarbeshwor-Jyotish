# Generated by Django 4.2.2 on 2023-10-05 11:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('adminpanel', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='course',
            name='courselevel',
            field=models.CharField(blank=True, choices=[('Course1', 'Course1'), ('Course2', 'Course2'), ('Course3', 'Course3'), ('Course4', 'Course4'), ('Course5', 'Course5'), ('Course6', 'Course6'), ('Course7', 'Course7')], max_length=150, null=True),
        ),
    ]