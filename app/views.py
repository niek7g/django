import django.shortcuts
from django.shortcuts import render, HttpResponse, redirect
from django.core.handlers.wsgi import WSGIRequest


# Create your views here.
def login(request: WSGIRequest):
    pass


def index(request: WSGIRequest):
    r = render(request, "index.html")
    print(r.headers)
    return r
