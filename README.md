# nginx reverse proxy sample

## usage

### vertual machines

```
$ vagrant plugin add vagrant-itamae
$ vagrant box add ubuntu_14_10 https://github.com/kraksoft/vagrant-box-ubuntu/releases/download/14.10/ubuntu-14.10-amd64.box
$ git clone git@github.com:ken1flan/nginx_reverse_proxy_sample.git
$ cd nginx_reverse_proxy_sample
$ vagrant up
```

### /etc/hosts

```
$ sudo echo "web1 192.168.33.10" >> /etc/hosts
$ sudo echo "web2 192.168.33.11" >> /etc/hosts
```

# detail

## web1

### reverse proxy

### web application

* /
* /web1
* /web1/content

## web2

### web application

* /web2
* /web2/content
