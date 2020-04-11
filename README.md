# kali-addons

Script to set up a Kali VM with multiple tools and git repos.


To list packages that you have installed on another VM so you can modify the script:

* Get all manually installed packages *including dependencies.*

``grep " install " /var/log/dpkg.log*``

* Command to list history of apt-get (*this does not include dependencies of the packages installed*).

``grep " install " /var/log/apt/history.log``

``gunzip -c $(ls -tr /var/log/apt/history.log.*.gz) | grep " install "``
