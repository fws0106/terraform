#!/bin/bash
sleep 30
http_response=$(curl -o /dev/null -s -w "%{http_code}\n" http://119.13.108.95:80)
echo Server returned: ${http_response}
if [ $http_response != "200" ]; then
  echo "Message: The unit test failed"
  exit 1
else
  echo "Message: The unit test passed"
  exit 0
fi