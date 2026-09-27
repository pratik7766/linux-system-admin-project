# Log Management

## Objective

Performed practical Linux log management and monitoring using system logs and `journalctl`.

## Journal Logs

Used `journalctl` to inspect recent system log entries:

- Displayed the latest 20 journal entries.
- Filtered error-level logs.
- Filtered warning-level logs.
- Viewed current boot logs.
- Checked available boot history.

## Service Logs

Checked SSH service logs using:

`journalctl -u sshd -n 20 --no-pager`

## Real-Time Monitoring

Used:

`journalctl -f`

to monitor system logs in real time.

## Log File Analysis

Inspected `/var/log/messages` and used:

- `ls -lh` to check log file details and size.
- `tail` to view recent entries.
- `grep` to filter error messages.

## Log Analysis

Counted error-related journal entries using:

`journalctl --no-pager | grep -ic "error"`

## Commands Practiced

- `journalctl`
- `journalctl -p`
- `journalctl -u`
- `journalctl -f`
- `journalctl -b`
- `journalctl --list-boots`
- `tail`
- `grep`
- `ls`

## Result

Successfully practiced Linux system log inspection, service log analysis, error and warning filtering, boot log analysis, and real-time log monitoring.
