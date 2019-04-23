for file in `ls |grep fastq` ; do fastx_trimmer -f l -l 95 -Q33 -i ${file} -o ${file}_trimmed; done



for file in `ls |grep fastq` ;do mkdir ${file}_fastqc; fastqc -t 8 -o ${file}_fastqc ${file}; done

mv ${file}_fastqc /FastQCresults