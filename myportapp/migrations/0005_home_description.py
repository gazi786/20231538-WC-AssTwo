# Generated by Django 4.2.7 on 2023-11-22 10:34

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("myportapp", "0004_alter_home_greetings_2"),
    ]

    operations = [
        migrations.AddField(
            model_name="home",
            name="description",
            field=models.TextField(default="Write a short description", max_length=400),
        ),
    ]