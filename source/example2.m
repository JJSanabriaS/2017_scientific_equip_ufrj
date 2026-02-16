% Acquire data for one second at 8000 scans per second.
data = read(dq, seconds(1));
plot(data.Time, data.Variables);
ylabel("Voltage (V)")

data = read(dq, 2*dq.Rate);
plot(data.Time, data.Variables);
ylabel("Voltage (V)")

