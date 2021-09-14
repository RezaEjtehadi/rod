FROM python:3.9

WORKDIR /home/code

COPY . .

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt
RUN python -m pip install daphne

#RUN bash -c "daphne jo.asgi:application -b 0.0.0.0 -p 8000"


CMD [ "daphne","jo.asgi:application" ]