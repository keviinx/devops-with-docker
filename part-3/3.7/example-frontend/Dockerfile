FROM node:16.20.0-alpine3.18

WORKDIR /usr/src/app

EXPOSE 5000

COPY . .

RUN npm install && \
    npm run build && \
    npm install -g serve && \
    adduser --disabled-password appuser && \
    rm -rf /etc/apk/repositories

ENV REACT_APP_BACKEND_URL=http://localhost/api

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
