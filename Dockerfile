# Use an official Python runtime as a parent image
FROM python:3.11.3

# Set the working directory to /app
WORKDIR /yashodha


# Clone the source code from Git
RUN git clone https://github.com/yasodhareddyy/Git_hub_operations.git

# Set the working directory to /app
WORKDIR /yashodha/Git_hub_operations/project_docker


# Define the command to run your script
CMD [ "python", "app.py" ]
