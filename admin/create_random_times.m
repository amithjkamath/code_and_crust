% Generate a random time (down to granularity of seconds)
% Parameters
NUMBER_RANDOM_TIMES = 890;
SECONDS_PER_DAY = 24*60*60;
START_DATE = '2023-01-01';
END_DATE   = '2023-12-31';
% Algorithm
startDateNum = datenum(START_DATE,'yyyy-mm-dd');
endDateNum   = datenum(END_DATE,  'yyyy-mm-dd');
dayRange = endDateNum - startDateNum;
secondsRange = SECONDS_PER_DAY*dayRange;
randomNumberOfSeconds = randi(secondsRange,NUMBER_RANDOM_TIMES,1);
randomStartDatenums = startDateNum + randomNumberOfSeconds/SECONDS_PER_DAY;
departureTimes = datetime(randomStartDatenums, 'ConvertFrom', 'datenum');

imin = 3*60*60 + 05*60;
imax = 7*60*60 + 48*60;
randomDurations = imin + randi(imax - imin, NUMBER_RANDOM_TIMES, 1);
randomEndDatenums = startDateNum + randomNumberOfSeconds/SECONDS_PER_DAY + randomDurations/SECONDS_PER_DAY;
arrivalTimes = datetime(randomEndDatenums, 'ConvertFrom', 'datenum');

timestampsMilan = table(departureTimes, arrivalTimes);
writetable(timestampsMilan, "timestampsParis.csv")