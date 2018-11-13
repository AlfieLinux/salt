-# Using github repository to update my saltstack.

#### This report is written from my personal computer using a Xubuntu 18.04.1 bootable USB and it's written using markdown.

## Computer specs

- OS: Xubuntu 18.04.1 (bootable USB, original OS Windows 10 Professional N)
- CPU: Intel i5 6600k @ 3.5GHz
- GPU: Nvidia Geforce GTX 1070 
- RAM: 2x 8Gb DDR4 @ 2667MHz
- MoBo: Asus Maximus VIII Ranger (Boot menu opens with F8)

## Assignment C)  Git salt repo /srv/salt (16:35 13.11.2018)

I started by booting my desktop and setting up my working environment. Then I installed Git, salt-master and salt-minion.

`$ sudo apt-get -y install salt-master salt-minion`
 
I then cloned my already existing salt repository from github to my home directory.

`$ git clone "Link from repo"`

After that I created a new repository named salt and cloned it under /srv/.

`$ git clone https://github.com/AlfieLinux/salt.git`

Now I got a folder called salt under /srv/ so that my life would be a little easier.

After that I copied everything from my original repository to my newly made one using cp (not that I was already under /srv/salt directory.

```
$ sudo cp -r /home/xubuntu/salt/salt/apache/ .
$ sudo cp -r /home/xubuntu/salt/salt/php/ .
$ sudo cp -r /home/xubuntu/salt/salt/skeleton/ .
$ sudo cp -r /home/xubuntu/salt/salt/sysstat/ .
$ sudo cp -r /home/xubuntu/salt/salt/top.sls .
```
After that I used 

`$ sudo git add .`

To add all the changes I'd made

`$ sudo git commit`

To save the changes to the local repo, but after using this command it asked my github account credentials so I needed to put them in.

`$ git config --global user.email "you@example.com"`

`$ git config --global user.name "Your Name"`

After adding my email and username I used 

`$ git config --global credential.helper "cache --timeout=3600"`

To push without getting asked for password constantly.
After all that stuff was done it was time for me to do my first full run of commits and pushes.

I first tried to do it by only using one command

`$ sudo git add . && git commit && git pull && git push`

But it for some reason didn't work and I figured out that I would have to use git add . separate from the other commands like

`$ sudo git add .`

`$ sudo git commit && git pull && git push`

Which didn't matter since it's not that big of a hindrance for me.
And it seems that I immediatly fixed the problem by using ; instead of &&.

`$ sudo git add .; sudo git commit; sudo git pull; sudo git push`

And it didn't work without adding sudo to every step.

Since our assignment was to write this report using markdown I took my time to get used to it, used some cheatsheets that I found from browsing the interwebs and tried to make my report look somewhat readable from the get-go.

[Help with markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
[Help with git commands](http://terokarvinen.com/2016/publish-your-project-with-github)

## Assignment D) git log, diff and blame (17:22)

### git log

```
$ git log
commit 11d68398e3c500fd04de89e221b3c17fb0d7a7a4 (HEAD -> master, origin/master, origin/HEAD)
Author: AlfieLinux <a1704459@myy.haaga-helia.fi>
Date:   Tue Nov 13 15:19:58 2018 +0000

    README edits

commit c6e6b0b00c9093769641ccd175e852718fe2c64e
Author: AlfieLinux <a1704459@myy.haaga-helia.fi>
Date:   Tue Nov 13 15:13:43 2018 +0000

    edits

commit 76c12a4ebe69d993905041c79371c613694c367e
Author: AlfieLinux <a1704459@myy.haaga-helia.fi>
Date:   Tue Nov 13 15:12:43 2018 +0000

    Edits to readme

commit e0da8122b76bc86055119a916a8d94e06404a0d0
Author: AlfieLinux <a1704459@myy.haaga-helia.fi>
Date:   Tue Nov 13 15:10:19 2018 +0000

    S

commit 4cd67f724fb07258c1c6f4262dc2abe5eabfd855
Author: AlfieLinux <a1704459@myy.haaga-helia.fi>
Date:   Tue Nov 13 15:09:46 2018 +0000

    EDITS

commit 13a6998135df4b2893f0b31804f67d607ab92336
Author: AlfieLinux <a1704459@myy.haaga-helia.fi>
Date:   Tue Nov 13 15:05:45 2018 +0000

    README

commit d943c5e4caae9175d77a77e04bd12b78abeaaba0
Author: AlfieLinux <a1704459@myy.haaga-helia.fi>
Date:   Tue Nov 13 15:04:53 2018 +0000

    README edits

commit 2a60cb7edf6c8a215c4dbc112604090e351a38b7
Author: AlfieLinux <a1704459@myy.haaga-helia.fi>
Date:   Tue Nov 13 15:01:52 2018 +0000

    README edited

commit 9e8083a877b630b4f55296948c906e1cdbe7ce18
Author: AlfieLinux <a1704459@myy.haaga-helia.fi>
Date:   Tue Nov 13 14:54:47 2018 +0000

    README modified again

commit e549257a373fb8afe7a0d889854c5c6da8138458
Author: AlfieLinux <a1704459@myy.haaga-helia.fi>
Date:   Tue Nov 13 14:52:47 2018 +0000

    Readme edited

commit aff44519b99c2b341370154fec34876030d09f36
Author: AlfieLinux <a1704459@myy.haaga-helia.fi>
Date:   Tue Nov 13 14:50:40 2018 +0000

    New shizzle
```

git log lists the newest commits at the top and is a useful tool to see how many commits have been made and when they were done. This looks to be very useful when doing e.g. group projects.

- commit: Looks to be some kind of a Hash that is given to each commit you make. When looking in to it it's called SHA-1 checksum for short (Secure Hash Algorithm 1).
- Author: Who made the commit (user  and his/her email.)
- Date: What time was the commit made.
And at the bottom you can see what the author wrote in the commit message.

### git diff

```
$ git diff 76c12a4ebe69d993905041c79371c613694c367e
diff --git a/README.md b/README.md
index c34861b..47fe929 100644
--- a/README.md
+++ b/README.md
@@ -10,7 +10,7 @@
 - RAM: 2x 8Gb DDR4 @ 2667MHz
 - MoBo: Asus Maximus VIII Ranger (Boot menu opens with F8)
 
-## Starting out
+## Git salt repo /srv/salt (16:35 13.11.2018)
 
 I started by booting my desktop and setting up my working environment. Then I installed Git, salt-master and salt-minion.
 
@@ -43,7 +43,7 @@ To add all the changes I'd made
 
 `sudo git commit`
 
-To save the changed to the local repo, but after using this command it asked my github account credentials so I need to put them in.
+To save the changes to the local repo, but after using this command it asked my github account credentials so I needed to put them in.
 
 `git config --global user.email "you@example.com"`
 
@@ -73,6 +73,95 @@ And it seems that I immediatly fixed the problem by using ; instead of &&.
 
 And it didn't work without adding sudo to every step.
 
+Since our assignment was to write this report using markdown I took my time to get used to it, used some cheatsheets that I found from browsing the interwebs and tried to make my report look somewhat readable from the get-go.
+
+[Help with markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
+[Help with git commands](http://terokarvinen.com/2016/publish-your-project-with-github)
+
```

`$ git diff "commit hash"`

 lists all the changes made in your repository. And since the only things I've edited thusfar is my README.md it shows what changes were made to it.

### git blame

```
$ git blame README.md
aff44519 (AlfieLinux 2018-11-13 14:50:40 +0000   1) # Using github repository to update my saltstack.
aff44519 (AlfieLinux 2018-11-13 14:50:40 +0000   2) 
aff44519 (AlfieLinux 2018-11-13 14:50:40 +0000   3) #### This report is written from my personal computer using a Xubuntu 18.04.1 bootable USB and it's written using markdown.
aff44519 (AlfieLinux 2018-11-13 14:50:40 +0000   4) 
aff44519 (AlfieLinux 2018-11-13 14:50:40 +0000   5) ## Computer specs
aff44519 (AlfieLinux 2018-11-13 14:50:40 +0000   6) 
aff44519 (AlfieLinux 2018-11-13 14:50:40 +0000   7) - OS: Xubuntu 18.04.1 (bootable USB, original OS Windows 10 Professional N)
aff44519 (AlfieLinux 2018-11-13 14:50:40 +0000   8) - CPU: Intel i5 6600k @ 3.5GHz
aff44519 (AlfieLinux 2018-11-13 14:50:40 +0000   9) - GPU: Nvidia Geforce GTX 1070 
aff44519 (AlfieLinux 2018-11-13 14:50:40 +0000  10) - RAM: 2x 8Gb DDR4 @ 2667MHz
aff44519 (AlfieLinux 2018-11-13 14:50:40 +0000  11) - MoBo: Asus Maximus VIII Ranger (Boot menu opens with F8)
aff44519 (AlfieLinux 2018-11-13 14:50:40 +0000  12) 
f4295190 (AlfieLinux 2018-11-13 15:32:49 +0000  13) ## Git salt repo /srv/salt (16:35 13.11.2018)
2a60cb7e (AlfieLinux 2018-11-13 15:01:52 +0000  14) 
e549257a (AlfieLinux 2018-11-13 14:52:47 +0000  15) I started by booting my desktop and setting up my working environment. Then I installed Git, salt-master and salt-minion.
76c12a4e (AlfieLinux 2018-11-13 15:12:43 +0000  16) 
76c12a4e (AlfieLinux 2018-11-13 15:12:43 +0000  17) `sudo apt-get -y install salt-master salt-minion`
9e8083a8 (AlfieLinux 2018-11-13 14:54:47 +0000  18)  
e549257a (AlfieLinux 2018-11-13 14:52:47 +0000  19) I then cloned my already existing salt repository from github to my home directory.
9e8083a8 (AlfieLinux 2018-11-13 14:54:47 +0000  20) 
76c12a4e (AlfieLinux 2018-11-13 15:12:43 +0000  21) `git clone "Link from repo"`
9e8083a8 (AlfieLinux 2018-11-13 14:54:47 +0000  22) 
```

Shows what was edited, when it was edited, who edited it and which line was edited. Again an useful command for group projects or at workplaces when someone has made a huge mistake and won't admit making one :').

## Assignment E) git reset hard HEAD (17:55)

**WARNING: Do not commit after deleting any file if you were to simulate this. Although I'm pretty sure that you can pick whatever commit you want to revert back to.**


When you think you've done an irrecoverable mistake and deleted something important from your git repo you can use git reset --hard HEAD to recover the lost file/files.

I simulated this situation with deleting this very report that I'm writing currently, which was kinda stupid if this simulation somehow went wrong.

`$ sudo rm README.md`

After deleting the file I used 
`sudo git reset --hard HEAD`
to revert all the changes and going back to the last commit that was made.
```
$ sudo git reset --hard HEAD
HEAD is now at 7b096a4 READ
```

**WARNING: Do not commit after deleting any file if you were to simulate this. Although I'm pretty sure that you can pick whatever commit you want to revert back to.**

## Assignment F) Creating a new salt module. (18:09)

For the module I wanted to try to create something using my own skills with salt, without looking up from a guide.

I want to create a state that gives everyone rights to a command that can be used anywhere. 
What steps do I normally go thru when creating a command and giving rights?
- Create the command using whatever language I want, this time it's going to be bash.
- Add the command to the directory /usr/local/bin/ directory so that it's usable anywhere.
- Test it using another user that I'm going to create.

I started by creating a new directory under /srv/salt/
`$ sudo mkdir ipos`
Then I created a new init.sls file in that directory.
`$ sudo nano init.sls`
And wrote something inside just to keep the file there.

The command that i'm creating needs to print out the clients ip address and current date.

I created a file in my home directory called ipos.sh
`$ nano ipos.sh`
```
#!/bin/bash

hostname -I
date
```
and tested it 

```
$ bash ipos.sh 
192.168.10.50 
Tue Nov 13 16:33:29 UTC 2018
```

Then I want to give everyone rights to the new command
`$ chmod a+x ipos.sh`
and change the name from ipos.sh to ipos
`$ mv ipos.sh ipos`

I'm not going to move the file to /usr/local/bin/ now, I'm going to do it using salt and I'm also going to check whether it gives everyone rights to the file or not.

`$ sudo nano init.sls` 


/usr/local/bin/:
  file.managed:
    - source: salt://ipos/ipos

```
$ sudo salt '*' state.apply ipos
slavedude:
----------
          ID: /usr/local/bin/
    Function: file.managed
      Result: False
     Comment: Specified target /usr/local/bin/ is a directory
     Started: 16:46:49.873542
    Duration: 0.55 ms
     Changes:   

Summary for slavedude
------------
Succeeded: 0
Failed:    1
------------
Total states run:     1
Total run time:   0.550 ms
ERROR: Minions returned with non-zero exit code
```

Didn't work since I hadn't given the file name at the very top.

`$ sudo nano init.sls`

/usr/local/bin/ipos:    
  file.managed:
    - source: salt://ipos/ipos


```
xubuntu@xubuntu:/srv/salt/ipos$ sudo nano init.sls 
xubuntu@xubuntu:/srv/salt/ipos$ sudo salt '*' state.apply ipos
slavedude:
----------
          ID: /usr/local/bin/ipos
    Function: file.managed
      Result: True
     Comment: File /usr/local/bin/ipos updated
     Started: 16:47:15.227572
    Duration: 16.185 ms
     Changes:   
              ----------
              diff:
                  New file
              mode:
                  0644

Summary for slavedude
------------
Succeeded: 1 (changed=1)
Failed:    0
------------
Total states run:     1
Total run time:  16.185 ms
xubuntu@xubuntu:/srv/salt/ipos$ 
```

Now it worked, but I couldn't run the command so I need to change the permissions to the file using salt.

I haven't yet learned how to edit file permissions, but I have a feeling that it's done by using file.managed.

In the end I couldn't figure everything out myself, but I looked from the interwebs for the syntax that gives file permissions and I found it [here](https://docs.saltstack.com/en/latest/ref/states/all/salt.states.file.html)

So now my state looks like this:

```
/usr/local/bin/ipos:
  file.managed:
    - source: salt://ipos/ipos
    - user: root
    - group: root
    - mode: 755
```

And it seemed to work atleast on my xubunbtu user, but what about a new user?

```
$ sudo adduser timppa
Adding user `timppa' ...
Adding new group `timppa' (1000) ...
Adding new user `timppa' (1000) with group `timppa' ...
Creating home directory `/home/timppa' ...
Copying files from `/etc/skel' ...
Enter new UNIX password: 
Retype new UNIX password: 
passwd: password updated successfully
Changing the user information for timppa
Enter the new value, or press ENTER for the default
	Full Name []: Timppa Timonen
	Room Number []: 
	Work Phone []: 
	Home Phone []: 
	Other []: 
Is the information correct? [Y/n] y
```

I installed SSH to try my new user.

`$ sudo apt-get -y install ssh`

and connected to my new user

`$ ssh timppa@localhost`

and tried the command out

```
timppa@xubuntu:~$ ipos
192.168.10.50 
Tue Nov 13 17:06:09 UTC 2018
```

## Continuation of my wordpress

Since I want to keep updating my wordpress blog I wanted to convert this markdown file into html and upload it to wordpress aswell. I remembered that my friend [Petrus](http://blog.petrusmanner.com/) was talking about it in class and checked to see whether he had done it or not and to my surprise he found out what to do. So I did the same.
How to convert markdown to html [Petrus's guide here](http://blog.petrusmanner.com/index.php/2018/11/08/server-management-with-salt-h3-git-and-markdown/).

Simply enough you just need to install pandoc
`sudo apt-get -y install pandoc`
and convert the file into an html file 
`sudo pandoc README.md -o wordpress.html`
It copies and creates an html file instead of replacing the original .md file.


### Afterthoughts

I think it's fun to learn new stuff with salt. You are given proper syntax errors that give you information about what went wrong and where. Trying to figure out stuff on your own is pretty rewarding and even if you end up looking things up from a guide you learn more stuff on the road of creating.

SOURCES:

[Tero Karvinen](http://terokarvinen.com/)

[Tero's assignments](http://terokarvinen.com/2018/aikataulu-%e2%80%93-palvelinten-hallinta-ict4tn022-3004-ti-ja-3002-to-%e2%80%93-loppukevat-2018-5p)

[Tero's GitHub Guide](http://terokarvinen.com/2016/publish-your-project-with-github)

[GitHub](https://github.com/)

[Some help with markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

[File permissions help](https://docs.saltstack.com/en/latest/ref/states/all/salt.states.file.html)
