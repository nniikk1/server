FROM archlinux:latest

RUN pacman -Sy --noconfirm curl && \
    curl -sSf https://sshx.io/get | sh

CMD ["/bin/sh", "-c", "exec /usr/local/bin/sshx 2>&1 | cat"]
