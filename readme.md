about this project
==================

the community calendar is intended to be a widget that communities can include in their websites to share their events among related communities.

the back-end is currently provided by techgrind.asia.

this project is initiated by the Beijing GNU/Linux Usergroup for the Beijing Tech Community.

you are welcome to use it for your own region, rewrite it for different frameworks or adapt it to a different back-end.

the code is written in coffeescript and needs node.js only for coffeescript translation.  
deployment can be done as static javascript files, and does not need any kind of dynamic server for the front-end.

the back-end is a RESTful API written for the sTeam server as used by techgrind.asia


development instructions
========================

step 1: install node.js

    http://nodejs.org/download/


step 2: clone the repo

either from your own fork at gitlab (see contribution instruction):
    git clone https://gitlab.com/<your name>/community-calendar.git

or directly:
    git clone https://gitlab.com/beijinglug/community-calendar.git


step 3: install node packages:

    npm install

this installs all dependencies (including coffee) for our project into  the project's node_modules directory based on the 'package.json' file


step 4: start the server

    node_modules/.bin/coffee scripts/server.coffee


but for convenience we can install coffee in the global node environment:

    npm install -g coffee-script


so we can just say

    coffee scripts/server.coffee

if the server is working you'll see:

    Listening on port 8000


how to contribute your changes
==============================

sign up at gitlab.com

fork the project

clone the forked project to your computer
    git clone https://gitlab.com/<your name>/community-calendar.git

follow the instructions above to set up your environment

when you are properly set up you should be able to load http://localhost:8000/ in your browser and see something similar to http://ngtg.techgrind.asia:7999/

to get an idea how this widget will be used, take a look at http://beijinglug.org/index.php?option=com_content&view=section&layout=blog&id=2&Itemid=9

you can see the widget in the lower right corner (it is hidden there because it is not yet functional)

push changes to your repo frequently.

when ready please file a merge request or notify the project developers about your contribution


official repo
=============

the official repo is https://gitlab.com/beijinglug/community-calendar
copies of the project exist at https://gitcafe.com/beijinglug/community-calendar
and https://github.com/beijinglug/community-calendar
