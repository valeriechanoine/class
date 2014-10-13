% This file is part of the project CLASS (https://github.com/beckel/class).
% Licence: GPL 2.0 (http://www.gnu.org/licenses/gpl-2.0.html)
% Copyright: ETH Zurich & TU Darmstadt, 2012
% Authors: Christian Beckel (beckel@inf.ethz.ch), Leyna Sadamori (sadamori@inf.ethz.ch)

function sClass = class_usage_tvs_large(option)
	if (nargin == 0)
		sClass.classes = { ...
			'Low', ...
			'Medium', ...
			'High', ...
			}; 
		sClass.constr = { ...
			'(PreTrial_Answers.Q111 BETWEEN 1 AND 2)', ...
			'(PreTrial_Answers.Q111 = 3)', ...
			'(PreTrial_Answers.Q111 = 4)', ...
			};
	elseif (nargin == 1)
		if (strcmp(option, 'name'))
			sClass = 'Usage_TVs_Large';
		else
			error('This option is not supported');
		end
	end
end