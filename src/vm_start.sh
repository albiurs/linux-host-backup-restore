#!/bin/bash
PATH=/sbin:/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin

exec > /var/log/cron_vm-start.log 2>&1;

# Start KVM/QEMU VM
virsh start <vm_name>;
sleep 30s;
virsh start <vm_name>;
sleep 30s;
virsh start <vm_name>;