FROM kthse/kth-nodejs:16.0.0

RUN apk add chromium
RUN npm i -g lighthouse

RUN mkdir /report
COPY custom-config.js /custom-config.js

CMD lighthouse "$URL" --config-path /custom-config.js --chrome-flags="--no-sandbox --headless" --output html --output json --output-path /report/report.html
