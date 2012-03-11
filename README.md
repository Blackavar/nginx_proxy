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

* conf_dir - location to drop the Nginx config files. Default is based on platform.
* listen_port - Port for the Nginx server to listen on.  default is 80
* server_name - Server name for the proxy to listen on - default is www.example.com
* destination_url - Destination for proxied connections - default is http://127.0.0.1

Usage
=====

Intended to be a skeleton to quickly spin up an Nginx proxy server. The first use case
will be a simple forwarding proxy, both with and without caching. However, this 
should be relatively simple to build upon.

Note - the defaults are meant to be overridden in roles or elsewhere - they are not
particularly useful other than to allow the nginx server to start. 
