FROM python:3.11-slim

# Set working directory
WORKDIR /docs

# Install dependencies
RUN pip install --no-cache-dir mkdocs mkdocs-material pymdown-extensions

# Copy project files
COPY . /docs/

# Expose port for MkDocs server
EXPOSE 8000

# Command to run MkDocs server
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
```

This Dockerfile:
1. Uses Python 3.11 slim image as the base
2. Sets the working directory to `/docs`
3. Installs MkDocs, the Material theme (which is popular), and extensions
4. Copies your project files into the container
5. Exposes port 8000 (default MkDocs port)
6. Sets the command to run the MkDocs server, binding to all interfaces

To build and run this container:

```bash
# Build the image
docker build -t openshift-day2-docs .

# Run the container
docker run -p 8000:8000 openshift-day2-docs
```

Then you can access your documentation at http://localhost:8000# filepath: /Users/bkribbs/Documents/GitHub/Client-Repos/OpenShiftDay2/Dockerfile
FROM python:3.11-slim

# Set working directory
WORKDIR /docs

# Install dependencies
RUN pip install --no-cache-dir mkdocs mkdocs-material pymdown-extensions

# Copy project files
COPY . /docs/

# Expose port for MkDocs server
EXPOSE 8000

# Command to run MkDocs server
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
```

This Dockerfile:
1. Uses Python 3.11 slim image as the base
2. Sets the working directory to `/docs`
3. Installs MkDocs, the Material theme (which is popular), and extensions
4. Copies your project files into the container
5. Exposes port 8000 (default MkDocs port)
6. Sets the command to run the MkDocs server, binding to all interfaces

To build and run this container:

```bash
# Build the image
docker build -t openshift-day2-docs .

# Run the container
docker run -p 8000:8000 openshift-day2-docs
```

Then you can access your documentation at http://localhost:8000