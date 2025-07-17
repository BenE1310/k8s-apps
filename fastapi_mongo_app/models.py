from pydantic import BaseModel, Field
from typing import Optional

class Report(BaseModel):
    title: str
    description: Optional[str] = None
    reporter: Optional[str] = None
