% This file is part of the project CLASS (https://github.com/beckel/class).
% Licence: GPL 2.0 (http://www.gnu.org/licenses/gpl-2.0.html)
% Copyright: ETH Zurich & TU Darmstadt, 2012
% Authors: Christian Beckel (beckel@inf.ethz.ch), Leyna Sadamori (sadamori@inf.ethz.ch)

% average consumption during night (01am - 5am)
function feature = cons_night(consumption)

    N = length(consumption);
    D = N/7;
    
    for i=1:7
        start = (i-1) * D + 1/24*D+1;
        stop = (i-1) * D + 5/24*D;
        indices = start : stop;
        feature(i) = mean(consumption(indices));
    end
end 
   