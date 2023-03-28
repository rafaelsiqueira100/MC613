view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 3200ps -dutycycle 50 -starttime 0ps -endtime 3200ps sim:/light/a 
wave create -driver freeze -pattern clock -initialvalue 0 -period 1600ps -dutycycle 50 -starttime 0ps -endtime 3200ps sim:/light/b 
wave create -driver freeze -pattern clock -initialvalue 0 -period 800ps -dutycycle 50 -starttime 0ps -endtime 3200ps sim:/light/c 
wave create -driver freeze -pattern clock -initialvalue 0 -period 400ps -dutycycle 50 -starttime 0ps -endtime 3200ps sim:/light/d 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ps -dutycycle 50 -starttime 0ps -endtime 3200ps sim:/light/e 
WaveCollapseAll -1
wave clipboard restore
