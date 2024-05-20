# Use the official Python image from the Docker Hub
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file into the image
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the locustfile and any other necessary files into the image
COPY locustfile.py .

# Specify the command to run Locust
CMD ["locust", "-f", "locustfile.py"]

