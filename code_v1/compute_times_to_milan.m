%% Access data
% Load variables from CSV file into workspace
timestamps = readtable("timestampsMilan.csv", Delimiter=",");
departureTimes = timestamps.departureTimes; % These are departureTimes
arrivalTimes = timestamps.arrivalTimes;

%% Process data
% Compute elapsed durations between departureTimes and arrivalTimes
d = arrivalTimes - departureTimes;
ad = 0; % Initialize ad to 0
for ii = 1:1000
    ad = ad + d(ii);
end
ad = ad/1000;

%% Visualize data
% Plot all durations 
figure, plot(d)
% Add a horizontal line with the average duration over the current plot
hold on
plot([1,1000],[ad, ad])
hold off
title("Travel durations to Paris from Bern")



