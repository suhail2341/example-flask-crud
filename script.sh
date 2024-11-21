#!/bin/bash

export FLASK_APP=crudapp.py
flask db init
flask db migrate -m "entries table"
flask db upgrade
flask run