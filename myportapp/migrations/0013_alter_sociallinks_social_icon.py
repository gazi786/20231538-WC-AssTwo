# Generated by Django 4.2.7 on 2023-11-22 14:05

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("myportapp", "0012_alter_sociallinks_social_icon"),
    ]

    operations = [
        migrations.AlterField(
            model_name="sociallinks",
            name="social_icon",
            field=models.CharField(default=" ", max_length=99),
        ),
    ]
