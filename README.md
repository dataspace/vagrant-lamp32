# LampStack Cookbook
Configure a Precise32 box with Linux, Apache, MySql and Php. 
Also installs git, vim, sendmail, imagemagick, fuse, nodejs, npm, yo, grunt, bower, coffee script, and Yo's generator-webapp
Base box for lamp stack based web development

# Requirements
Chef
Vagrant

# Usage 
vagrant up
vagrant package --output=lamp32.box

# Attributes
None

# Recipes
default.rb
webserver.rb
database.rb

# Author

Author:: Gary Smith (<bk@kc.gs>)
