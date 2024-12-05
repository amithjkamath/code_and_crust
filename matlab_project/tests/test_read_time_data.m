function tests = test_read_time_data()
%TEST_READ_TIME_DATA function-based unit test for the function
%read_time_data.

% The main test function:
% * starts or ends with the case-insensitive word "test"
% * has the same name as the function file and takes no inputs
% * has one output (here tests), an array of tests created by functiontests
% with the input localfunctions, collecting all local test functions into the array.
tests = functiontests(localfunctions);
end

function testMatFile_arrivalTimes_read_time_data(testCase)
% Local test function 
% * tests arrival times are extracted properly from MAT file containing 
% timestamps as datetime arrays
% * its name starts or ends with the case-insensitive word "test"
% * has a single input (here testCase).
    filename = "timestampsMilan.mat";
    [arrivalTimes, ~] = read_time_data(filename);
    data = load(filename);
    assertEqual(testCase, arrivalTimes, data.arrivalTimes)
end

function testMatFile_departureTimes_read_time_data(testCase)
% Local test function 
% * tests departure times are extracted properly from MAT file containing 
% timestamps as datetime arrays
    filename = "timestampsParis.mat";
    [~, departureTimes] = read_time_data(filename);
    data = load(filename);
    assertEqual(testCase, departureTimes, data.departureTimes)
end

function testCSVFile_arrivalTimes_read_time_data(testCase)
% Local test function 
% * tests departure times are extracted properly from CSV file containing 
% CSV file containing comma-separated column oriented datetime data
% as datetime arrays
    filename = "timestampsMilan.csv";
    [arrivalTimes, ~] = read_time_data(filename);
    timestamps = readtable(filename, Delimiter=",");
    assertEqual(testCase,arrivalTimes,timestamps.arrivalTimes)
end

function testCSVFile_departureTimes_read_time_data(testCase)
% Local test function 
% * tests departure times are extracted properly from CSV file containing 
% CSV file containing comma-separated column oriented datetime data
% as datetime arrays
    filename = "timestampsParis.csv";
    [~, departureTimes] = read_time_data(filename);
    timestamps = readtable(filename, Delimiter=",");
    assertEqual(testCase,departureTimes,timestamps.arrivalTimes)
end


[arrivalTimes, departureTimes] = read_time_data("timestampsMilan.csv");
[arrivalTimes, departureTimes] = read_time_data("timestampsParis.csv");
[arrivalTimes, departureTimes] = read_time_data("timestampsMilan.mat");
[arrivalTimes, departureTimes] = read_time_data("timestampsParis.mat");