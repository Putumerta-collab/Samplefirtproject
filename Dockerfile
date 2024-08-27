# Gunakan image dasar yang minimal
FROM alpine:3.18

# Menambahkan informasi tentang pemelihara image
LABEL maintainer="PUJA"

# Salin script projek.sh ke dalam container
COPY projek.sh /usr/local/bin/projek.sh

# Pastikan projek.sh dapat dieksekusi
RUN chmod +x /usr/local/bin/projek.sh

# Tentukan perintah yang akan dijalankan saat container dijalankan
CMD ["/usr/local/bin/projek.sh"]
