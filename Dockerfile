FROM node:16-alpine

WORKDIR site
RUN wget https://js-dos.com/6.22/current/js-dos.js && \
    wget https://js-dos.com/6.22/current/wdosbox.js && \
    wget https://js-dos.com/6.22/current/wdosbox.wasm.js
RUN npm install -g serve

RUN wget -O game.zip https://www.dosgamesarchive.com/file.php?id=75

COPY index.html .


ENTRYPOINT npx serve -l tcp://0.0.0.0:9001
