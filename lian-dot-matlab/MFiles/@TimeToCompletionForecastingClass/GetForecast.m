function strForecastedTimeToCompletion =		...
			GetForecast(	tForecaster,		...
							fCompletedPercentage )
	%
	%
	% compute the current time
	tForecaster.fCurrentTime = toc;
	%
	%
	% ---------------------------------------------------------
	% compute how many seconds are needed to the completion
	tForecaster.iForecastedSecondsToCompletion =	...
		floor(										...
				(									...
					tForecaster.fCurrentTime		...
					/								...
					fCompletedPercentage			...
				)									...
				-									...
				tForecaster.fCurrentTime			...
			);
	%
	%
	% ---------------------------------------------------------
	% transform them in minutes
	tForecaster.iForecastedMinutesToCompletion =		...
		floor( tForecaster.iForecastedSecondsToCompletion / 60 );
	%
	% transform them in hours
	tForecaster.iForecastedHoursToCompletion	=		...
		floor( tForecaster.iForecastedMinutesToCompletion / 60 );
	%
	%
	% remove the hours from the minutes
	tForecaster.iForecastedMinutesToCompletion =	...
		tForecaster.iForecastedMinutesToCompletion	...
		-											...
		tForecaster.iForecastedHoursToCompletion * 60;
	%
	% remove the minutes and the hours from the seconds
	tForecaster.iForecastedSecondsToCompletion =			...
		tForecaster.iForecastedSecondsToCompletion			...
		-													...
		tForecaster.iForecastedMinutesToCompletion * 60		...
		-													...
		tForecaster.iForecastedHoursToCompletion * 60 * 60;
	%
	%
	%
	% ---------------------------------------------------------
	% build significant strings for the time to completion
	%
	if( tForecaster.iForecastedHoursToCompletion < 10 )
		%
		strForecastedHoursToCompletion = sprintf('0%d', tForecaster.iForecastedHoursToCompletion);
		%
	else%
		%
		strForecastedHoursToCompletion = sprintf('%d', tForecaster.iForecastedHoursToCompletion);
		%
	end;%
	%
	if( tForecaster.iForecastedMinutesToCompletion < 10 )
		%
		strForecastedMinutesToCompletion = sprintf('0%d', tForecaster.iForecastedMinutesToCompletion);
		%
	else%
		%
		strForecastedMinutesToCompletion = sprintf('%d', tForecaster.iForecastedMinutesToCompletion);
		%
	end;%
	%
	if( tForecaster.iForecastedSecondsToCompletion < 10 )
		%
		strForecastedSecondsToCompletion = sprintf('0%d', tForecaster.iForecastedSecondsToCompletion);
		%
	else%
		%
		strForecastedSecondsToCompletion = sprintf('%d', tForecaster.iForecastedSecondsToCompletion);
		%
	end;%
	%
	%
	% ---------------------------------------------------------
	strForecastedTimeToCompletion =						...
		sprintf(	'%s:%s:%s',							...
					strForecastedHoursToCompletion,		...
					strForecastedMinutesToCompletion,	...
					strForecastedSecondsToCompletion	);
	%
	%
end %


