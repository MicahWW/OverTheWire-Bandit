################################################################################
#region Solution 1
# This technically only checks for 2 of the given criteria, but it is the
# only file that meets all the criteria. If another file that was added that was
# also not executable and was 1033 bytes but was not text, this would not work.
cat `find ~/inhere/ \! -executable -a -size 1033c`
#endregion
################################################################################
#region Solution 2
# This solution checks all the criteria given in the Bandit instructions.
find ~/inhere/ \! -executable -a -size 1033c -fprint /tmp/foo.txt
while read -r line; do
    if file -i "$line" | grep -q 'text/plain; charset=us-ascii'; then
        cat "$line"
    fi
done < /tmp/foo.txt
#endregion
################################################################################