function [arrivalTimes, departureTimes] = read_time_data(filename)
% Extract arrivalTimes and departureTimes from input file

% Case: .csv files
timestamps = readtable(filename, Delimiter=",");
departureTimes = timestamps.departureTimes; % These are departureTimes
arrivalTimes = timestamps.arrivalTimes;

% Case: .mat files?

% TODO

end

