% we set the units of the measures used through the file
%
% [ inches | centimeters | normalized | points | {pixels} | characters ]
set(gcf, 'Units', 'centimeters'); 


% we set the position and dimension of the figure ON THE SCREEN
%
% NOTE: measurement units refer to the previous settings!
afFigurePosition = [1 1 20 5.5];         % [pos_x pos_y width_x width_y]
set(gcf, 'Position', afFigurePosition);  % [left bottom width height]


% we link the dimension of the figure ON THE PAPER in such a way that
% it is equal to the dimension on the screen
%
% ATTENTION: if PaperPositionMode is not 'auto' the saved file
% could have different dimensions from the one shown on the screen!
set(gcf, 'PaperPositionMode', 'auto');


% in order to make matlab to do not "cut" latex-interpreted axes labels
set(gca, 'Units',				'normalized',	...	%
		 'Position',			[0.15 0.2 0.75 0.7]);
