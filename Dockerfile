# Gunakan image dasar yang minimal
FROM alpine:3.18

# Menambahkan informasi tentang pemelihara image
LABEL maintainer="PUJA"

# Salin script projek.sh ke dalam container
COPY project.sh /usr/local/bin/project.sh

# Pastikan projek.sh dapat dieksekusi
RUN chmod +x /usr/local/bin/project.sh

# Tentukan perintah yang akan dijalankan saat container dijalankan
CMD ["/usr/local/bin/project.sh"]
