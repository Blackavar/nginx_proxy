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

Debian or Ubuntu - Other platforms are untested.

Attributes
==========

* simple_forward - if true, do a simple port 80 forward. Default is false. 
* conf_dir - location to drop the Nginx config files. Default is based on platform.
* simple forwards - an array of  hashes: 
  listen_port - Port for the Nginx server to listen on.
  server_name - Server name for the proxy to listen on.
  destination_url - Destination for proxied connections.

  Example in JSON: 

	forward_servers: [{
           listen_port:"80",
           server_name:"www.example.com",
           destination_url:"http://127.0.0.1:15000"
         },
         {
           listen_port:"85",
           server_name:"www.example.com",
           destination_url:"http://127.0.0.1:15001"
         }]

* listen_port - Port for the Nginx server to listen on.  default is 80
* ssl_port - Port to listen on for secure connections. Default 443
* terminate_ssl - Boolean - if true, terminate SSL at this proxy. Default false.
* ssl_certificate - SSL certificate path
* ssl_certificate_key - SSL certificate key path

Usage
=====

Intended to be a skeleton to quickly spin up an Nginx proxy server. The first use case
will be a simple forwarding proxy, both with and without caching. However, this 
should be relatively simple to build upon.

Note - the defaults are meant to be overridden in roles or elsewhere - they are not
particularly useful other than to allow the nginx server to start.

The second case is an SSL terminating proxy, and requires the ssl_certificate and
ssl_certificate_key to be set. 
