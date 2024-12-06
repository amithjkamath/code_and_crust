%% Access data
% Load variables from MAT file into workspace
[arrivalTimes, departureTimes] = read_time_data("datasets/timestampsMilan.mat");

%% Process data
% Compute elapsed durations between arrivalTimes and departureTimes
durations = arrivalTimes - departureTimes;
averageDuration = mean(durations, "omitnan");

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