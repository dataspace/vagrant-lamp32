#
# Cookbook Name:: kms
# Recipe:: default
#
# Copyright (C) 2013 Gary Smith
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
include_recipe "git"
include_recipe "vim"
include_recipe "sendmail"
include_recipe "imagemagick"
include_recipe "sshfs-fuse"

include_recipe "LampStack::database"
include_recipe "LampStack::webserver"


include_recipe "nodejs"
include_recipe "npm"
npm_package "yo"
npm_package "grunt-cli"
npm_package "bower"
npm_package "coffee-script"
npm_package "generator-webapp"


bash "add group" do
  user "root"
  code <<-EOH
    addgroup vagrant fuse
  EOH
  not_if "grep -q user_allow_other /etc/fuse.conf"
end

bash "add fuse" do
  user "root"
  code <<-EOH
    addgroup vagrant fuse
    echo 'user_allow_other' >> /etc/fuse.conf
    cat /etc/fuse.conf
  EOH
  not_if "grep -q user_allow_other /etc/fuse.conf"
end
