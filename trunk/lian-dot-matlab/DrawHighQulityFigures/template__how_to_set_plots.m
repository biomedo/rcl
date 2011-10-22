% we set the plots properties
%
% notes:
% - each property is actually an array of properties;
%
% line styles:  [{-} | -- | : | -.]
% marker types: [+ | o | * | . | x | square | diamond | > | ...
%                ... < | ^ | v | pentagram | hexagram | {none}]
%
% -- lines
afPlotLineWidth         = [2.0, 1.3];
astrPlotLineStyle       = [{'-.'}, {':'}]; % NOTE: do not insert '.-' but '-.'
aafPlotLineColor        = [[0.1 0.1 0.1] ; [0.2 0.2 0.2]]; % RGB
%
% -- markers
aiPlotMarkerSize        = [25, 21]; % in points
astrPlotMarkerType      = [{'.'}, {'x'}];
aafPlotMarkerFaceColor  = [[0.1 0.1 0.1] ; [0.2 0.2 0.2]]; % RGB
aafPlotMarkerEdgeColor  = [[0.3 0.3 0.3] ; [0.4 0.4 0.4]]; % RGB


% we want to plot several curves
hold on;
%
% here you can plot several plots (each can have its properties)
% note: it is convenient to store the handles to the single plots
% in order to easily manage legends
%
handleToPlot1 = plot(                               ...
    afX1,                                           ...
    afY1,                                           ...
    'LineStyle',       astrPlotLineStyle{1},        ...
    'LineWidth',       afPlotLineWidth(1),          ...
    'Color',           aafPlotLineColor(1,:),       ...
    'Marker',          astrPlotMarkerType{1},       ...
    'MarkerSize',      aiPlotMarkerSize(1),         ...
    'MarkerFaceColor', aafPlotMarkerFaceColor(1,:), ...
    'MarkerEdgeColor', aafPlotMarkerEdgeColor(1,:));
%
handleToPlot2 = plot(                               ...
    afX2,                                           ...
    afY2,                                           ...
    'LineStyle',       astrPlotLineStyle{2},        ...
    'LineWidth',       afPlotLineWidth(2),          ...
    'Color',           aafPlotLineColor(2,:),       ...
    'Marker',          astrPlotMarkerType{2},       ...
    'MarkerSize',      aiPlotMarkerSize(2),         ...
    'MarkerFaceColor', aafPlotMarkerFaceColor(2,:), ...
    'MarkerEdgeColor', aafPlotMarkerEdgeColor(2,:));
