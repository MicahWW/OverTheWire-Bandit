dir=`mktemp -d`
cd $dir
echo $dir

scp -P 2220 bandit13@bandit.labs.overthewire.org:~/sshkey.private ./sshkey.private
# Ensures the private key has the correct permissions as ssh will refuse to use
# a private key with open permissions.
chmod 600 ./sshkey.private

ssh -p 2220 -i ./sshkey.private  bandit14@bandit.labs.overthewire.org \
    "cat /etc/bandit_pass/bandit14"

rm -rf $dir