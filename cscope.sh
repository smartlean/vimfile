TARGET='/data/server/developers20/developers/linx/usrv/unig2/uworldServer1.60/cscope.files'
gen_cscope_files_usage() {
		echo "源码顶层目录(绝对路径) 待扫描子目录1 [待扫描子目录2] … [待扫描子目录N]"
}

if [ -z ${1} ]; then
	echo "请输入起始目录!"
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
