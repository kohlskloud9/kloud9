FROM centos
RUN yum install -y centos-release-scl 
RUN yum install -y rh-python36
RUN scl enable rh-python36 bash
RUN rm -f /usr/bin/python
RUN ln -s /opt/rh/rh-python36/root/bin/python3.6 /usr/bin/python
RUN ln -s /opt/rh/rh-python36/root/bin/pip3.6 /usr/bin/pip3.6
RUN pip3.6 install Flask
RUN pip3.6 install Flask-RESTful
#COPY pythonapp.py /
RUN mkdir /myapp
#CMD python pythonapp.py
#EXPOSE 80
CMD ping 127.0.0.1
RUN ping 127.0.0.1
