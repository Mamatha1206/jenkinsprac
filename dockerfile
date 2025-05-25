# Use official Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy app code
COPY app.py /app

# Install dependencies
RUN pip install flask

# Expose the Flask port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
