# Use Maven image with OpenJDK 17
FROM maven:3.9.9-eclipse-temurin-17 AS builder

# Set working directory
WORKDIR /app

# Copy source code into container
COPY . .

# Run Maven validate or install
RUN mvn clean install -DskipTests

# Final image (optional if you want to just build)
# You can copy the .hpi file out of the container in a multi-stage setup
