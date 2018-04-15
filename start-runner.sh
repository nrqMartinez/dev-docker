docker run -d --name gitlab-runner --restart always \
  -v /var/run/docker.sock:/var/run/docker.sock:Z \
  -v /srv/gitlab-runner/config:/etc/gitlab-runner:Z \
gitlab/gitlab-runner:latest
