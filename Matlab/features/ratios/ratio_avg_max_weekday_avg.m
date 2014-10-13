% This file is part of the project CLASS (https://github.com/beckel/class).
% Licence: GPL 2.0 (http://www.gnu.org/licenses/gpl-2.0.html)
% Copyright: ETH Zurich & TU Darmstadt, 2012
% Authors: Christian Beckel (beckel@inf.ethz.ch), Leyna Sadamori (sadamori@inf.ethz.ch)

% average consumption / maximum consumption - weekday average
function feature = ratio_avg_max_weekday_avg(consumption)
	if strcmp(consumption, 'dim') == 1
		feature = 1;
    else
        if consumption.granularity ~= 30
            error('30-minute granularity required');
        end
        
        num_weeks = length(consumption.weekly_traces);
        weekly_averages = zeros(1,num_weeks);
        for i=1:num_weeks
            trace = consumption.weekly_traces{i};
            average = cons_wholeday(trace);
            maximum = cons_max(trace);
            tmp = average ./ maximum;
            weekly_averages(i) = mean(tmp(1:5));
        end
        
        feature = mean(weekly_averages);
        
        if feature > 0.5
            feature = 0.5;
        end
        
        feature = log(feature);
    end
end
   