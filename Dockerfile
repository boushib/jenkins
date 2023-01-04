FROM python:3.8-slim-buster

ARG ENV

WORKDIR /app

RUN ech "ENV::: $ENV"

RUN if [ "$ENV" = "prod" ] ; then echo "Building prod..." ; else echo "Building dev..." ; fi

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]