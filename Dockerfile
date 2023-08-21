# Use the official python image as the base image
FROM python:3.9-slim-buster

# Set the woking directory in the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the required python packages
RUN pip3 install --no-cache-dir -r requirements.txt 

# Copy the application code to the working directory
COPY . .

# Set the environment variables for the Flask app
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port on which the Flask app will run
EXPOSE 5000

# Start the flask app when the container is run
CMD ["flask", "run"]