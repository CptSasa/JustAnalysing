# Use the official MongoDB image from the Docker Hub
FROM mongo:latest

# Set environment variables (optional, but useful for configuration)
ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=adminpassword
ENV MONGO_INITDB_DATABASE=mydatabase

# Expose the default MongoDB port
EXPOSE 27017

# Copy any necessary initialization scripts into the container
# These can be used to initialize the database with collections and data
COPY ./initdb.d /docker-entrypoint-initdb.d

# The official MongoDB image already contains the necessary entrypoint,
# so there's no need to specify CMD or ENTRYPOINT unless you have custom needs