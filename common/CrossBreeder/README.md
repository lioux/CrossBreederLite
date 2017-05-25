## Info

In here you can disable any mod you want, just change "1" to "0"

1.Here is how to config DynBS :

dynbsd start -h $CONF1 -ns $CONF2 -d $CONF3 -lt $CONF4

List: 

> -hotplug | -h number - If equal to one, DynBS itself is controlled by switching on and off of the processor cores. If greater than one, a similar behavior limits to the number of nuclei (the remaining will be forcibly turned off). If the value is zero, control cores returned to the operating system kernel. 

  Measured: 0 (off) 1 (on), and then the CPU cores; default 0, maximum - 16 

> -num-samples | -ns number - Number of measurements for Calculating the average load (affects the rate of frequency change and the accuracy (or accuracy) of its choice) 

  Measured: numbers, default: 5, from 1 to 10 

> -delay | -d timeout - demon waiting time after the end of the next cycle. Can be used to reduce the load of the demon, single meaning 'num_samples' 

  Measured: milliseconds, default: 1800, from 10 to 6000 

> -launch-timeout | -lt timeout - demon waiting time before starting 

  Units: seconds, default: 0, maximum 600

2.ZRAM/LMK ---> Config the zRAM/LMK size. [CONF1 --> ZRAM] [CONF2 --> LMK]
  Measured: numbers, default: 10, from 0 to 10, do not leave it blank.

3.TIME ---> Config ZRAM/LMK waiting time before the next cycle start [Default: 0 Hr 1 Min 0 Sec]

TIME=$((($HR * 3600)+($MIN * 60)+$SEC))

4.SQLITE ( COUNT ) ---> Config after how many boots system will optimize SQlite databases. [Default: 4]

5.SERVER ---> Choose the DNS server which you want to use.

List:

> 0 - No Server

> 1 - Google Public DNS [Default]

> 2 - OPEN DNS

> 3 - DNS.WATCH

> 4 - Norton Connect Safe

> 5 - Level 3

> 6 - Comodo Secure DNS

> 7 - DNS Advantage

> 8 - Safe DNS

> 9 - OPEN NIC

6.ADVCT ---> Advanced CPU Tweak

7.Voltage --> Config the voltage you want to reduce.

Reference value:

Safe --> 50 [Default] , Recommand --> 75 , Danger --> 100

In order to avoid the voltage too low[system will crash], the value must =<100

8.BFS --> Brain Fuck Scheduler, an alternative to the Completely Fair Scheduler
