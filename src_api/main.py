import docker
from fastapi import FastAPI

app = FastAPI(title="Simple Report Create", version='1.0')


@app.post('/convert')
async def convert():
    client = docker.from_env()
    # client.containers.run('pandoc/core', '')


@app.post('/build')
async def build():
    pass
