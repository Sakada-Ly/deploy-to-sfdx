URL=https://developer.salesforce.com/media/salesforce-cli/sfdx-linux-amd64.tar.xz

export SFDX_AUTOUPDATE_DISABLE=true
export SFDX_USE_GENERIC_UNIX_KEYCHAIN=true
export SFDX_DOMAIN_RETRY=300

wget -qO- $URL | tar xJf -
"./sfdx/install"
export PATH=./sfdx/$(pwd):$PATH
sfdx update