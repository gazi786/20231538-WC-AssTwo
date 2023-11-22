from django.db import models
#from tinymce import models as tinymce_models


class Home(models.Model):
    name = models.CharField(max_length=20)
    greetings_1 = models.CharField(max_length=5)
    greetings_2 = models.CharField(max_length=50)
    #description = tinymce_models.HTMLField()
    description = models.TextField(max_length=300, default=" ")
    button_name = models.CharField(max_length=50, default=" ")
    button_icon = models.CharField(max_length=50, default=" ")
    picture = models.ImageField(upload_to="home/")
    # save time when modified
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name
