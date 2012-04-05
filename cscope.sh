TARGET='/data/server/developers20/developers/linx/usrv/unig2/uworldServer1.60/cscope.files'
gen_cscope_files_usage() {
		echo "Դ�붥��Ŀ¼(����·��) ��ɨ����Ŀ¼1 [��ɨ����Ŀ¼2] �� [��ɨ����Ŀ¼N]"
}

if [ -z ${1} ]; then
	echo "��������ʼĿ¼!"
		gen_cscope_files_usage
	exit 1
fi  

if [ -s ${TARGET} ]; then
	cat /dev/null > ${TARGET}
fi  

for dir in $@
	do
		if [ ${dir} != ${1} ]; then
			find ${1}/${dir} \
			-regex '.*\.\(c\|h\|cpp\|txt\)' \                                                                                           
			-print >> ${TARGET}
		fi  
	done
