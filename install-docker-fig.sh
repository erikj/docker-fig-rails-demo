install_docker () {
  apt-get update
  apt-get install -y docker.io
  # https://github.com/docker/fig/issues/73
  echo "DOCKER_OPTS=\"-H tcp://127.0.0.1:4243 -H unix:///var/run/docker.sock\"" >> /etc/default/docker.io
  restart docker.io
  echo "export DOCKER_HOST=tcp://localhost:4243" >> ~vagrant/.bashrc
}

install_fig () {
  curl -L https://github.com/docker/fig/releases/download/0.5.2/linux > /tmp/fig
  chmod +x /tmp/fig
  cp /tmp/fig /usr/local/bin/
}

install_docker
install_fig
