function average = myAverage(inputs)
%myAverage Summary of this function goes here
%   Detailed explanation goes here
% 
% Input arguments that the function takes
%   inputs
% 
% Output arguments that the function returns
%   average

% Sequence of statements performing computations on the function inputs
% and returning results as the function outputs
average = 0; % Initialize ad to 0
for ii = 1:1000
    average = average + inputs(ii);
end
average = average/1000;

end

