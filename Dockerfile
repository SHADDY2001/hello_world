# Use official Python image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy app.py into container
COPY app.py .

# Set default command to run your script
CMD ["python", "app.py"]
