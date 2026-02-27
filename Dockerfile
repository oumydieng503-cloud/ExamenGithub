# Use official Nginx image as base (for serving static content)
FROM nginx:alpine

# ✅ CORRECTION SÉCURITÉ (OBLIGATOIRE)
RUN apk update && apk upgrade

# Copy our app files into the default Nginx document root
COPY index.html /usr/share/nginx/html/
COPY elements.html /usr/share/nginx/html/
COPY generic.html /usr/share/nginx/html/
COPY landing.html /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets
COPY images /usr/share/nginx/html/images
COPY LICENSE.txt /usr/share/nginx/html/
COPY README.txt /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
