#!/bin/bash

if [[ $* == *"remove"* ]]; then
    servicemenudeinstallation ./7z-10-extract-zip.desktop
    servicemenudeinstallation ./7z-2-compress-bgz.desktop
    servicemenudeinstallation ./7z-4-extract-ace.desktop
    servicemenudeinstallation ./7z-6-extract-gzip.desktop
    servicemenudeinstallation ./7z-8-extract-tar.desktop
    servicemenudeinstallation ./7z-1-compress.desktop
    servicemenudeinstallation ./7z-3-extract-7zip.desktop
    servicemenudeinstallation ./7z-5-extract-bzip.desktop
    servicemenudeinstallation ./7z-7-extract-rar.desktop
    servicemenudeinstallation ./7z-9-extract-tar-gz.desktop
else if [[ $* == *"uninstall"* ]]; then
        servicemenudeinstallation ./7z-10-extract-zip.desktop
        servicemenudeinstallation ./7z-2-compress-bgz.desktop
        servicemenudeinstallation ./7z-4-extract-ace.desktop
        servicemenudeinstallation ./7z-6-extract-gzip.desktop
        servicemenudeinstallation ./7z-8-extract-tar.desktop
        servicemenudeinstallation ./7z-1-compress.desktop
        servicemenudeinstallation ./7z-3-extract-7zip.desktop
        servicemenudeinstallation ./7z-5-extract-bzip.desktop
        servicemenudeinstallation ./7z-7-extract-rar.desktop
        servicemenudeinstallation ./7z-9-extract-tar-gz.desktop
    else
        servicemenuinstallation ./7z-10-extract-zip.desktop
        servicemenuinstallation ./7z-2-compress-bgz.desktop
        servicemenuinstallation ./7z-4-extract-ace.desktop
        servicemenuinstallation ./7z-6-extract-gzip.desktop
        servicemenuinstallation ./7z-8-extract-tar.desktop
        servicemenuinstallation ./7z-1-compress.desktop
        servicemenuinstallation ./7z-3-extract-7zip.desktop
        servicemenuinstallation ./7z-5-extract-bzip.desktop
        servicemenuinstallation ./7z-7-extract-rar.desktop
        servicemenuinstallation ./7z-9-extract-tar-gz.desktop
    fi;
fi;



