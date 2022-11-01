from enum import unique
from django.db import models

# Create your models here
class food(models.Model):
    foodname = models.CharField(max_length=15)
    price = models.IntegerField()
    foodtype = models.CharField(max_length = 15, null = True)
    ingredients = models.CharField(max_length = 15, null = True)

    