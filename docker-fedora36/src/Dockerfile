FROM fedora:36
LABEL maintainers="yifengyou <842056007@qq.com>"

RUN mkdir /etc/yum.repos.d/back && mv /etc/yum.repos.d/*.repo /etc/yum.repos.d/back && \
    curl -o /etc/yum.repos.d/fedora.repo http://mirrors.aliyun.com/repo/fedora.repo && \
    cat /etc/yum.repos.d/*.repo && dnf makecache && \
    dnf -y install systemd findutils \
                   which passwd \
                   && \
    dnf install -y \
        createrepo \
	cockpit.x86_64 \
	cockpit-bridge.x86_64 \
	cockpit-composer.noarch \
	cockpit-doc.noarch \
	cockpit-file-sharing.noarch \
	cockpit-machines.noarch \
	cockpit-packagekit.noarch \
	cockpit-pcp.x86_64 \
	cockpit-podman.noarch \
	cockpit-session-recording.noarch \
	cockpit-storaged.noarch \
	cockpit-system.noarch \
	cockpit-ws.x86_64 \
	subscription-manager-cockpit.noarch \
        redis \
        logrotate \
        composer-cli \
        git \
        vim \
        wget \
        tmux \
	net-tools && \
    dnf clean all
COPY files/cockpit-* /usr/bin/
