#!/bin/bash -x

sudo kvm -drive file=cp-ub10-01.vmdk,boot=on \
    -net nic,macaddr=00:0c:29:2d:dc:17 -net tap \
      -uuid 564d678d-48a9-e11c-4a0d-2e91bf2ddc17
