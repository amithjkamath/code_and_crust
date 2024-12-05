%% Access data
% Load variables from CSV file into workspace
timestamps = readtable("timestampsMilan.csv", Delimiter=",");

%% Process data
% Compute elapsed durations and averageDuration.
durations = timestamps.arrivalTimes - timestamps.departureTimes;
averageDuration = myAverage(durations);

%% Visualize data
% Plot all durations 
figure, plot(durations)
% Add a horizontal line with the average duration over the current plot
hold on
plot([1, numel(durations)],[averageDuration, averageDuration])
hold off

%% Print the average time taken from Bern is:
% See
% https://stackoverflow.com/questions/31244810/how-to-print-matlabs-duration 
fprintf("Average time is: %s\n", evalc('disp(averageDuration)'))