% main.m
%
% @project: 
%
% @date:    
%
% @authors: 



% cleaning
clear;
clc;
close all;
home;



% sub-calls
LoadParameters;
CreateResultsDirectories;
OpenDiary;



% (conditional) savings / alerts / etc
PlotResults;
SaveResultingMatFiles;
SendMailAlert;
CloseDiary;

