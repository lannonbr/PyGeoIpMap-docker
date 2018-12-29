FROM fedora:29

ENV input_file 'ips.txt'

RUN dnf install -y \
  python \
  python3-numpy \
  python3-matplotlib \
  python3-basemap \
  python3-pygeoip \
  && pip3 install requests

WORKDIR /usr/app

COPY GeoLiteCity.dat third-party-notices.txt pygeoipmap.py ./

CMD /usr/bin/python3 pygeoipmap.py -i /mnt/${input_file} -o /mnt/image.png --service m --db GeoLiteCity.dat