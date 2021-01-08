FROM jenkins/jnlp-slave:3.27-1-alpine

USER root

RUN apk add docker

RUN apk add curl

RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" \
  && chmod +x ./kubectl \
  && mv ./kubectl /usr/local/bin/kubectl \
  && curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 \
  && chmod +x get_helm.sh && ./get_helm.sh

USER jenkins

ENTRYPOINT ["jenkins-slave"]