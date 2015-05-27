% This file is part of the project CLASS (https://github.com/beckel/class).
% Licence: GPL 2.0 (http://www.gnu.org/licenses/gpl-2.0.html)
% Copyright: ETH Zurich & TU Darmstadt, 2012
% Authors: Christian Beckel (beckel@inf.ethz.ch), Leyna Sadamori (sadamori@inf.ethz.ch)

function feat_set = feature_set_hourly(option)
	if (nargin == 0)
		feat_set = {...
                    @cons_day_avg, ...
                    @cons_day_weekday_avg, ...
                    @cons_evening_weekday_avg, ...
                    @cons_morning_weekday_avg, ...
                    @cons_night_weekday_avg, ...
                    @cons_noon_weekday_avg, ...
                    @cons_weekday_avg, ...
                    @cons_weekend_avg, ...
                    @diss.features.hourly_max_cons_avg, ...
            		@diss.features.hourly_min_cons_avg, ...
                    @diss.features.hourly_ratio_avg_max_weekday_avg, ...
                    @ratio_evening_noon_weekday_avg, ...
                    @diss.features.hourly_ratio_min_avg_weekday_avg, ...
                    @ratio_noon_day_weekday_avg, ...
                    @ratio_morning_noon_weekday_avg, ...
                    @ratio_night_day_weekday_avg, ...
                    @ratio_workday_weekend, ...
                    @diss.features.hourly_consumption_variability_weekday_avg, ...
                    @diss.features.hourly_num_peaks_weekday_avg, ...
                    @diss.features.hourly_variance_weekday_avg, ...
                    @diss.features.hourly_consumption_above_500_weekday_avg, ...
                    @diss.features.hourly_consumption_above_1000_weekday_avg, ...
                    @diss.features.hourly_consumption_above_2000_weekday_avg, ...
                    @diss.features.hourly_cross_correlation_weekday_avg, ...
                    @diss.features.hourly_time_above_mean_weekday_avg, ...
		};
 	elseif (nargin == 1)
		if (strcmp(option, 'name'))
			feat_set = 'all';
		else
			error('This option is not supported');
		end
	end
end