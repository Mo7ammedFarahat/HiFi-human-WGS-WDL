#!/bin/bash

#SBATCH -D /scratch3/projects/003/mohammed/HiFi-human-WGS-WDL/workflows/sample_analysis
#SBATCH --job-name=cromwell-job
#SBATCH --output=cromwell-job.out
#SBATCH --error=cromwell-job.err
#SBATCH --time=60:00:00
#SBATCH --cpus-per-task=32
#SBATCH --mem=128G
#SBATCH --partition=Main


module add java/openjdk-18.0.2

java -Dconfig.file=/scratch3/projects/003/mohammed/HiFi-human-WGS-WDL/cp_cromwell_config.conf -jar /scratch3/projects/003/mohammed/HiFi-human-WGS-WDL/cromwell-86.jar run sample_analysis.wdl -i /scratch3/projects/003/mohammed/HiFi-human-WGS-WDL/workflows/sample_analysis/cp_myinput.json > run8.log
