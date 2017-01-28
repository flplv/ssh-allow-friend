ssh-allow-friend

This is a bash script to temporarily allow a ssh login using friends public key
automatically fetched from online servers.

Example usage:
```sh
./ssh-allow-friend --github my-friend-user-name
```

The script will fetch `my-friend-user-name`'s public key from github and add to
current user authorized keys. After running the command, in a machine where
$USER is `fanl` and the local ip is `192.168.2.13`, the script will print:

```
Acquired key for user my-friend-user-name from github,
your friend is now able to login via ssh using:
    ssh fanl@192.168.2.13

Login authorization will be ceased after this
program terminates.
Press ^C to exit.
```

Your friend can now login with the command `fanl@192.168.2.13`.

If you need to select a different user to your friend ssh session, use:

```sh
sudo -H -u another_user ./ssh-allow-friend --github my-friend-user-name
```
