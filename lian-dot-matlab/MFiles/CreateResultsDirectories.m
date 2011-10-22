% CreateResultsDirectory.m


if( tParameters.bSaveResults )
	%
	%
	% -----------------------------------------------------------
	% creation of the directory for storing the mat files
	[bDirectorySuccesfullyCreated, strMessage, strMessageID] =		...
		mkdir( tParameters.strResultingMatFilesDirectory );
	%
	if( bDirectorySuccesfullyCreated == false )
		%
		error( sprintf('!! Error creating directory for storing mat-files !!\n\nmessage: %s\n\nmessage ID: %s', ...
				strMessage, strMessageID) );
		%
	end;%
	%
	fprintf('The following directory has just been created:\n\t%s\n',	...
			tParameters.strResultingMatFilesDirectory);
	%
	WriteExperimentDescriptionFile( tParameters.strResultingMatFilesDirectory,	...
									tParameters	);
	%
	%
	% -----------------------------------------------------------
	% creation of the directory for storing the figures
	[bDirectorySuccesfullyCreated, strMessage, strMessageID] =		...
		mkdir( tParameters.strResultingFiguresDirectory );
	%
	if( bDirectorySuccesfullyCreated == false )
		%
		error( sprintf('!! Error creating directory for storing figures !!\n\nmessage: %s\n\nmessage ID: %s', ...
				strMessage, strMessageID) );
		%
	end;%
	%
	fprintf('The following directory has just been created:\n\t%s\n', ...
			tParameters.strResultingFiguresDirectory );
	%
	WriteExperimentDescriptionFile( tParameters.strResultingFiguresDirectory,	...
									tParameters	);
	%
	%
	%
	% cleaning
	clear bDirectorySuccesfullyCreated;
	clear strMessage;
	clear strMessageID;
	%
end;%

