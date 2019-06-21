<h1>Profile Backup Tool - _profBk.ps1</h1>

<h3>A Powershell script to backup user profiles from remote machines to your local machine.</h3>

This script will reach out to a remote machine via IP (logic to resolve IP from hostname included) and collect all of the various profile
items from the user's local profile.

This script will collect both the local profile on the machine as well as the user's Chrome bookmarks and Quick Access links.
Once it completes this transfer, it will create and populate a .txt document with all the installed software on the machine.

This script must be ran as an Admin. Development was done in the ISE ran as Administrator.
