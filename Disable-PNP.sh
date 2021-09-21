# Author: Ezana Kalekristos - eek9045@rit.edu
# Filename: Disable-PNP.sh
# Disables devices

# Iterate over devices 
for file in $(ls ../../sys/devices/pnp0/*/*);
do
    # If a resources file is found, disable it
    if [[ "${file##*/}" == "resources" ]]; then
        echo "disable" > $file;
    fi
done

# Disables drivers

#Iterate over PnP drivers
for file in $(ls ../../sys/devices/pnp0/*/driver/*/*);
do
    # If a resources file is found, disable it
    if [[ "${file##*/}" == "resources" ]]; then
        echo "disable" > $file;
    fi
done
