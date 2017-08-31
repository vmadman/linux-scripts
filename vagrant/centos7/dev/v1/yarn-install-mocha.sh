#!/bin/bash

# This script uses Yarn to install Mocha globally
#     see: https://mochajs.org/
#     see: https://github.com/mochajs/mocha

echo ""
echo "[Provision-Script] Installing Mocha & Chai (via Yarn)"
echo ""

yarn global add mocha chai
