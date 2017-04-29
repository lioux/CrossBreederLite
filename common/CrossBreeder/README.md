## Info

In here you can disable any mod you want, just change "1" to "0"

1. You must enable "ALL" if you want to use any mod in the same folder ( Except FDE_Governor_Tweaks )

2. LOOP_TIME_DYNRAM ---> Config the zram/lmk loop time. [Default: 0 Hr 1 Min 0 Sec]

3. Here is how to config DynBS :

dynbsd start -h $CONF1 -ns $CONF2 -d $CONF3 -lt $CONF4

List: 
-hotplug | -h number - If equal to one, DynBS itself is controlled by switching on and off of the processor cores. If greater than one, a similar behavior limits to the number of nuclei (the remaining will be forcibly turned off). If the value is zero, control cores returned to the operating system kernel. 
> Measured: 0 (off) 1 (on), and then the CPU cores; default 1, maximum - 16 
-num-samples | -ns number - Number of measurements for Calculating the average load (affects the rate of frequency change and the accuracy (or accuracy) of its choice) 
> Measured: numbers, default: 2, from 1 to 10 
-delay | -d timeout - demon waiting time after the end of the next cycle. Can be used to reduce the load of the demon, single meaning 'num_samples' 
> Measured: milliseconds, default: 800, from 10 to 6000 
-launch-timeout | -lt timeout - demon waiting time before starting 
> Units: seconds, default: 0, 0 to 600 

[Default: -h 0 -ns 5 -d 1800 -lt 0 ]

4. Zram/lmk ---> Config the zram/lmk size. 0 is the minimum, 10 is the maximum, do not leave it blank.

5. SQLITE ---> Config after how many boots system will optimize SQlite databases. [Default: 4 ]

6. zzCheck_Net_DNS ---> Don't Edit.