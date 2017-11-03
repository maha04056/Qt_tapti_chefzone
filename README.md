# Registration and Login Example

 Registration and Login Example with Spring MVC 4, Spring Security, Spring Data JPA, XML Configuration, Maven, JSP, and MySQL.

This cookbook provides resources for installing Tomcat8 and managing the Tomcat service for use in wrapper cookbooks. Installs Tomcat8 from tarballs on the http://tomcat.apache.org/ website and installs the appropriate configuration on Ubuntu 14.04.

# Build

# Prerequisites

Java

The Login is a Java application which is why you need to install a Java JDK.

If you want to build the master branch you will need a default jdk.

# Documentation

# Create a tomcat group and tomcat user

Create a tomcat user and assign it to a group tomcat.
Execute the recipe usergrp.rb for the above to be done.

# Download the tar file from the Apache.org website

Source code is often packed for download as a TAR (Tape ARchive) file, that is a standard format in the Unix/Linux world. These files have a .tar extension; they can also be compressed, the extension is .tar.gz. 

In this cookbook, the installation of tomcat takes places by untaring the tomcat tar file.
Execute the download.rb recipe to download the tar file and place into tomcat.tar file which is created in /home/ubuntu directory.

# Extracting the tar file

There are several ways to unpack these files. One way is to use untar command.
The extraction of the downloaded tar.giz extension file is done in the directory.rb recipe.

# Permissions 

The group named tomcat and the tomcat user need to be given permissions on the extracted files.
This permissions were given to both group and user by running the permissions.rb recipe.

# Creation of the configuration file for tomcat

This configuration tells the tomcat on which level it needs to start and stop. It consists of uid, gid, environments of JAVA_HOME and CATALINA_HOME.
The script that need to ran for cleaning the directory after stop command executed also included in this.

This file need to created in the path /etc/init directory which is automated in tomcat.conf.rb recipe.

# Creating users who can access both manage and admin gui's

We need to create users so that we can access both manager app and admin through gui.
Users.xml recipe does the sasme.

# Deploying the .war file into the tomcat

The .war file which is built through jenkins need to be deployed into the tomcat(application server) into webapps directory and tomcat need to be restarted.
The above deploying and restarting server was done by the recipe deploy.rb.


 
