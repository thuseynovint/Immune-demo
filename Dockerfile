#---------------------------------------------------------------------------
# Dockefile to build Docker Image

#---------------------------------------------------------------------------

FROM nginx
RUN echo 'Docker Image on CloudRun for immune <br>'   > /usr/share/nginx/html/index.html

EXPOSE 80
