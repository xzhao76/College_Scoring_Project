# Select the base image
FROM python:3.11
# Set up working directory
WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt
# Install java for running PySpark
RUN apt-get update && apt-get install -y openjdk-11-jdk
CMD ["bash"]