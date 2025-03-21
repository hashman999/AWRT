#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# Modify default hostname and WiFi SSID
sed -i 's/LEDE/XuXu/g' package/base-files/files/bin/config_generate
sed -i 's/LEDE/XuXu/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# Add XUXU ASCII logo to banner with system info
cat > package/base-files/files/etc/banner <<EOF
                                                           
                                                           
 ,--,     ,--,                ,--,     ,--,                
 |'. \   / .`|          ,--,  |'. \   / .`|          ,--,  
 ; \ `\ /' / ;        ,'_ /|  ; \ `\ /' / ;        ,'_ /|  
 `. \  /  / .'   .--. |  | :  `. \  /  / .'   .--. |  | :  
  \  \/  / ./  ,'_ /| :  . |   \  \/  / ./  ,'_ /| :  . |  
   \  \.'  /   |  ' | |  . .    \  \.'  /   |  ' | |  . .  
    \  ;  ;    |  | ' |  | |     \  ;  ;    |  | ' |  | |  
   / \  \  \   :  | | :  ' ;    / \  \  \   :  | | :  ' ;  
  ;  /\  \  \  |  ; ' |  | '   ;  /\  \  \  |  ; ' |  | '  
./__;  \  ;  \ :  | : ;  ; | ./__;  \  ;  \ :  | : ;  ; |  
|   : / \  \  ;'  :  `--'   \|   : / \  \  ;'  :  `--'   \ 
;   |/   \  ' |:  ,      .-./;   |/   \  ' |:  ,      .-./ 
`---'     `--`  `--`----'    `---'     `--`  `--`----'     

-------------------------------------------------------------
Welcome to XuXu OpenWrt!
Build Time: $(date)
-------------------------------------------------------------

EOF
