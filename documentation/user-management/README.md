# User & Group Management

## Objective

Configured a dedicated system administrator user with controlled administrative access.

## User Created

- Username: sysadmin
- Home Directory: /home/sysadmin
- Shell: /bin/bash
- UID: 1001
- Primary Group: sysadmin

## Group Configuration

Created the `sysadmins` group and added `sysadmin` as a member.

## Security Configuration

- Home directory permissions: 750
- Configured password for sysadmin
- Added sysadmin to the `wheel` group
- Verified sudo access

## Verification

The following checks were performed:

- `id sysadmin`
- `groups`
- `ls -ld /home/sysadmin`
- `chage -l sysadmin`
- `getent passwd sysadmin`
- `getent group sysadmins`
- `sudo -l`
- `sudo whoami`

Sudo verification returned:

```text
root
