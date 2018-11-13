# Using github repository to update my saltstack.

#### This report is written from my personal computer using a Xubuntu 18.04.1 bootable USB and it's written using markdown.

## Computer specs

- OS: Xubuntu 18.04.1 (bootable USB, original OS Windows 10 Professional N)
- CPU: Intel i5 6600k @ 3.5GHz
- GPU: Nvidia Geforce GTX 1070 
- RAM: 2x 8Gb DDR4 @ 2667MHz
- MoBo: Asus Maximus VIII Ranger (Boot menu opens with F8)

I started by booting my desktop and setting up my working environment. Then I installed Git, salt-master and salt-minion.
> sudo apt-get -y install salt-master salt-minion
 
I then cloned my already existing salt repository from github to my home directory.

> git clone "Link from repo"

After that I created a new repository named salt and cloned it under /srv/.

> git clone https://github.com/AlfieLinux/salt.git

Now I got a folder called salt under /srv/ so that my life would be a little easier.

After that I copied everything from my original repository to my newly made one using cp (not that I was already under /srv/salt directory.

> sudo cp -r /home/xubuntu/salt/salt/apache/ .

> sudo cp -r /home/xubuntu/salt/salt/php/ .

> sudo cp -r /home/xubuntu/salt/salt/skeleton/ .

> sudo cp -r /home/xubuntu/salt/salt/sysstat/ .

> sudo cp -r /home/xubuntu/salt/salt/top.sls .

After that I used 

> sudo git add . 

To add all the changed I'd made

> sudo git commit

To save the changed to the local repo, but after using this command it asked my github account credentials so I need to put them in.

> git config --global user.email "you@example.com"

> git config --global user.name "Your Name"

After adding my email and username I used 

> git config --global credential.helper "cache --timeout=3600"

To push without getting asked for password constantly.
After all that stuff was done it was time for me to do my first full run of commits and pushes.









SOURCES:

[Tero Karvinen](http://terokarvinen.com/)
[Tero's assignments](http://terokarvinen.com/2018/aikataulu-%e2%80%93-palvelinten-hallinta-ict4tn022-3004-ti-ja-3002-to-%e2%80%93-loppukevat-2018-5p)
[Tero's GitHub Guide](http://terokarvinen.com/2016/publish-your-project-with-github)
[GitHub](https://github.com/)

