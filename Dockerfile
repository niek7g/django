FROM python:3
WORKDIR /home/django_project

COPY main.py .

RUN apt update && apt install pip3 && pip3 install django

RUN chmod +x manage.py && python3 manage.py server && chmod 777 *.py

EXPOSE 8080

CMD ["python3", "manage.py", "runserver", "8080"]

USER 10001
