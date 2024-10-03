FROM python:3.10-slim

EXPOSE 3456

# Install pip requirements
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

WORKDIR /app
COPY . /app

#ENTRYPOINT ["python"]
CMD ["python", "app.py"]


##hehehehe