# Use a base Python image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy all the contents of your service directory into the container
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Set Flask environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000

# Expose port 5000 for the Flask app
EXPOSE 5000

# Run the Flask app
CMD ["flask", "run"]
