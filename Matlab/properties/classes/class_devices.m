% This file is part of the project CLASS (https://github.com/beckel/class).
% Licence: GPL 2.0 (http://www.gnu.org/licenses/gpl-2.0.html)
% Copyright: ETH Zurich & TU Darmstadt, 2012
% Authors: Christian Beckel (beckel@inf.ethz.ch), Leyna Sadamori (sadamori@inf.ethz.ch)

function sClass = class_devices(option)
	if (nargin == 0)
		sClass.classes = { ...
			'Low', ...
			'Mid', ...
			'High', ...
			};
		sClass.constr = { ...
			'(Appliances + Entertainment <= 8)', ...
			'((Appliances + Entertainment > 8) AND (Appliances + Entertainment <= 11))', ...
			'(Appliances + Entertainment > 11)', ...
			};
	elseif (nargin == 1)
		if (strcmp(option, 'name'))
			sClass = 'Devices';
		else
			error('This option is not supported');
		end
	end
end