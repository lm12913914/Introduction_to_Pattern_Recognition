

% Example 1.3.1

% This example computes the probability of a point in a two dimensional
% PDF using a closed-from expression.

close all; clear all; clc;
% addpath(genpath(fullfile('..','..')), '-begin');


% Compute value from Gaussian PDF.

m = [ 0 1 ].';  S = eye(2);  % Two-dimensional Gaussian PDF
%
x1 = [ 0.2 1.3 ]';  pg1 = comp_gauss_dens_val( m, S, x1 );  % Near distribution center.
    fprintf(1, '\nNear Distribution Center - norm = %5.3f, P = %5.3e', norm( x1 - m ), pg1);
x2 = [ 2.2 -1.3 ].';  pg2 = comp_gauss_dens_val( m, S, x2 ); % Far from distribution center.
    fprintf(1, '\nFar from Distribution Center - norm = %5.3f, P = %5.3e', norm( x2 - m ), pg2);
x3 = [ 10 -10 ].';  pg3 = comp_gauss_dens_val( m, S, x3 ); % Far from distribution center.
    fprintf(1, '\nFar from Distribution Center - norm = %5.3f, P = %5.3e', norm( x3 - m ), pg3);
    
fprintf(1, '\n\n');


