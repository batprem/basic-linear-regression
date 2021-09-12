# Import python version
FROM python:3.8-slim-buster

# Set up working directory
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "jupyter", "notebook" , "--ip=0.0.0.0", "--NotebookApp.token=''", "--NotebookApp.password=''"]
