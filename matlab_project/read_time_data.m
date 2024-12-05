function [arrivalTimes, departureTimes] = read_time_data(filename)
%% Extract arrivalTimes and departureTimes from input file
arguments
    filename {mustBeFile,mustHaveSpecificExtension(filename)}
end

% Get file extension
[~,~,ext] = fileparts(filename);

% Extract entryTimestamps and exitTimestamps based on the type of file
switch ext
    case ".mat"
        %% Input file is a binary MATLAB file.
        % MAT file contains timestamps in a structure with numeric
        % date vectors instead of directly datetime vectors
        data = load(filename);
    case ".csv"
        %% Input file is a comma-separated value text file containing
        % comma-separated column oriented data. Create table by reading the
        % column oriented data from the text file
        data = readtable(filename, Delimiter=",");
end

arrivalTimes = datetime(data.arrivalTimes);
departureTimes = datetime(data.departureTimes);

end

% Custom input validation function
function mustHaveSpecificExtension(filename)
% Get file extension
[~,~,ext] = fileparts(filename);
if ext ~= ".mat" && ext ~= ".csv"
    errorID = "extractTimestmps:WrongExtension";
    errorMessage = "The input file should be a binary MAT file or a CSV text file.";
    throwAsCaller(MException(errorID,errorMessage))
end
end

