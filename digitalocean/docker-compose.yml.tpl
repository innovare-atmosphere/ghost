services:
  ghost:
    image: ghost
    restart: always
    volumes:
      - ghost-data:/var/lib/ghost/content
    environment:
      - url=${url}

volumes:
  ghost-data:
