# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file (if you have one)
# COPY requirements.txt ./

# Install any necessary packages (uncomment if you have a requirements file)
# RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container
COPY . .

# Specify the command to run your app (modify if needed)
CMD ["python", "app.py"]

