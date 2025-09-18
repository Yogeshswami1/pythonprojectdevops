# Base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy dependencies
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all files to /app
COPY . .

# Expose Flask default port
EXPOSE 5000

# Run Flask app
CMD ["python", "app.py"]
