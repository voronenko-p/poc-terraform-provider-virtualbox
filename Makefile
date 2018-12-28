install-terraform-virtualbox-bridge:
	go get github.com/terra-farm/terraform-provider-virtualbox
	mkdir -p ~/.terraform.d/plugins
	cp $(GOPATH)/bin/terraform-provider-virtualbox ~/.terraform.d/plugins

repack-xenial:
	vagrant box repackage ubuntu/xenial64 virtualbox 20181223.0.0

repack-trusty:
	vagrant box repackage ubuntu/trusty64 virtualbox 20181207.0.2
