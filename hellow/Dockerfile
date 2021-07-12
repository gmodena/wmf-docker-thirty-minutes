# We tell docker to base our image on
# Debian GNU/Linux and a Python runtime:
# https://hub.docker.com/_/python/
FROM python:3.9-slim-buster

# When we build an image, we copy hello.py into its filesystem.
COPY hello.py .

# When we run the container, we execute the hello.py script.
CMD ["python", "hello.py"]
