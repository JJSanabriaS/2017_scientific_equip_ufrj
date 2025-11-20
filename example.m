d = daqlist("ni")
deviceInfo = d{4, "DeviceInfo"}
dq = daq("ni");
dq.Rate = 8000;
addinput(dq, "cDAQ1Mod4", "ai0", "Voltage");
addinput(dq, "cDAQ1Mod4", "ai1", "Voltage");
tabledata = read(dq)
matrixdata = read(dq, "OutputFormat", "Matrix")
