# ISE304 Systems Simulation (2021-2022 Spring, ISU)
This page includes coding exercises we did throughout the class. You can either clone this repo to your computer (and run files locally on your computer) or view them here.
* The file [`making_rvs.m`](w3/making_rvs.m) includes MATLAB code on how we can **generate various random variables**, calculate any CDF values, sketch PDFs over an interval, pick random numbers, etc. It also includes a seed setting example.
* As an **assignment**, students were asked to approximate `pi` using simulation, specifically, pseudo-random numbers between 0 and 1. The approximation needs to be repeated for increasing sample sizes using a constant seed to see the converging behaviour. The file [`pi_est.m`](w3/pi_est.m) includes one way to do this, which is to calculate the proportion of pairs falling into the slice below and equate it to the analytical equation for the area of the unit circle.

<img src="figures/pi_est.jpg" width="40%" alt="Site logo" align = "center" style="margin:0px 10px"><img src="figures/pi_est2.jpg" width="45%" alt="Site logo" align = "center" style="margin:0px 10px">

* The file [`mall_parking.m`](w5/mall_parking.m) includes a simple MATLAB routine to calculate the number of servers `c` needed for a **shopping mall parking lot**.

