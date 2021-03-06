#!/bin/sh

outfile="/tmp/grafana.deb"
download_base="https://dl.grafana.com/oss/release/"
echo "********* $1 *************"
case $1 in
   rpi)  package_file="grafana-rpi_6.3.6_armhf.deb"
       ;;
   aarch64) package_file="grafana_6.3.6_arm64.deb"
       ;;
   amd64) package_file="grafana_6.7.3_amd64.deb"
       ;;
   *) package_file="grafana_6.3.6_armhf.deb"
esac
wget -O "${outfile}" "${download_base}${package_file}"
