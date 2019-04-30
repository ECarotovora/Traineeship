#!/bin/bash
#PBS -l nodes=1:ppn=28
#PBS -l walltime=8:00:00
#PBS -q normal
#PBS -o /path/to/stdout.log
#PBS -e /path/to/stderr.log
#PBS -k oe

 
module load bowtie2-2.3.4.1
bowtie2 -x /nlustre/users/fourie/H.sapiens/gatk_resources_bundle/2.8/hg19/uscs.hg19.fasta -p 28 -1 /nlustre/users/junior/OmegaFastq/fastq/FW -2 /nlustre/users/junior/OmegaFastq/fastq/RV -S /nlustre/users/junior/OmegaFastq/fastq/SAM.sam




