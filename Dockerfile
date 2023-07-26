# Use the official openpolicyagent/conftest image as the base image
FROM openpolicyagent/conftest:latest

ENV DIR=GITHUB_WORKSPACE

WORKDIR ${DIR}

ENTRYPOINT ["sh", "-c"]