for file in `ls |grep fastq` ; do fastx_trimmer -f l -l 95 -Q33 -i ${file} -o ${file}_trimmed; done
do mkdir ${file}_fastqc; fastqc -t 8 -o ${file}_fastqc ${file}; done
[ do mkdir FastQCresults
mv ${file}_fastqc /FastQCresults