# 1. Use an appropriate Python base image
FROM python:3.11-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy dependency list and install requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy all application files into the container
COPY . .

# 5. Expose the Flask app port
EXPOSE 5000

# 6. Run the Flask application
CMD ["python", "app.py"]

