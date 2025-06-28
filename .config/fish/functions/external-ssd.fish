function toggle-sda1-mount
    set device /dev/sda1
    set mountpoint /mnt/external

    # Check if device is mounted
    if mount | grep -q "$device"
        echo "$device is mounted. Attempting to unmount..."
        sudo umount $device
        and echo "Unmounted $device successfully."
    else
        echo "$device is not mounted. Attempting to mount..."
        # Create mountpoint if it doesn't exist
        if not test -d $mountpoint
            mkdir -p $mountpoint
        end
        sudo mount $device $mountpoint
        and echo "Mounted $device at $mountpoint successfully."
    end
end
