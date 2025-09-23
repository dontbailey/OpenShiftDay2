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