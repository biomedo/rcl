% LoadParameters.m
%
% Load all the parameters needed for the consequent computations



% <---



% ----------------------------------------------------------------------- %
% RESULTS SAVINGS
%
% parameters relative to results savings
tParameters.bSaveResults		= false;
tParameters.bActivateDiaryFile	= false;



% ----------------------------------------------------------------------- %
% PLOT SETTINGS
%
tParameters.tPlots = PlotParametersClass();
%
tParameters.tPlotsFlags.bPlotMyFigure	= true;
tParameters.tPlotsLabels.iMyFigureLabel	= 100;



% ----------------------------------------------------------------------- %
% DIRECTORIES
%
% generation of the string containing the current data
tParameters.strCurrentDate = GenerateCurrentDateString;
%
% setting the names of directories where mat-files and figures will be stored
tParameters.strResultingMatFilesDirectory	= sprintf('../Results/MatFiles/%s', tParameters.strCurrentDate);
tParameters.strResultingFiguresDirectory	= sprintf('../Results/Figures/%s', tParameters.strCurrentDate);
%
% LaTeX usage
tParameters.strLaTeXImagesDirectory			= '../../Article/Images/';



% ----------------------------------------------------------------------- %
% MAIL ALERTS
%
% generation of mail alerts when computations are finished
tParameters.bEnableMailAlert		= false;
tParameters.strEMailAddress			= 'damiano.varagnolo@dei.unipd.it';
tParameters.strSmtpServer			= 'mail.dei.unipd.it';
tParameters.bSendFiguresViaMail		= true;
tParameters.bSendMatFilesViaMail	= true;



% ----------------------------------------------------------------------- %
fprintf('Parameters succesfully loaded.\n');



