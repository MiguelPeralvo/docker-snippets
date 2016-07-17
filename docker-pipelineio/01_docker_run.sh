#!/bin/sh

sudo docker run -itd --privileged --name pipeline --net=host -m 48g fluxcapacitor/pipeline
