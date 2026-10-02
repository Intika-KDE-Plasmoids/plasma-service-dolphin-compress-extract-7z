#!/bin/bash

if [[ $* == *"remove"* ]]; then
    servicemenuinstaller uninstall ./7z-10-extract-zip.desktop
    servicemenuinstaller uninstall ./7z-2-compress-bgz.desktop
    servicemenuinstaller uninstall ./7z-4-extract-ace.desktop
    servicemenuinstaller uninstall ./7z-6-extract-gzip.desktop
    servicemenuinstaller uninstall ./7z-8-extract-tar.desktop
    servicemenuinstaller uninstall ./7z-1-compress.desktop
    servicemenuinstaller uninstall ./7z-3-extract-7zip.desktop
    servicemenuinstaller uninstall ./7z-5-extract-bzip.desktop
    servicemenuinstaller uninstall ./7z-7-extract-rar.desktop
    servicemenuinstaller uninstall ./7z-9-extract-tar-gz.desktop
else if [[ $* == *"uninstall"* ]]; then
        servicemenuinstaller uninstall ./7z-10-extract-zip.desktop
        servicemenuinstaller uninstall ./7z-2-compress-bgz.desktop
        servicemenuinstaller uninstall ./7z-4-extract-ace.desktop
        servicemenuinstaller uninstall ./7z-6-extract-gzip.desktop
        servicemenuinstaller uninstall ./7z-8-extract-tar.desktop
        servicemenuinstaller uninstall ./7z-1-compress.desktop
        servicemenuinstaller uninstall ./7z-3-extract-7zip.desktop
        servicemenuinstaller uninstall ./7z-5-extract-bzip.desktop
        servicemenuinstaller uninstall ./7z-7-extract-rar.desktop
        servicemenuinstaller uninstall ./7z-9-extract-tar-gz.desktop
    else
        servicemenuinstaller install ./7z-10-extract-zip.desktop
        servicemenuinstaller install ./7z-2-compress-bgz.desktop
        servicemenuinstaller install ./7z-4-extract-ace.desktop
        servicemenuinstaller install ./7z-6-extract-gzip.desktop
        servicemenuinstaller install ./7z-8-extract-tar.desktop
        servicemenuinstaller install ./7z-1-compress.desktop
        servicemenuinstaller install ./7z-3-extract-7zip.desktop
        servicemenuinstaller install ./7z-5-extract-bzip.desktop
        servicemenuinstaller install ./7z-7-extract-rar.desktop
        servicemenuinstaller install ./7z-9-extract-tar-gz.desktop
    fi;
fi;



