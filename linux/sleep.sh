# https://en-wiki.ikoula.com/en/Disable_Ubuntu_sleep_mode

systemctl status sleep.target
systemctl status suspend.target
systemctl status hibernate.target
systemctl status hybrid-sleep.target

# disable sleep
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target