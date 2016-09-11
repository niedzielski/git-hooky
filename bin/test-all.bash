err=0
for test in $(compgen -A function "$@"); do
  "$test" &&:
  echo-stat $? "$test" || ((++err))
done
exit $err