function [ z ] = comp_gauss_dens_val( m, S, x )

% Computes the value of a Gaussian distribution, N(m,S), at a specific point.
%
% Input arguments:
%   m:  l-dimensional column vector corresponding to the mean vector of the Gaussian distribution.
%   S:  lxl matrix that corresponds to the covariance matrix of the Gaussian distribution.
%   x:  l-dimensional column vector where the value of the Gaussian distribution will be evaluated.
%
% Output arguments:
%   z:  the value of the Gaussian distribution at x.
%
% (c) 2010 S. Theodoridis, A. Pikrakis, K. Koutroumbas, D. Cavouras

[ l, c ] = size(m);

term1 = 1 / ((2*pi)^(l/2) * det(S)^0.5);
term2 = exp( -0.5*(x-m)' * inv(S)*(x-m) );

z = term1 * term2;


