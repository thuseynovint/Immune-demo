#---------------------------------------------------------------------------
# Dockefile to build Docker Image

#---------------------------------------------------------------------------

FROM nginx
RUN echo 'Docker Image on CloudRun for immune <br>'   > /usr/share/nginx/html/index.html
RUN echo '<b><font color="magenta">Version 1.1</font></b>' >> /usr/share/nginx/html/index.html
EXPOSE 80
