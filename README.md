# Pi-hole Docker Deployment

This project deploys a Pi-hole instance using Docker. You can configure it and monitor your network's DNS traffic.

## Setup Instructions

### Prerequisites

- Docker installed on your server or VPS
- Docker Compose installed

### How to Use

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/pihole-docker.git
   cd pihole-docker
   ```

2. Customize environment variables in `docker-compose.yml` if necessary (e.g., `WEBPASSWORD`, `TZ`, `DNS1`, `DNS2`).

3. Run the Pi-hole container using Docker Compose:

   ```bash
   docker-compose up -d
   ```

4. Access the Pi-hole admin interface:

   Open your browser and go to `http://your-server-ip/admin`. Log in using the password you set in `docker-compose.yml`.

### Customization

- Modify blocklists or settings via the Pi-hole admin interface.
- For persistent storage, Pi-hole config is mounted in `./etc-pihole/` and DNSMasq config in `./etc-dnsmasq.d/`.
