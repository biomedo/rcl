function WriteExperimentDescriptionFile( strTargetDirectory, tParameters )
	%
	%
	strExperimentDescriptionFilePath =					...
		sprintf('%s/ExperimentDescription.txt',			...
				strTargetDirectory);
	%
	%
	tExperimentDescriptionFile = fopen(strExperimentDescriptionFilePath, 'w+');
	%
	%
	fprintf(tExperimentDescriptionFile,	'INSERT HERE WHAT YOU WANT\n');
	%
	%
	fclose(tExperimentDescriptionFile);
	%
	%
end %
