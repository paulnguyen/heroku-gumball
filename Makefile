
clean:
	rm -rf node_modules
	rm -rf package-lock.json

install:
	npm install

run: install
	node app.js

get-branches:
	git branch --list
	git checkout version1
	git checkout version2
	git checkout version3
	git checkout version4
	git checkout version5
	git checkout version6
	git checkout master

update-cloud9:
	sudo yum -y update

install-nvm:   
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

install-node:	
	nvm install v8.9.4
	node --version

node-use:
	nvm use v8.9.4

node-default:	
	nvm alias default 8.9.4 

install-heroku:   
	npm install -g heroku-cli
	heroku --version

heroku-login:	
	heroku login

heroku-apps:   
	heroku apps

heroku-tail:
	heroku logs --tail --app pnguyen-gumball


