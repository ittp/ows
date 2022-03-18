#!/bin/sh

name=$HOSTNAME
target=/data/backup
exclude=$(cat exclude.conf)

function deb_backup() {

}

function bsd_backup() {

}

function ows_backup() {

}

if [[ -r /bin/tar ]]; then
  [[ -z /data ]]; 
  then 
    echo "backup to /data"
  fi
  tar --exclude=/data --exclude=/tmp/opkg-lists --exclude=/tmp/backups --exclude=/dev --exclude=/sys --exclude=/proc -cf /data/backups/$name.tar /
else 
  opkg update && opkg install tar gzip
  echo "install tar"
fi;
