#
# 该脚本封装 nginx 调用，可在任意位置执行
#
# 启动：./run.sh
# 重启：./run.sh reload
# 关闭：./run.sh quit/stop
#
NGX_BIN=/home/jsproxy/openresty/nginx/sbin/nginx
# CUR_DIR=$(cd `dirname $0` && pwd)
CUR_DIR=/home/jsproxy/server

if [ $1 ]; then
  PARAM="-s $1"
fi

$NGX_BIN -c $CUR_DIR/nginx.conf -p $CUR_DIR/nginx $PARAM
