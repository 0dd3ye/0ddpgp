# 0ddpgp

This python/bash script is designed to automate encryption with gpg.

Features:

- Can encrypt/decrypt files
- Can encrypt/decrypt folders by compressing them with tar
- Can encrypt/decrypt folder's contents excluding folders within folders
- Can create/remove cron tasks that do things this script could do
- Has interactive interface that can be accessed using -m option
- Can be further automated using config file found at /usr/lib/0ddPGP/0ddPGP-Config
- Has log file of tasks set at /usr/lib/0ddPGP/cronTasksLog
- Can transfer public keys from one user to another

Things To Note:

- You should not screw with the files used by the program directly unless you know what you're doing.
- This is my first git hub script. I appreciate feedback, but I am not an expert. In regards to coding, I am self taught for the most part and this script is by no means professionally made.
- This script may or may not be updated in the future. If I get suggestions from github, I may implement them, but there is also a chance that I will never get around to it. I appreciate all suggestions though.
