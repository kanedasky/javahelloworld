FROM java:7
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN mkdir /data/myvol -p
RUN echo "put some text here" > /data/myvol/test
VOLUME /data/myvol
RUN echo "another line" > /data/myvol/test
EXPOSE 80 8080
#ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
