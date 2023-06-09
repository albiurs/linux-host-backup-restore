#!/bin/bash
PATH=/sbin:/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin

touch /var/log/cron_vm-shutdown.log
exec > /var/log/cron_vm-shutdown.log 2>&1;

# Shutdown KVM/QEMU VM
virsh shutdown <vm_name>;
sleep 30s;
virsh shutdown <vm_name>;
sleep 30s;
virsh shutdown <vm_name>;