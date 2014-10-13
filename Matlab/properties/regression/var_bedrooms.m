% This file is part of the project CLASS (https://github.com/beckel/class).
% Licence: GPL 2.0 (http://www.gnu.org/licenses/gpl-2.0.html)
% Copyright: ETH Zurich & TU Darmstadt, 2012
% Authors: Christian Beckel (beckel@inf.ethz.ch), Leyna Sadamori (sadamori@inf.ethz.ch)

function var = var_bedrooms(option)
	if (nargin == 0)
        var.classes = { ...
			'No. of Bedrooms', ...
			}; 
		var.constr = { ...
			'Bedrooms BETWEEN 1 AND 5', ...
			};
        var.value = { ...
            'Bedrooms', ...
            };        
	elseif (nargin == 1)
		if (strcmp(option, 'name'))
			var = 'Bedrooms';
		else
			error('This option is not supported');
		end
	end
end