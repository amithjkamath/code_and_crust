function average = myAverage(durations)
%myAverage 
%   This function computes the average value in input array.
% 
% Input arguments that the function takes
%   durations
% 
% Output arguments that the function returns
%   average

num_durations = numel(durations);
average = 0.0;

for ii = 1:num_durations
    average = average + durations(ii);
end
average = average/num_durations;

end