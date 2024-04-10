FROM adoptopenjdk/openjdk11:jdk-11.0.2.9-slim
WORKDIR /opt
COPY target/*.jar /opt/app.jar
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar

#docker build -t phamthi/eureka-server:0.0.1 .
#docker login
#docker push phamthi/eureka-server:0.0.1
#eksctl create cluster --name aws-ekl-cluster --region ap-southeast-1 --nodegroup-name eks-cluster-node --node-type t3.medium --nodes 1
