

pwd

ls -al

echo "$MyEnv"
echo "$WORKSPACE"

echo "$PATH"

python3 "${WORKSPACE}/test.py"

set -xe

REPORT_TIMESTAMP=$(date +%s)

echo "===== Jmeter 测试 ====="

echo "创建日志目录"
if [ ! -d "logs" ]; then 
    mkdir logs 
    echo "创建logs目录成功" 
fi

echo "判断 logs/result.jtl 是否存在，存在则删除"
if [ -f "logs/result.jtl" ]; then 
    rm -rf logs/result.jtl echo "删除result.jtl" 
fi

echo "执行 Jmeter 测试"
$JMETER_BIN/jmeter.sh -n -t $WORKSPACE/LMS.jmx -l $WORKSPACE/logs/result.jtl -J jmeter.save.saveservice.output_format=xml


echo "备份当前执行记录"
cp $WORKSPACE/logs/result.jtl $WORKSPACE/logs/${REPORT_TIMESTAMP}_${BUILD_NUMBER}.jtl

echo "生成html格式报告"

tmpl="$JMETER_HOME/extras/jmeter-results-detail-report_21.xsl" 
source_result=$WORKSPACE/logs/${REPORT_TIMESTAMP}_${BUILD_NUMBER}.jtl 
target_result=$WORKSPACE/logs/${JOB_NAME}/${REPORT_TIMESTAMP}_${BUILD_NUMBER}.html 

if [ ! -d "$WORKSPACE/logs/${JOB_NAME}" ]; then 
    echo "创建 Job Log Dir" 
    mkdir -p "$WORKSPACE/logs/${JOB_NAME}" 
fi

xsltproc $tmpl $source_result > $target_result