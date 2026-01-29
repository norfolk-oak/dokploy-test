FROM lscr.io/linuxserver/librespeed:latest

# Put our css into the image
COPY style.css /opt/naked-style.css

# Run on container start (linuxserver convention)
COPY rootfs/ /
RUN chmod +x /custom-cont-init.d/10-style.sh
