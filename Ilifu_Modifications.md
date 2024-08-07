
# Ilifu HPC Configuration

Ilifu is a regional node, known as a Tier II node, in a national infrastructure, and partly funded by the Department of Science and Technology (DST) through their Data-Intensive Research Initiative of South Africa (DIRISA).

https://www.ilifu.ac.za/about/


Ilifu is using Slurm as a job scheduling system.


The main partition computing nodes have 48 CPUs and 232 GB of mem. 

So, I have modified the concept of specifying the runtime resources of WDLs from dynamic allocation (multiplying num of cores by mem-per-cpu) to static values.

Also noticed the term " GB" in mem attribute in runtime section cause the the value multiplied by 1024 three times, because of SLURM config.

