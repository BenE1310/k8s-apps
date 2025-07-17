from motor.motor_asyncio import AsyncIOMotorClient

MONGO_URI = "mongodb://mongo-0.mongo,mongo-1.mongo,mongo-2.mongo:27017/?replicaSet=rs0"
client = AsyncIOMotorClient(MONGO_URI)
db = client["filtrafix"]  # Choose your DB name
