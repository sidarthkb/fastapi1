# Use a lightweight Python image as the base
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install FastAPI and Uvicorn to run the service
RUN pip install fastapi uvicorn

# Expose the port that FastAPI will use
EXPOSE 8000

# Command to run the FastAPI app with Uvicorn
CMD ["uvicorn", "fastapi1:app", "--host", "0.0.0.0", "--port", "8000"]
