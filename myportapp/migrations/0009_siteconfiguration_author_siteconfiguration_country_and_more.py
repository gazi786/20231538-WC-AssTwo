# Generated by Django 4.2.7 on 2023-11-22 13:13

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):
    dependencies = [
        ("myportapp", "0008_alter_home_description"),
    ]

    operations = [
        migrations.AddField(
            model_name="siteconfiguration",
            name="author",
            field=models.CharField(default=" ", max_length=50),
        ),
        migrations.AddField(
            model_name="siteconfiguration",
            name="country",
            field=models.CharField(default=" ", max_length=50),
        ),
        migrations.AddField(
            model_name="siteconfiguration",
            name="position",
            field=models.CharField(default=" ", max_length=50),
        ),
        migrations.AddField(
            model_name="siteconfiguration",
            name="updated",
            field=models.DateTimeField(auto_now=True),
        ),
        migrations.CreateModel(
            name="SocialLinks",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("social_name", models.CharField(default=" ", max_length=10)),
                ("social_icon", models.CharField(default=" ", max_length=10)),
                ("link", models.URLField()),
                (
                    "site_config",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to="myportapp.siteconfiguration",
                    ),
                ),
            ],
        ),
    ]
