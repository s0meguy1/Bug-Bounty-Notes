#!/bin/bash
#You need to install golang first!!!
# Waybackurls
export GOPATH=/opt/waybackurls
go get -u github.com/tomnomnom/waybackurls
ln -s /opt/waybackurls/bin/waybackurls /usr/local/bin/waybackurls

# Gf
export GOPATH=/opt/gf
go get -u github.com/tomnomnom/gf
ln -s /opt/gf/bin/gf /usr/local/bin/gf
git clone https://github.com/1ndianl33t/Gf-Patterns /opt/Gf-Patterns || git -C /opt/Gf-Patterns pull
mkdir ~/.gf
mv /opt/Gf-Patterns/*.json ~/.gf

# Assetfinder
export GOPATH=/opt/assetfinder
go get -u github.com/tomnomnom/assetfinder
ln -s /opt/assetfinder/bin/assetfinder /usr/local/bin/assetfinder

# Anew
export GOPATH=/opt/anew
go get -u github.com/tomnomnom/anew
ln -s /opt/anew/bin/anew /usr/local/bin/anew

# Html-tool
export GOPATH=/opt/html-tool
go get -u github.com/tomnomnom/hacks/html-tool
ln -s /opt/html-tool/bin/html-tool /usr/local/bin/html-tool

#tok
export GOPATH=/opt/tok
go get -u github.com/tomnomnom/hacks/tok
ln -s /opt/tok/bin/tok /usr/local/bin/tok

#fff
export GOPATH=/opt/fff
go get -u github.com/tomnomnom/hacks/fff
ln -s /opt/fff/bin/fff /usr/local/bin/fff

# HTTProbe
export GOPATH=/opt/httprobe
go get -u github.com/tomnomnom/httprobe
ln -s /opt/httprobe/bin/httprobe /usr/local/bin/httprobe

export GOPATH=/opt/qsreplace
go get -u github.com/tomnomnom/qsreplace
ln -s /opt/qsreplace/bin/qsreplace /usr/local/bin/qsreplace

export GOPATH=/opt/get-title
go get -u github.com/tomnomnom/hacks/get-title
ln -s /opt/get-title/bin/get-title /usr/local/bin/get-title

export GOPATH=/opt/kxss
go get -u github.com/tomnomnom/hacks/kxss
ln -s /opt/kxss/bin/kxss /usr/local/bin/kxss

export GOPATH=/opt/filter-resolved
go get -u github.com/tomnomnom/hacks/filter-resolved
ln -s /opt/filter-resolved/bin/filter-resolved /usr/local/bin/filter-resolved

export GOPATH=/opt/unfurl
go get -u github.com/tomnomnom/hacks/unfurl
ln -s /opt/unfurl/bin/unfurl /usr/local/bin/unfurl

export GOPATH=/opt//anti-burl
go get -u github.com/tomnomnom/hacks/anti-burl
ln -s /opt/anti-burl/bin/anti-burl /usr/local/bin//anti-burl
