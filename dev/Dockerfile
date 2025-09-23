FROM squidfunk/mkdocs-material

# Install system dependencies
RUN apk add --no-cache --update nodejs npm bash hugo curl

WORKDIR /site

# Copy dependency files first for better caching
COPY ./requirements.txt /site/
COPY ./package*.json /site/

# Install Python dependencies from requirements.txt
RUN pip --no-cache-dir install -r requirements.txt

# Install NodeJS dependencies
RUN npm install

# Copy the rest of the project files
COPY . /site/

# Expose port for MkDocs server
EXPOSE 8000

# Command to run MkDocs server
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
