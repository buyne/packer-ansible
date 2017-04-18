# Introduction

These are the templates for various publicly available Vagrant boxes
providing an Ansible box.

The template ansible.json currently has these builders available:

* VirtualBox provider:
    * [ansible]: Ansible on 64 bit Cent OS 7

# Building

To build the boxes, install [packer](https://packer.io) and
 run from the base path:

    packer build ansible.json

This will build the boxes and generate Vagrant boxes in the current directory.

To build only a specific box, you can use the "-only"-flag:

    packer build -only=ansible ansible.json 
