from django.db import models


class SiteConfiguration(models.Model):
    logo = models.ImageField(upload_to="logos/")
    # Other configuration fields

    def __str__(self):
        return "Site Configuration"
