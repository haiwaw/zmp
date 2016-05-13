#！ /bin/sh
petalinux-boot --qemu --kernel --qemu-args "-redir tcp:10021:10.0.2.15:21 -redir tcp:10023:10.0.2.15:23 -redir tcp:10080:10.0.2.15:80\
        -redir tcp:10022:10.0.2.15:22"
