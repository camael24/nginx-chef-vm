## NGINX chef vm

### Requirement
- Gem : librarian-chef capistrano
- Vagrant plugin : vagrant-omnibus

### Use
> $ git clone <this> as/
> $ cd as
> $ mkdir www
> $ librarian-chef install
> $ vagrant up
hack your site web, and push on your siteweb
> $ cd ../
> $ cap <production|staging> deploy

### Modify

You need to hack ./Vagrantfile, ./Capfile, ./config/*

### Errors
Send me an issue for the error, or bug-feature :p
