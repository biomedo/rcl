fprintf('Starting the plotting of the results...\n');


% possible override
if( ~tParameters.bSaveResults )
	%
	tParameters.tPlots.bSaveEpsFile	= false;
	tParameters.tPlots.bSaveJpgFile	= false;
	tParameters.tPlots.bSavePdfFile	= false;
	%
end;%


% load the settings
tParameters.tPlots.strFiguresDirectory	= tParameters.strResultingFiguresDirectory;
tParameters.tPlots.strLaTeXDirectory	= tParameters.strLaTeXImagesDirectory;


% print the various results
SignalsPlotExample;


fprintf('Plotting of the results ended\n\n');
