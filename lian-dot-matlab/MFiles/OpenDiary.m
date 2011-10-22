if( tParameters.bActivateDiaryFile )
	%
	strDiaryFileName = sprintf( '../Results/diary.%s.txt', tParameters.strCurrentDate );
	%
	diary(strDiaryFileName);
	%
	diary on;
	%
	clear strDiaryFileName;
	%
end;%
