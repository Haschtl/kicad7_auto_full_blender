FROM ghcr.io/inti-cmnb/kicad7_auto_full:latest
LABEL AUTHOR Salvador E. Tropea <stropea@inti.gob.ar>
LABEL Description="Export various files from KiCad projects (KiCad 7)"

COPY installPcb2blenderImporter.py ./installPcb2blenderImporter.py
RUN apt update
RUN pip3 install skia-python --break-system-packages
RUN blender -v
RUN apt install -y wget python3-pil python3-numpy
RUN wget https://github.com/30350n/pcb2blender/releases/download/v2.6-k7.0-b3.5/pcb2blender_importer_2-6.zip
RUN blender -b  -y  --python ./installPcb2blenderImporter.py

WORKDIR /mnt
