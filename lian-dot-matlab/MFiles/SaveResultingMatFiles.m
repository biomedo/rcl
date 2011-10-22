% SaveResultingMatFiles.m


if( tParameters.bSaveResultingMatFiles )
	%
	strFilePath = sprintf( '%s/results.mat', tParameters.strResultingMatFilesDirectory );
	%
	save(	strFilePath,								...
			...
			... computation parameters
			'tParameters',								...
			...
			... saving format
			'-V6');
	%
	fprintf('\nThe mat-file containing the results has been saved in:\n\t %s/results.mat\n',	...
			tParameters.strResultingMatFilesDirectory);
	%
	% cleaning
	clear strFilePath;
	%
else%
	%
	fprintf('\nResults have not been saved.\n\n');
	%
end;%

