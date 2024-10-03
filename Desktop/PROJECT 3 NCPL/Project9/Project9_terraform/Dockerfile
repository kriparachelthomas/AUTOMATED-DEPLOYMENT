# Use the official Python base image from Docker Hub
FROM python:3.9-slim

# Set a working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the necessary dependencies (assuming requirements.txt exists)
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 80 to allow traffic
EXPOSE 80

# Define the command to run the Flask app
CMD ["python", "app.py"]
