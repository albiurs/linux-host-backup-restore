#!/bin/bash
PATH=/sbin:/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin

# Shutdown KVM/QEMU VM
virsh shutdown <vm_name>;