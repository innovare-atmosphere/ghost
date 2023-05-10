services:
  ghost:
    image: ghost
    restart: always
    ports:
      - 8080:2368
    volumes:
      - ghost-data:/var/lib/ghost/content
    environment:
      database__client: mysql
      database__connection__host: db
      database__connection__user: root
      database__connection__password: ${database_password}
      database__connection__database: ghost
      url: https://${url}
  db:
    image: mysql:8.0
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: ${database_password}
    volumes:
      - db:/var/lib/mysql

volumes:
  ghost-data:
  db:
