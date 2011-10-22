classdef TimeToCompletionForecastingClass < handle
	%
	% ---------------------------------------------------------------------
	properties
		%
		fStartingTime;
		fCurrentTime;
		%
		iForecastedSecondsToCompletion;
		iForecastedMinutesToCompletion;
		iForecastedHoursToCompletion;
		%
	end %
	%
	%
	%
	% ---------------------------------------------------------------------
	methods
		%
		% standard constructor
		function tTimeToCompletionForecaster = TimeToCompletionForecastingClass()
			%
			tTimeToCompletionForecaster.fStartingTime					= 0;
			tTimeToCompletionForecaster.fCurrentTime					= 0;
			tTimeToCompletionForecaster.iForecastedSecondsToCompletion	= 0;
			tTimeToCompletionForecaster.iForecastedMinutesToCompletion	= 0;
			tTimeToCompletionForecaster.iForecastedHoursToCompletion	= 0;
			%
		end %
		%
	end %
	%
	%
end %
