## 00 - Instale o Python

## 01 - Crie o ambiente virtual

```
    python -m venv venv
```

## 02 - Configure o Powershell
```
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
```

## 03 - Ative o virtual env

```
    venv/Scripts/activate.ps1
``` 

## 04 - Instale o Django

```
    pip install django
```

## 05 - Comece um novo projeto

```
    django-admin startproject setup .
```

## 06 - Rode o Django

```
    python manage.py runserver 
```

## 07 - Use o pip freeze para criar o arquivo de requirements

```
    pip freeze -l > requirements.txt
```