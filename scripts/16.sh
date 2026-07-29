echo "Enter the password for bandit16:"
read password

ssh -p 2220 bandit16@bandit.labs.overthewire.org "nmap -p31000-32000 localhost | \
grep -P '(^\d+)/tcp open' | grep -oP '^\d+' | \
while IFS= read -r line; do \
  output=\$(echo '$password' | ncat --ssl localhost \$line 2>/dev/null); \
  if [[ \$? -ne 0 ]]; then continue; fi; \
  if [[ \$output == '$password' ]]; then continue; fi; \
  echo \"\$output\"; \
done"