# Use an official Python runtime as a parent image
FROM python:3.11.3

# Set the working directory to /app
WORKDIR /yashodha


# Copy the current directory contents into the container at /app
COPY . /yashodha

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Clone your source code from a Git repository
RUN git clone git@github.com:yasodhareddyy/docker_sample.git

# Define the command to run your script
CMD [ "python", "your_script.py" ]
