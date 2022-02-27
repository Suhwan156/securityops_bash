while ls | grep -q sh
do
	echo -n '이름에 sh 포함된 파일이 있음 : '
	pwd
	cd ..
done
