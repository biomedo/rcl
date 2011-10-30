% This matlab script is used for extracting a set of figures to tex Tikz
% code, this script should be run in the figure directory

cur_dir = pwd;
display(cur_dir);

filelist = dir('*.fig');
for i = 1 : length(filelist)
    filename = filelist(i).name;
    [filepath, filetitle, fileext] = fileparts(filename);

    hfig=openfig(filename);
    savefilename = sprintf('%s.tex', filetitle);
    matlab2tikz( 'filename', savefilename, 'height', '\figureheight', ...
                 'width', '\figurewidth');
    close(hfig);
end
