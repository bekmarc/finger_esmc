FROM continuum/anaconda:4.4.0
MAINTAINER UNP, https://unp.education

RUN apt-get -y update
RUN apt-get -y install git

COPY ./finger_print_esmc /usr/local/python/
EXPOSE 5000
WORKDIR /usr/local/python/
RUN pip install -r requirements.txt  
CMD python best-finger-api.py
