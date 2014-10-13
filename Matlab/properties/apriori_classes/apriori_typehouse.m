% This file is part of the project CLASS (https://github.com/beckel/class).
% Licence: GPL 2.0 (http://www.gnu.org/licenses/gpl-2.0.html)
% Copyright: ETH Zurich & TU Darmstadt, 2012
% Authors: Christian Beckel (beckel@inf.ethz.ch), Leyna Sadamori (sadamori@inf.ethz.ch)

function sClass = apriori_typehouse(option)
	if (nargin == 0)
		sClass.classes = { ...
			'Semi-Detatched', ...
			'Detatched', ...
			'Terraced', ...
			'Bungalow', ...
			};
		sClass.constr = { ...
			'House_Type = 2', ...
			'House_Type = 3', ...
			'House_Type = 4', ...
			'House_Type = 5', ...
			};
% 		sClass.classes = { ...
% 			'Apartment', ...
% 			'Semi-Detatched', ...
% 			'Detatched', ...
% 			'Terraced', ...
% 			'Bungalow', ...
% 			};
% 		sClass.constr = { ...
% 			'House_Type = 1', ...
% 			'House_Type = 2', ...
% 			'House_Type = 3', ...
% 			'House_Type = 4', ...
% 			'House_Type = 5', ...
% 			};
	elseif (nargin == 1)
		if (strcmp(option, 'name'))
			sClass = 'House_Type';
		else
			error('This option is not supported');
		end
	end
end