PID=`ps -eaf | grep SpringBootUploadFilesApplication | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID
fi


PID=`ps -eaf | grep react-multiple-files-upload | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID
fi

docker rm -f nginx-test