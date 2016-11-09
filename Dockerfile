FROM alpine:3.4
RUN apk add --update openjdk7 && \
	cd /tmp && \
	wget http://apache.mindstudios.com/tomcat/tomcat-8/v8.5.6/bin/apache-tomcat-8.5.6.tar.gz && \
	mkdir -p /logiciels/tomcat && \
	cd /logiciels/tomcat && \
	tar -xvzf /tmp/apache-tomcat-8.5.6.tar.gz &&\
	rm /tmp/apache-tomcat-8.5.6.tar.gz  
CMD ["/logiciels/tomcat/apache-tomcat-8.5.6/bin/catalina.sh", "run"]

