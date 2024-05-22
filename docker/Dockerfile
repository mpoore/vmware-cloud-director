FROM quay.io/centos/centos:stream9
ARG VERSION
LABEL \
    maintainer="Michael Poore <https://mpoore.io>" \
    org.label-schema.schema-version="0.1" \
    org.label-schema.name="mpoore/vmware-cloud-director" \
    org.label-schema.description="VMware Cloud Director" \
    org.label-schema.url="https://mpoore.io/" \
    org.label-schema.vcs-url="https://github.com/mpoore/vmware-cloud-director/" \
    org.label-schema.version=${VERSION}

# Install packages
RUN dnf install -y alsa-lib chkconfig coreutils initscripts iproute libICE libSM  libX11 \
    libXau libXdmcp libXext libXi libXt libXtst module-init-tools \
    openssl net-tools pciutils procps python3-distro wget which --allowerasing

# Add VMware GPG keys
RUN rpm --import https://packages.vmware.com/tools/keys/VMWARE-PACKAGING-GPG-RSA-KEY.pub

# Add VMware Cloud Director Binary
COPY bin/vmware-vcloud-director-distribution-$VERSION-*.bin /home