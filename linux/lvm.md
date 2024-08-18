# Combining Two New SSDs into a Single LVM Partition on Ubuntu

This guide will walk you through the process of combining two new SSDs into a single logical volume using LVM (Logical Volume Manager) on your Ubuntu server.

## Step 1: Identify the New SSDs

1. **List Available Disks:**
   - Open a terminal and use the `lsblk` command to list all available disks:
     ```sh
     lsblk
     ```
   - Identify the device names of your new SSDs (e.g., `/dev/sdb`, `/dev/sdc`).

## Step 2: Create Physical Volumes

1. **Initialize the Disks as Physical Volumes:**
   - Use the `pvcreate` command to initialize the new SSDs as physical volumes:
     ```sh
     sudo pvcreate /dev/sdb
     sudo pvcreate /dev/sdc
     ```

## Step 3: Create a Volume Group

1. **Create a Volume Group:**
   - Use the `vgcreate` command to create a volume group that includes both physical volumes:
     ```sh
     sudo vgcreate my_vg /dev/sdb /dev/sdc
     ```
   - Replace `my_vg` with the name you want to give to your volume group.

## Step 4: Create a Logical Volume

1. **Create a Logical Volume:**
   - Use the `lvcreate` command to create a logical volume within the volume group:
     ```sh
     sudo lvcreate -n my_lv -l 100%FREE my_vg
     ```
   - Replace `my_lv` with the name you want to give to your logical volume. The `-l 100%FREE` option uses all available space in the volume group.

## Step 5: Format the Logical Volume

1. **Format the Logical Volume:**
   - Use the `mkfs` command to format the logical volume with a filesystem (e.g., ext4):
     ```sh
     sudo mkfs.ext4 /dev/my_vg/my_lv
     ```

## Step 6: Mount the Logical Volume

1. **Create a Mount Point:**
   - Create a directory where you want to mount the logical volume:
     ```sh
     sudo mkdir /mnt/my_lv
     ```

2. **Mount the Logical Volume:**
   - Mount the logical volume to the mount point:
     ```sh
     sudo mount /dev/my_vg/my_lv /mnt/my_lv
     ```

## Step 7: Update `/etc/fstab` (Optional)

1. **Update `/etc/fstab` for Automatic Mounting:**
   - To ensure the logical volume is mounted automatically at boot, add an entry to the `/etc/fstab` file:
     ```sh
     sudo nano /etc/fstab
     ```
   - Add the following line to the file:
     ```plaintext
     /dev/my_vg/my_lv /mnt/my_lv ext4 defaults 0 2
     ```
   - Save the file and exit the text editor.

## Step 8: Verify the Setup

1. **Verify the Logical Volume:**
   - Use the `lvdisplay` command to display information about the logical volume:
     ```sh
     sudo lvdisplay /dev/my_vg/my_lv
     ```

2. **Verify the Mount Point:**
   - Use the `df -h` command to verify that the logical volume is mounted:
     ```sh
     df -h
     ```

## Conclusion

By following these steps, you have successfully combined two new SSDs into a single logical volume using LVM on your Ubuntu server. This setup allows you to manage the storage space flexibly and efficiently. For more advanced LVM configurations and options, you can refer to the [LVM documentation](https://tldp.org/HOWTO/LVM-HOWTO/).
