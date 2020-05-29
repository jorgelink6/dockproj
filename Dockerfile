FROM python:3.7.3-stretch

# working directory
WORKDIR /app

# Copy source code to woking directory
COPY . app.py /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt