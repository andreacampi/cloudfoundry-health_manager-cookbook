#
# Cookbook Name:: cloudfoundry-health_manager
# Recipe:: _server_deps
#
# Copyright 2012-2013, ZephirWorks
# Copyright 2012, Trotter Cashion
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

node.default['cloudfoundry_health_manager']['ruby_version'] = node['cloudfoundry']['ruby_version']

include_recipe "cloudfoundry-cloud_controller::_server_deps"
include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby node['cloudfoundry_health_manager']['ruby_version']
