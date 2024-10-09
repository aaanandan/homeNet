# Use the official Pi-hole Docker image as the base image
FROM pihole/pihole:latest

# Optional: Expose Pi-hole’s web interface and DNS services
EXPOSE 53/tcp
EXPOSE 53/udp
EXPOSE 80/tcp

# Set environment variables for configuring Pi-hole
ENV WEBPASSWORD="your_web_password_here" \
    TZ="America/New_York" \
    DNS1="1.1.1.1" \
    DNS2="1.0.0.1"

# Set file permissions for mounted volumes (optional)
RUN chmod -R 777 /etc/pihole && chmod -R 777 /etc/dnsmasq.d

# Use the default Pi-hole entry point
CMD ["pihole", "-g"]  # Refresh blocklists on container start
