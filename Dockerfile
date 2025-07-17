FROM jenkins/jenkins:lts

USER root

# Optional: install curl or other CLI tools
RUN apt-get update && apt-get install -y curl

# Switch back to the jenkins user
USER jenkins

# Install the unique-id plugin
RUN jenkins-plugin-cli --plugins unique-id
