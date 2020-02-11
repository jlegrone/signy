# NOTE: Clearly don't do this in production.
PASSPHRASE=0xdeadbeef

export SIGNY_ROOT_PASSPHRASE=$PASSPHRASE
export SIGNY_TARGETS_PASSPHRASE=$PASSPHRASE
export SIGNY_SNAPSHOT_PASSPHRASE=$PASSPHRASE
export SIGNY_DELEGATION_PASSPHRASE=$PASSPHRASE

# Get the GPG keyid using the given homedir.
function run_signy {
    # https://linuxize.com/post/bash-functions/
    signy --tlscacert=$GOPATH/src/github.com/theupdateframework/notary/cmd/notary/root-ca.crt --server=https://localhost:4443 $* localhost:5000/thin-bundle:v1
}