services:
  ghost:
    image: ghost
    restart: always
    ports:
      - 8080:2368
    volumes:
      - ghost-data:/var/lib/ghost/content
    environment:
      - url=https://${url}

volumes:
  ghost-data:
