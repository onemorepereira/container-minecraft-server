FROM registry.fedoraproject.org/fedora-minimal:34

# Update and install pre-requisites
RUN microdnf install -y java && microdnf clean all

# Download Minecraft Server
RUN curl -Lls \
    https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar \
    -o server.jar

RUN echo "eula=true" > eula.txt
COPY ./files/server.properties server.properties

EXPOSE 25565
EXPOSE 25575

ENTRYPOINT ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]