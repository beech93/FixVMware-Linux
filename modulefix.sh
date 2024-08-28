#!/usr/bin/env bash

wget https://github.com/nan0desu/vmware-host-modules/archive/refs/heads/tmp/workstation-17.5.2-k6.9.1.zip
unzip workstation-17.5.2-k6.9.1.zip
cd vmware-host-modules-tmp-workstation-17.5.2-k6.9.1
tar -cf vmmon.tar vmmon-only
tar -cf vmnet.tar vmnet-only
sudo cp -v vmmon.tar vmnet.tar /usr/lib/vmware/modules/source/
sudo vmware-modconfig --console --install-all

echo "Finished."
