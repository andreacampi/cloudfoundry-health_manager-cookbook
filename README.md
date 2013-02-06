Description
===========

Install the Cloud Foundry [health_manager](https://github.com/cloudfoundry/health_manager),
a mandatory component of a [Cloud Foundry](http://www.cloudfoundry.org)
installation.

Requirements
============

Platform
--------

* Ubuntu

Tested on:

* Ubuntu 10.04
* Ubuntu 12.04

Cookbooks
---------

* cloudfoundry
* rbenv

Usage
=====

This cookbook will install the CloudFoundry Health Manager on the target
node along with the necessary configuration files and init scripts to
run it.

Attributes
==========

* `node['cloudfoundry_health_manager']['log_level']` - The Health Manager's log level. Default is `info"`.
* `node['cloudfoundry_health_manager']['log_file']` - Where to write the Health Manager's logs. Default is `File.join(node['cloudfoundry']['log_dir'], "health_manager.log")`.
* `node['cloudfoundry_health_manager']['pid_file']` - Where to write the Health Manager's pid file. Default is `File.join(node['cloudfoundry']['pid_dir'], "health_manager.pid")`.
* `node['cloudfoundry_health_manager']['droplet_lost']` - TODO (trotter): Find out what this does. Default is `30`.
* `node['cloudfoundry_health_manager']['droplet_analysis']` - TODO (trotter): Find out what this does. Default is `10`.
* `node['cloudfoundry_health_manager']['flapping_death']` - TODO (trotter): Find out what this does. Default is `3`.
* `node['cloudfoundry_health_manager']['flapping_timeout']` - TODO (trotter): Find out what this does. Default is `180`.
* `node['cloudfoundry_health_manager']['restart_timeout']` - TODO (trotter): Find out what this does. Default is `20`.
* `node['cloudfoundry_health_manager']['stable_state']` - TODO (trotter): Find out what this does. Default is `60`.

License and Author
==================

* Author:: Andrea Campi (<andrea.campi@zephirworks.com>)
* Author:: Trotter Cashion (<cashion@gmail.com>)

* Copyright:: 2012-2013 ZephirWorks
* Copyright:: 2012 Trotter Cashion

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
