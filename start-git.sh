sudo docker run --detach \
    --hostname gitlab.example.com \
    --publish 127.0.0.1:443:443 \
    --publish 127.0.0.1:80:80 \
    --publish 127.0.0.1:22:22 \
    --publish 127.0.0.1:8929:8929 \
    --name gitlab \
    --restart always \
    --volume /srv/gitlab/config:/etc/gitlab:Z \
    --volume /srv/gitlab/logs:/var/log/gitlab:Z \
    --volume /srv/gitlab/data:/var/opt/gitlab:Z \
gitlab/gitlab-ce:latest
