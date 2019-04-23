#!/usr/bin/env python

import sys
import os

infile = sys.argv[1]

base_name = infile.replace('.fastq.gz', '')
outdir = base_name + '_fastqc'
script_name = 'run_fastqc_' + base_name + '.sh'

fh = open(script_name, 'w')
fh.write('#!/usr/bin/bash\n')
job_name = 'fastqc_' + base_name
fh.write('#PBS -N ' + job_name + '\n')
fh.write('#PBS -q long\n')
fh.write('#PBS -l walltime=00:15:00\n')
fh.write('#PBS -l nodes=1:ppn=28\n')
fh.write('#PBS -k oe\n')
fh.write('module load fastqc-0.11.7\n')
fh.write('cd /nlustre/users/junior/OmegaFastq\n')
fh.write('mkdir ' + outdir + '\n')
fastqc_command = 'fastqc -t 28 -o ' + outdir + ' ' + infile
fh.write(fastqc_command + '\n')
fh.close()


