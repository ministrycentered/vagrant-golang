# Golang Vagrant Environment
[Golang](http://golang.org/) has a slightly more complex setup procedure compared to other languages as it uses a *workspace*
concept. Getting the environment wrong means many of the go commands fail with some what confusing errors.
This repo aims to alleviate the problems starting a golang project by providing a vagrant environment and puppet script
that will setup and prepare all the required pre-requisits.

## Requirements
In order to use this repository you need the following:

- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](http://www.vagrantup.com/)
- [Puppet](http://docs.puppetlabs.com/guides/installation.html)

## Using vagrant-golang
This repo was developed to be copied and re-used as needed in other projects. It is only meant to make per project golang
environments easier to manage. I have tried other golang modules for puppet and they didn't work as expected.

Clone or copy the repo and do the following:
```bash
cd /path/to/repo
git submodule init; git submodule update
vagrant up
vagrant ssh
# ...
cd /vagrant
go version
go install hello
hello
# hello, world
```

##GoENV and GoProj
Documentation about goenv and goproj, which this box uses are available at:
https://github.com/wfarr/goenv
https://github.com/divoxx/goproj

##Changing go version
If you need to change to a different go version from 1.2 just run:

	goenv install <version>
	goenv rehash
	goenv global <version>

### Contributing
Any contributions are welcome. Please just fork the repo and submit a pull request when complete.

### License
The MIT License (MIT)

Copyright (c) 2013 Darren Coxall

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
