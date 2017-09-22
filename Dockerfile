# Dockerfile for Socialpy (an example of Django app)
#
# Use Python 2.7 image from Docker
FROM python:2.7
#
MAINTAINER Kevin Chen "kevin.chen15@alumni.colostate.edu"
#
# Copy socialpy directory to /code/ within the container
COPY socialpy /code/
#
WORKDIR /code/socialpy
#
# Install Django and all the requirements
RUN pip install -r requirements.txt
#
RUN python manage.py thumbnail cleanup
#
# Use port 8000
EXPOSE 8000
#
# Run this Django app - allowing access from other hosts
#
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

