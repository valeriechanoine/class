% This file is part of the project CLASS (https://github.com/beckel/class).
% Licence: GPL 2.0 (http://www.gnu.org/licenses/gpl-2.0.html)
% Copyright: ETH Zurich & TU Darmstadt, 2012
% Authors: Christian Beckel (beckel@inf.ethz.ch), Leyna Sadamori (sadamori@inf.ethz.ch)

% morning consumption (cons_morning) / noon consumption (cons_noon) on weekdays
function feature = ratio_morning_noon(consumption)
    if (strcmp(consumption, 'dim'))
		feature = 7;
	elseif (strcmp(consumption, 'input_dim'))
        feature = 48*7;
    else
		feature = zeros(7,1);
        for i=1:7
            
            startMorning = (i-1) * 48 + 13;
            stopMorning = (i-1) * 48 + 20;
            morning = mean(consumption(startMorning:stopMorning));
            
            startNoon = (i-1) * 48 + 21;
            stopNoon = (i-1) * 48 + 28;
            noon = mean(consumption(startNoon:stopNoon));
            
            % feature(i) = log((morning / noon));
            feature(i) = morning / noon;
            
        end
    end
end 
