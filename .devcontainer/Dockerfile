FROM mcr.microsoft.com/devcontainers/python:3.12

SHELL ["/bin/bash", "-c"]

# Install poetry
RUN python -m pip install --upgrade pip
# Install Jupyter Notebook
RUN pip install jupyter
RUN pip install ipykernel

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Install Poetry and add to PATH
RUN curl -sSL https://install.python-poetry.org | python3 - && \
    echo 'export PATH="/root/.local/bin:$PATH"' >> ~/.bashrc
ENV PATH="/root/.local/bin:$PATH"


# Install node and npm
RUN apt-get update && apt-get install -y ca-certificates gnupg
RUN mkdir -p /etc/apt/keyrings
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
RUN apt-get update
RUN apt-get install -y nodejs
RUN npm install -g npm@latest

# Install SFDX CLI
RUN npm install @salesforce/cli --global

# Run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
