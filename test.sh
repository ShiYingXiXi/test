

pwd

ls -al

echo "$MyEnv"
echo "$WORKSPACE"

echo "$PATH"

python3 "${WORKSPACE}/test.py"

echo "===== 执行 Jmeter 测试 ====="
$JMETER/jmeter.sh -n -t $WORKSPACE/LMS.jmx -l $WORKSPACE/logs/result.jtl