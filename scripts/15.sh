echo "Enter the password for bandit15:"
read password

ssh -p 2220 bandit15@bandit.labs.overthewire.org "echo $password | ncat --ssl localhost 30001"