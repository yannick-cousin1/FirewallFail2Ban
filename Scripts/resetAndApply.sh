#!/bin/bash

bash /home/server/Scripts/eraseAll.sh
bash /home/server/Scripts/allowSSH.sh
bash /home/server/Scripts/allowAPT.sh
bash /home/server/Scripts/allowFTP.sh
bash /home/server/Scripts/allowHttp.sh
bash /home/server/Scripts/allowLo.sh
bash /home/server/Scripts/allowSMTP.sh
iptables -nvL
