% annotation type
%
% ------------------------------------------------------------------------
% |     kind of annotation    |           required arguments             |
% ------------------------------------------------------------------------
% |  line arrow doublearrow   |       starting_point ending_point        |
% | textbox ellipse rectangle | starting_point ending_point width height |
% ------------------------------------------------------------------------
strAnnotationType = 'line';
%
% arguments
afStartingPoint = [1, 2];
afEndingPoint   = [8, 4];
fWidth          = 10;      % could be not necessary
fHeight         = 3;       % could be not necessary


% (p1): we obtain the position of the axes inside the figure
%
% we use normalized units of measure (i.e. figure reference system has coordinates
% between 0 and 1)
set(gcf, 'Units', 'normalized');
%
afXAxisLimits                 = get(gca, 'XLim');
afYAxisLimits                 = get(gca, 'YLim');
%
afAxesDimensionsAndPositions  = get(gca, 'Position');
fXAxisPosition                = afAxesDimensionsAndPositions(1);
fYAxisPosition                = afAxesDimensionsAndPositions(2);
fXAxisLength                  = afAxesDimensionsAndPositions(3);
fYAxisLength                  = afAxesDimensionsAndPositions(4);
fXonYAxesRatio                = fXAxisLength / fYAxisLength;
%
afFigurePosition              = get(gcf, 'Position'); % [left bottom width height]
fXonYDimensionRatio           = afFigurePosition(3) / afFigurePosition(4);


% (p2): convert the axes measurement units into the figure measurement units
afStartingPoint_FU(1) =  ( afStartingPoint(1) - afXAxisLimits(1) )
                       / ( afXAxisLimits(2) - afXAxisLimits(1) )
                       * fXAxisLength + fXAxisPosition;
afStartingPoint_FU(2) =  ( afStartingPoint(2) - afYAxisLimits(1) )
                       / ( afYAxisLimits(2) - afYAxisLimits(1) )
                       * fYAxisLength + fYAxisPosition;
afEndingPoint_FU(1)   =  ( afEndingPoint(1)   - afXAxisLimits(1) )
                       / ( afXAxisLimits(2) - afXAxisLimits(1) )
                       * fXAxisLength + fXAxisPosition;
afEndingPoint_FU(2)   =  ( afEndingPoint(2)   - afYAxisLimits(1) )
                       / ( afYAxisLimits(2) - afYAxisLimits(1) )
                       * fYAxisLength + fYAxisPosition;


% we plot the annotation
handleToAnnotation1 = annotation(                  ...
... handleToFigure,                                ... uncomment if necessary
    strAnnotationType,                             ...
    [afStartingPoint_FU(1) afEndingPoint_FU(1)],   ...
    [afStartingPoint_FU(2) afEndingPoint_FU(2)]); %... uncomment if necessary
%   fWidth,                                        ... uncomment if necessary
%   fHeight);                                        % uncomment if necessary
