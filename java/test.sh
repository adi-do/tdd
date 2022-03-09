# TEST 1
echo "# TEST 1"
RESULT_TEST=$(/Library/Java/JavaVirtualMachines/jdk-16.0.1.jdk/Contents/Home/bin/java \
-XX:+ShowCodeDetailsInExceptionMessages \
-cp "/Users/adrian/Library/Application Support/Code/User/workspaceStorage/8466bab4b62460879e29bc1f5f939627/redhat.java/jdt_ws/tdd_4ac181e2/bin" \
AddTwoNumbers;)

if [ "${RESULT_TEST}" -eq "0" ]; then
   echo "OK. Default values are used: ${RESULT_TEST}";
else
   echo "KO. Default values test has crashed: ${RESULT_TEST}";
fi;
echo;

# TEST 2
echo "# TEST 2"
RESULT_TEST=$(/Library/Java/JavaVirtualMachines/jdk-16.0.1.jdk/Contents/Home/bin/java \
-XX:+ShowCodeDetailsInExceptionMessages \
-cp "/Users/adrian/Library/Application Support/Code/User/workspaceStorage/8466bab4b62460879e29bc1f5f939627/redhat.java/jdt_ws/tdd_4ac181e2/bin" \
AddTwoNumbers 1 2;)

if [ "${RESULT_TEST}" -eq "3" ]; then
   echo "OK. Correct arguments: ${RESULT_TEST}";
else
   echo "KO. Correct arguments test has crashed: ${RESULT_TEST}";
fi;
echo;

# TEST 3
echo "# TEST 3"
RESULT_TEST=$(/Library/Java/JavaVirtualMachines/jdk-16.0.1.jdk/Contents/Home/bin/java \
-XX:+ShowCodeDetailsInExceptionMessages \
-cp "/Users/adrian/Library/Application Support/Code/User/workspaceStorage/8466bab4b62460879e29bc1f5f939627/redhat.java/jdt_ws/tdd_4ac181e2/bin" \
AddTwoNumbers 1 dos 2>&1)

if [ "${RESULT_TEST}" = "Arguments must be integers." ]; then
   echo "OK. Incorrect arguments: ${RESULT_TEST}";
else
   echo "KO. Incorrect arguments test has crashed: ${RESULT_TEST}";
fi;
echo;

# TEST 4
echo "# TEST 4"
RESULT_TEST=$(/Library/Java/JavaVirtualMachines/jdk-16.0.1.jdk/Contents/Home/bin/java \
-XX:+ShowCodeDetailsInExceptionMessages \
-cp "/Users/adrian/Library/Application Support/Code/User/workspaceStorage/8466bab4b62460879e29bc1f5f939627/redhat.java/jdt_ws/tdd_4ac181e2/bin" \
AddTwoNumbers 1;)

if [ "${RESULT_TEST}" = "Please provide two numbers!" ]; then
   echo "OK. Incorrect arguments quantity: ${RESULT_TEST}";
else
   echo "KO. Incorrect arguments quantity test has crashed: [${RESULT_TEST}]";
fi;
echo;
