classdef PlotParametersClass < handle
	%
	% ---------------------------------------------------------------------
	properties
		%
		% label
		iLabel;
		%
		bPlotSilently;
		%
		% print to file
		bSaveEpsFile;
		bSaveJpgFile;
		bSavePdfFile;
		strFiguresDirectory;
		iPdfOrEpsResolution;		% dots per inch
		iJpgResolution;
		bCropTheFigure;
		%
		% fonts
		iFontSize;
		strFontUnit;
		strFontName;
		strFontWeight;
		strFontAngle;
		strInterpreter;
		%
		% lines
		afPlotLineWidth;
		astrPlotLineStyle;
		aafPlotLineColor;
		afTickLengths;
		%
		% legend
		strLegendLocation;
		strLegendOrientation;
		afLegendBackgroundColor;
		afLegendEdgeColor;
		afLegendTextColor;
		bLegendBox;
		%
		% figure / axes positions
		afFigurePosition;
		afAxesPosition;
		%
		% LaTeX utilities
		strLaTeXDirectory;
		bCopyIntoLaTeXDirectory;
		%
	end %
	%
	%
	% ---------------------------------------------------------------------
	methods
		%
		% standard constructor
		function tPlotParameters = PlotParametersClass()
			%
			tPlotParameters.iLabel					= 1;
			%
			tPlotParameters.bPlotSilently			= true;
			%
			tPlotParameters.bSaveEpsFile			= false;
			tPlotParameters.bSaveJpgFile			= true;
			tPlotParameters.bSavePdfFile			= false;
			tPlotParameters.strFiguresDirectory		= '/home/damiano/Software/+WindRampsPackage/Results/Figures/';
%			tPlotParameters.strFiguresDirectory		= 'C:\Software\+WindRampsPackage\Results\Figures';
			tPlotParameters.iPdfOrEpsResolution		= 150;
			tPlotParameters.iJpgResolution			= 90;
			tPlotParameters.bCropTheFigure			= true;
			%
			tPlotParameters.iFontSize				= 22;
			tPlotParameters.strFontUnit				= 'points'; % [{points} | normalized | inches | centimeters | pixels]
			tPlotParameters.strFontName				= 'Times';  % [Times | Courier | Arial | ]              TODO complete the list
			tPlotParameters.strFontWeight			= 'normal'; % [light | {normal} | demi | bold]
			tPlotParameters.strFontAngle			= 'normal'; % [{normal} | italic | oblique]     ps: only for axes 
			tPlotParameters.strInterpreter			= 'tex';	% [{tex} | latex]
			%
			tPlotParameters.afPlotLineWidth			= [3.0, 2.3, 1.8, 1.1];
			tPlotParameters.astrPlotLineStyle		= [{'-.'}, {'--'}, {'-'}, {'--'}]; % NOTE: do not insert '.-' but '-.'
			tPlotParameters.aafPlotLineColor		= [[0.5 0.5 0.5] ; [0.3 0.3 0.3]; [0.0 0.0 0.0]; [0.2 0.2 0.2]]; % RGB
			tPlotParameters.afTickLengths			= [.02 .02];
			%
			tPlotParameters.strLegendLocation		= 'NE';				% combinations of N S E W B O or a vector
			tPlotParameters.strLegendOrientation	= 'vertical';		% [{vertical} horizontal]
			tPlotParameters.afLegendBackgroundColor	= 'none';			% RGB, 'none' => transparent
			tPlotParameters.afLegendEdgeColor		= [0.0 0.0 0.0];	% RGB
			tPlotParameters.afLegendTextColor		= [0.0 0.0 0.0];	% RGB
			tPlotParameters.bLegendBox				= 'off';			% [{'on'} 'off']
			%
			tPlotParameters.afFigurePosition		= [0 0 20 15];
			tPlotParameters.afAxesPosition			= [0.13 0.13 0.83 0.71];
			%
			tPlotParameters.strLaTeXDirectory		= '/home/damiano/Software/+WindRampsPackage/Documentation/Images/';
% 			tPlotParameters.strLaTeXDirectory		= 'C:\Software\+WindRampsPackage\Documentation\Images\';
			tPlotParameters.bCopyIntoLaTeXDirectory	= false;
			%
		end %
		%
	end %
	%
end %

