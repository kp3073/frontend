FROM nginx
RUN rm -rf /usr/share/nginx/html/* /etc/nginx/config.d/*
ADD expense.conf /etc/nginx/conf.d/expense.conf
ADD static/ /usr/share/nginx/html/static/
ADD index.html asset-manifest.json index.html robots.txt /usr/share/nginx/html/