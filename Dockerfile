FROM python:3.8.12-buster

COPY api /api
COPY requirements.txt /requirements.txt
COPY final.pkl /final.pkl

RUN pip install --upgrade pip


RUN pip install -r requirements.txt

CMD uvicorn api.fast:app --host 0.0.0.0 --port $PORT
