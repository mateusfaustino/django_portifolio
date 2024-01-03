# Use a versão do Python do seu projeto
FROM python:3.12

#Configurar o PYTHONUNBUFFERED com um valor diferente de zero garante a saída imediata para o terminal (como os logs do container) sem buffering.
ENV PYTHONUNBUFFERED=1

#Configura a pasta de trabalho
WORKDIR /code

#Copia o arquivo de dependências para a raiz do container
COPY requirements.txt .

#Com o arquivo requirements.txt copiado, é possível instalar as dependências
RUN pip install -r requirements.txt

# Com as dependências instaladas copie o resto da aplicação para o container
COPY . .

#exponha a porta 8000
EXPOSE 8000

#rode a aplicação na porta 8000'
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
