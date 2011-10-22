% fonts properties
iFontSize      = 20;
strFontUnit    = 'points'; % [{points} | normalized | inches | centimeters | pixels]
strFontName    = 'Times';  % [Times | Courier | ]                 TODO complete the list
strFontWeight  = 'normal'; % [light | {normal} | demi | bold]
strFontAngle   = 'normal'; % [{normal} | italic | oblique]     ps: only for axes 
strInterpreter = 'latex';  % [{tex} | latex]
%
strXLabel      = 'label of x axis';
strYLabel      = 'label of y axis';
%
fXLabelRotation = 0.0;
fYLabelRotation = 90.0;



xlabel( strXLabel,                       ...
        'FontName',     strFontName,     ...
        'FontUnit',     strFontUnit,     ...
        'FontSize',     iFontSize,       ...
        'FontWeight',   strFontWeight,   ...
        'Interpreter',  strInterpreter);
%
ylabel( strYLabel,                       ...
        'FontName',     strFontName,     ...
        'FontUnit',     strFontUnit,     ...
        'FontSize',     iFontSize,       ...
        'FontWeight',   strFontWeight,   ...
        'Interpreter',  strInterpreter);
%
set(get(gca, 'XLabel'), 'Rotation', fXLabelRotation);
set(get(gca, 'YLabel'), 'Rotation', fYLabelRotation);



% in order to make matlab to do not "cut" latex-interpreted axes labels
set(gca, 'Units',    'normalized', ...
         'Position', [0.15 0.2 0.75 0.7]);
