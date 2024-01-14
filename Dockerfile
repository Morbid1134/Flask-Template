FROM ubuntu

RUN apt update
# Install Python3 and Pip
RUN apt install python3-pip -y
# Install Git
RUN apt-get update \
    && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

RUN pip3 install -r requirements.txt

CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0" ]