# 2>/dev/null to suppress permission denied errors
cat `find / -user bandit7 -a -group bandit6 -a -size 33c 2>/dev/null`