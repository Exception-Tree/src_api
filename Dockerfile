FROM python:3.11-slim

RUN apt-get -y update && apt-get install -y texlive

WORKDIR /code/
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
VOLUME /code
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--log-level", "warning"]