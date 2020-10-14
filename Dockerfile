FROM alpine:3.12

RUN apk add --update --no-cache python3-dev && ln -sf python3 /usr/bin/python\
    && python3 -m ensurepip\
    && pip3 install --no-cache --upgrade pip setuptools

# Folder
WORKDIR /app

# Copy
COPY . /app

RUN pip3 --no-cache-dir install -r requirements/requirements.txt

CMD ["python3", "app/src/app.py"]
