# Base image
FROM python:3.10-slim

# Set work directory
WORKDIR /app

# Copy application code
COPY app.py /app/
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
