# Generated by Django 4.2.7 on 2023-11-22 10:38

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("myportapp", "0005_home_description"),
    ]

    operations = [
        migrations.AddField(
            model_name="home",
            name="button_icon",
            field=models.CharField(default=" ", max_length=50),
        ),
        migrations.AddField(
            model_name="home",
            name="button_name",
            field=models.CharField(default=" ", max_length=50),
        ),
        migrations.AlterField(
            model_name="home",
            name="description",
            field=models.TextField(default=" ", max_length=400),
        ),
    ]