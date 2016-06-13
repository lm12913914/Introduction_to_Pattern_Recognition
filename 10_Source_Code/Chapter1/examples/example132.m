

% Example 1.3.2

% This example is similar to Example 1.3.1.  It computes the probability of
% a point in a two dimensional PDF using a closed-from expression, but it
% modifies the computed probability using a prior probability (i.e Bayes
% Rule).

close all; clear all; clc;
% addpath(genpath(fullfile('..','..')), '-begin');


P1 = 0.5;  % Prior Probabilities
P2 = 0.5;

m1 = [ 1 1 ].';  % 2D Gaussian Distribution
m2 = [ 3 3 ].'; 
S = eye(2);

x = [ 1.8 1.8 ].';

p1 = P1 * comp_gauss_dens_val( m1, S, x );
    fprintf(1, '\nNear Distribution Center - norm = %5.3f, P = %5.3e, prior probability = %5.3e', norm( x - m1 ), p1, P1);
p2 = P2 * comp_gauss_dens_val( m2, S, x );
    fprintf(1, '\nFar from Distribution Center - norm = %5.3f, P = %5.3e, prior probability = %5.3e', norm( x - m2 ), p2, P2);
    
fprintf(1, '\n\n');


