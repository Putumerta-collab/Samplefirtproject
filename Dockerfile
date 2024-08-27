# Gunakan image dasar berbasis Linux
FROM alpine:3.18

# Install bash
RUN apk add --no-cache bash

# Copy script ke dalam container
COPY project.sh /usr/local/bin/project.sh

# Atur permission untuk script
RUN chmod +x /usr/local/bin/project.sh

# Tentukan command untuk menjalankan script
CMD ["/usr/local/bin/project.sh"]
