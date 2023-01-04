FROM python:3.8-slim-buster

ARG ENV

WORKDIR /app

RUN echo "ENV::: $ENV"

RUN if [ "$ENV" != "dev" ] ; then echo "Building to stage or prod..." ; else echo "Building to dev..." ; fi

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]