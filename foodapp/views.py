from urllib.request import Request, urlretrieve
import django
from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse
from foodapp.models import food
import pyqrcode
import png
from pyqrcode import QRCode


# Create your views here.
def say_hello(request):
    return render(request, 'hello.html', {'name' : 'alisha'})

def ownerpage(request):
    mov=food.objects.all()
    return render(request, 'ownerpage.html',{'mov':mov})

def addfoodpg(request):
    return render(request,'addfoodpage.html')

def updatefoodpg(request):
    return render(request,'updatefd.html')

def deletefoodpg(request):
    return render(request,'deletefd.html')

def list_items(request):
    mov=food.objects.all()
    return render(request,'listitems.html',{'mov':mov})

def addfood(request):
    typ=request.GET['fdtyp']
    name=request.GET['fdn']
    price=request.GET['pr']
    ingred=request.GET['ing']
    p1=food(foodname=name,price=price,foodtype=typ,ingredients=ingred)
    p1.save()
    mov=food.objects.all()
    return render(request, 'ownerpage.html',{'mov':mov})

def deletefood(request):
    r1=request.GET['id']
    fd=food.objects.get(id=r1)
    fd.delete()
    mov=food.objects.all()
    return render(request, 'ownerpage.html',{'mov':mov})

def updatefood(request):
    global typ
    typ=request.GET['fdtyp']
    name=request.GET['fdn']
    price=request.GET['pr']
    ingred=request.GET['ing']
    food.objects.filter(foodname=name).update(price=price,foodtype=typ,ingredients=ingred)
    mov=food.objects.all()
    return render(request, 'ownerpage.html',{'mov':mov})


def qr_code(request):
    #here the user can replace the link for which qr code needs to be generated
    s = "http://127.0.0.1:8000/foodapp/list_items"
    # Generate QR code
    url = pyqrcode.create(s)
    url.png('FoodAppQRCode.png', scale = 10)
    url.svg("FoodAppQRCode.svg", scale=10)
    return render(request, 'qr_code.html', { 'qr': "Successfully generated in the folder. \nScan this qr code for menu"})



