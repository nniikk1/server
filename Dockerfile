FROM archlinux:latest

RUN pacman -Sy --noconfirm curl && \
    curl -sSf https://sshx.io/get | sh

CMD ["/usr/local/bin/sshx"]
