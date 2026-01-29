FROM lscr.io/linuxserver/librespeed:latest

# Put our branding files into the image
COPY branding/ /opt/branding/

# Add an init script that copies branding into /config/www on container start
COPY rootfs/ /
RUN chmod +x /custom-cont-init.d/10-branding.sh
