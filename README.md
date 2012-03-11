Description
===========

Generates basic config files for common Nginx proxy situations. 

Requirements
============

Cookbooks:
---------- 

* nginx

Platform
--------

Debian or Ubuntu - it may work where 'build-essential' works, but other platforms are untested.

Attributes
==========

* conf_path - location to drop the Nginx config files

Usage
=====

Intended to be a skeleton to quickly spin up an Nginx proxy server. The first use case
will be a simple forwarding proxy, both with and without caching. However, this 
should be relatively simple to build upon.
