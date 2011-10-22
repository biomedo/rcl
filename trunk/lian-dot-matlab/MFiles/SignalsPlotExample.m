if( tParameters.tPlotsFlags.bPlotMyFigure )
	%
	%
	% ---------------------------------------------------------------------
	if( tParameters.tPlots.bPlotSilently );
		figure( 'Visible', 'off' );
	else
		figure( tParameters.tPlotsLabels.iMyFigureLabel );
		refresh( tParameters.tPlotsLabels.iMyFigureLabel );
	end;
	hold on;
	grid on;
	%
	%
	% ---------------------------------------------------------------------
	aHandle(1) = plot(	tResults.afMySignal,											...
						'LineStyle',	tParameters.tPlots.astrPlotLineStyle{1},		...
						'LineWidth',	tParameters.tPlots.afPlotLineWidth(1),		...
						'Color',		tParameters.tPlots.aafPlotLineColor(1,:) );
	%
	%
	% ---------------------------------------------------------------------
	set(gca, 												...
		'XLim',			[0, 2],								...
		'YLim',			[0, 1],								...
		'XTick',		0.5:0.5:2,							...
		'YTick',		0:0.2:1,							...
		'TickLength',	tParameters.tPlots.afTickLengths,	... length of the ticks
		'FontName',		tParameters.tPlots.strFontName,     ... kind of fonts of labels
		'FontSize',		tParameters.tPlots.iFontSize,       ... size of fonts of labels
		'FontUnits',	tParameters.tPlots.strFontUnit,     ... units of the size of fonts
		'FontWeight',	tParameters.tPlots.strFontWeight,   ... weight of fonts of labels
		'FontAngle',	tParameters.tPlots.strFontAngle);%  ... inclination of fonts of labels
	%
	%
	% ---------------------------------------------------------------------
	title(													...
		'title',											...
		'Interpreter',	tParameters.tPlots.strInterpreter,	...
		'FontName',		tParameters.tPlots.strFontName,     ... kind of fonts of labels
		'FontSize',		tParameters.tPlots.iFontSize,       ... size of fonts of labels
		'FontUnits',	tParameters.tPlots.strFontUnit,     ... units of the size of fonts
		'FontWeight',	tParameters.tPlots.strFontWeight,   ... weight of fonts of labels
		'FontAngle',	tParameters.tPlots.strFontAngle);%  ... inclination of fonts of labels
	xlabel(													...
		'my x label',										...
		'Interpreter',	tParameters.tPlots.strInterpreter,	...
		'FontName',		tParameters.tPlots.strFontName,     ... kind of fonts of labels
		'FontSize',		tParameters.tPlots.iFontSize,       ... size of fonts of labels
		'FontUnits',	tParameters.tPlots.strFontUnit,     ... units of the size of fonts
		'FontWeight',	tParameters.tPlots.strFontWeight,   ... weight of fonts of labels
		'FontAngle',	tParameters.tPlots.strFontAngle);%  ... inclination of fonts of labels
	ylabel(													...
		'my y label',										...
		'Interpreter',	tParameters.tPlots.strInterpreter,	...
		'FontName',		tParameters.tPlots.strFontName,     ... kind of fonts of labels
		'FontSize',		tParameters.tPlots.iFontSize,       ... size of fonts of labels
		'FontUnits',	tParameters.tPlots.strFontUnit,     ... units of the size of fonts
		'FontWeight',	tParameters.tPlots.strFontWeight,   ... weight of fonts of labels
		'FontAngle',	tParameters.tPlots.strFontAngle);%  ... inclination of fonts of labels
	%
	%
	% ---------------------------------------------------------------------
	astrArrayOfLabels = [{'legenda'}];
	legend( aHandle,													...
			astrArrayOfLabels,											...
			'Location',		tParameters.tPlots.strLegendLocation,		...
			'Orientation',	tParameters.tPlots.strLegendOrientation,	...
			'Box',			tParameters.tPlots.bLegendBox,				...
			'Color',		tParameters.tPlots.afLegendBackgroundColor,	...
			'EdgeColor',	tParameters.tPlots.afLegendEdgeColor,		... 
			'TextColor',	tParameters.tPlots.afLegendTextColor,		... 
			'Interpreter',	tParameters.tPlots.strInterpreter);
	%
	%
	% ---------------------------------------------------------------------
	set(gcf, 'Units',				'centimeters');
	set(gcf, 'PaperPositionMode',	'auto');
	set(gcf, 'Position',			tParameters.tPlots.afFigurePosition);
	set(gca, 'Units',				'normalized',	...		for latex interpreter usage, workaround due to matlab bugs - notice that matlab's displayed figure will be wrong BUT the .pdf file will be correct
			 'Position',			tParameters.tPlots.afAxesPosition);
	%
	%
	% ---------------------------------------------------------------------
	if(		tParameters.tPlots.bSaveEpsFile	...
		||	tParameters.tPlots.bSaveJpgFile	...
		||	tParameters.tPlots.bSavePdfFile	)
		%
		strFigureName	= 'MyFigure';
		strFilePath		= sprintf('%s/%s', tParameters.tPlots.strFiguresDirectory, strFigureName);
		%
		if(		tParameters.tPlots.bSaveEpsFile	...
			||	tParameters.tPlots.bSavePdfFile	)
			%
			set(gcf, 'PaperPositionMode', 'auto');
			%
			if( tParameters.tPlots.bCropTheFigure )
				%
				print('-depsc2', sprintf('-r%d', tParameters.tPlots.iPdfOrEpsResolution), strcat(strFilePath, '.eps'));
				%
			else%
				%
				print('-depsc2', '-loose', sprintf('-r%d', tParameters.tPlots.iPdfOrEpsResolution), strcat(strFilePath, '.eps'));
				%
			end;%
			%
			%
			if( tParameters.tPlots.bSavePdfFile )
				%
				system(																		...
				  sprintf(																	...
					'epstopdf --outfile=%s.pdf  %s.eps',									...
...					'epstopdf --gsopt=-dPDFSETTINGS=/prepress --outfile=%s.pdf  %s.eps',	...
					strFilePath,															...
					strFilePath));
			end;
			%
			%
			if( ~tParameters.tPlots.bSaveEpsFile )
				%
				delete(sprintf('%s.eps', strFilePath));
				%
			end;%
			%
		end;% if print on eps or pdf files
		%
		%
		if( tParameters.tPlots.bSaveJpgFile )
			%
			print(	sprintf('-djpeg%d', tParameters.tPlots.iJpgResolution),	...
					strcat(strFilePath, '.jpg'));
			%
		end;%
		%
		%
		if( tParameters.tPlots.bCopyIntoLaTeXDirectory )
			%
			system(	sprintf( 'cp ./%s/%s.pdf %s',			...
					tParameters.tPlots.strFiguresDirectory,	...
					strFigureName,							...
					tParameters.tPlots.strLaTeXImagesDirectory ));
			%
		end;% if copy into latex directory
		%
		%
		clear strFigureName;
		clear strFilePath;
		%
		%
	end;% if save resulting figure
	%
	%
	clear aHandle;
	clear astrArrayOfLabels;
	%
	%
end;%
