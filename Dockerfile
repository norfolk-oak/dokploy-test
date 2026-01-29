FROM nginx:alpine

# Simple static site
COPY site/ /usr/share/nginx/html/

# Optional: clean default config is fine; nginx serves /usr/share/nginx/html on :80
EXPOSE 80
