# first build all the gdal/libgeos stuff

FROM osgeo/gdal:alpine-normal-latest

RUN apk update && apk upgrade \
    && apk add git gcc libc-dev libffi-dev python3-dev ca-certificates py3-pip wget build-base \
    #
    && pip3 install --upgrade pip \
    && pip3 install gevent \
    && pip3 install gunicorn \
    && pip3 install atomicwrites \
    && pip3 install flask \
    && pip3 install flask_cors \
    && pip3 install pycountry \
    && pip3 install tenacity \
    && pip3 install shapely \
    && pip3 install geojson
