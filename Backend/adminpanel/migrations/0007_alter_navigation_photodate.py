# Generated by Django 4.2.2 on 2023-10-07 14:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('adminpanel', '0006_alter_navigation_timestamp'),
    ]

    operations = [
        migrations.AlterField(
            model_name='navigation',
            name='photodate',
            field=models.DateField(auto_now_add=True, null=True),
        ),
    ]
