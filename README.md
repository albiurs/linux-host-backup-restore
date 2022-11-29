# linux-host-backup-restore

This backup shell script is based on the original publication at:
https://ubuntu.com/server/docs/backups-shell-scripts



## Script execution

Making the script executable:
<pre><code>chmod 750 backup.sh</code></pre>

Executing the script:
<pre><code>sudo ./backup.sh</code></pre>



## Cronjob

Automation of the script with cron.

Edit the crontab file:
<pre><code>sudo crontab -e</code></pre>

...add the script path to the crontab to be daily executed as a cronjob:
<pre><code># m h dom mon dow   command
0 0 * * * bash /usr/local/bin/backup.sh</code></pre>



## Restore

List archive contents:
<pre><code>tar -tzvf /mnt/backup/host-Monday.tgz</code></pre>

Restore to different directory:
<pre><code>tar -xzvf /mnt/backup/host-Monday.tgz -C /tmp etc/hosts</code></pre>

Restore to original directory:
<pre><code>cd /
sudo tar -xzvf /mnt/backup/host-Monday.tgz</code></pre>