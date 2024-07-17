# syntax=docker/dockerfile:1.4
FROM directus/directus
COPY ./certs/ca-certificate.crt /certs/ca-certificate.crt
COPY ./extensions /directus/extensions
COPY ./templates /directus/templates
COPY ./uploads /directus/uploads
ENV NODE_EXTRA_CA_CERTS=/certs/ca-certificate.crt

