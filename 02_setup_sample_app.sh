#!/bin/bash

set -eux

# Clone and setup dependencies for angular sample application
git clone https://github.com/zitadel/zitadel-examples.git
cd zitadel-examples/angular
npm install -g @angular/cli
npm install
