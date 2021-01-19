# Jenkins JNLP Slave (Docker, Kubectl and Helm)
This image is to be used as Jenkins Slave to deploy projects into Kubernetes by the way using `kubectl` or `Helm`.


![Jitendra's github stats](https://github-readme-stats.vercel.app/api?username=ppshein&show_icons=true&count_private=true)

**Prerequisite**
After deploying with Helm Chart, it's required to make docker.sock permission inside Nodes as follow:

    chmod 666 /var/run/docker.sock
