% This file is part of the project CLASS (https://github.com/beckel/class).
% Licence: GPL 2.0 (http://www.gnu.org/licenses/gpl-2.0.html)
% Copyright: ETH Zurich & TU Darmstadt, 2012
% Authors: Christian Beckel (beckel@inf.ethz.ch), Leyna Sadamori (sadamori@inf.ethz.ch)

function sClass = class_aoi(option)
	if (nargin == 0)
		sClass.classes = { ...
			'Very Low', ...
			'Low', ...
			'High', ...
			'Very high', ...
			};
		sClass.constr = { ...
			'AOI < 22.5', ...
			'AOI BETWEEN 22.5 AND 28.5', ...
			'AOI BETWEEN 28.5 AND 34', ...
			'AOI > 34', ...
			};
	elseif (nargin == 1)
		if (strcmp(option, 'name'))
			sClass = 'AOI';
		else
			error('This option is not supported');
		end
	end
end
