from fastapi import FastAPI
import asyncpg
from pydantic import BaseModel

app = FastAPI()

# Определяем модель для примера
class Item(BaseModel):
    name: str
    description: str = None

@app.get("/")
async def read_root():
    return {"message": "Hello, FastAPI with Docker!"}

@app.post("/items/")
async def create_item(item: Item):
    return {"item": item}
