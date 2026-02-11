FROM quay.io/wildfly/wildfly:latest

# Copiar el WAR al directorio de deployments
COPY build/libs/crud-file.war /opt/jboss/wildfly/standalone/deployments/

# Exponer puerto 8080 (interno, no expuesto al host)
EXPOSE 8080

# Comando para iniciar WildFly (escucha solo en 127.0.0.1)
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "127.0.0.1"]
