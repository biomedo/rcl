% we set the legend properties; note:
%
%
% Locations could be [N S E W {NE} NW SE SW NO SO EO WO NEO NWO SEO SWO B BO]
% where the characters have the following meanings:
% - N = North
% - S = South
% - E = East
% - W = West
% - O = Outside the plot
% - B = Best (least conflict with data in plot)
% OR you can also specify an 1-by-4 position vector ([left bottom width height])
%
%
% The following properties are inherited when specified in "set(gca, ...)":
% - FontName
% - FontSize
% - FontUnits
% - FontWeight
% - FontAngle
% - LineWidth
%
atArrayOfHandlesToLines = [handleToFirstLine; handleToSecondLine; handleToThirdLine];
astrArrayOfLabels       = [{'first line'}; {'second line'}; {'third line'}];
%
strLegendLocation       = 'Best';     % combinations of N S E W B O or a vector
strLegendOrientation    = 'vertical'; % [{vertical} horizontal]
%
afEdgeColor             = [0.0 0.0 0.0]; % RGB
afTextColor             = [0.0 0.0 0.0]; % RGB
%
strInterpreter          = 'latex';    % [{tex} | latex | none]
%
%
legend( atArrayOfHandlesToLines,                     ...
        astrArrayOfLabels,                           ...
        'Location',           strLegendLocation,     ...
        'Orientation',        strLegendOrientation,  ...
        'Box',                'off',                 ... [{on} off]
        'Color',              'none',                ... none => transparent
        'EdgeColor',          afEdgeColor,           ... 
        'TextColor',          afTextColor,           ... 
        'Interpreter',        strInterpreter);
