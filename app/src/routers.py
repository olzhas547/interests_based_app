from fastapi import (
    APIRouter, HTTPException, Depends, Request, Response, status
)
from fastapi.responses import RedirectResponse
from fastapi.security import OAuth2PasswordRequestForm
from src import users
import math
import models
import datetime
from fastapi.templating import Jinja2Templates
from fastapi.responses import HTMLResponse
from src import view

router = APIRouter()
templates = Jinja2Templates(directory="templates/")
url = "localhost:8000"

@router.get('/')
async def test(request: Request):
    return {'Hello': 'World'}
