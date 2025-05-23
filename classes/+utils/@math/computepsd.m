%  Slight modification of original MATLAB's computepsd to include correct scaling for the variance, i.e var(a*x) = a^2*var(x)
%%%%%%%%%%%%%%%%%
%
% COMPUTEPSD  Compute the one-sided or two-sided PSD or Mean-Square.
%   [Pxx,Pvxx,W,UNITS] = COMPUTEPSD(Sxx,Svxx,W,RANGE,NFFT,Fs,ESTTYPE) where the
%   inputs and outputs are:
%
%   Inputs:
%    Sxx   - Whole power spectrum [Power]; it can be a vector or a matrix.
%            For matrices the operation is applied to each column.
%    W     - Frequency vector in rad/sample or in Hz.
%    RANGE - Determines if a 'onesided' or a 'twosided' Pxx and Sxx are
%            returned.
%    NFFT  - Number of frequency points.
%    Fs    - Sampling Frequency.
%    ESTTYPE - A string indicating the estimate type: 'psd', or 'ms' value.
%
%   Outputs:
%    Pxx   - One-sided or two-sided PSD or MEAN-SQUARE (not scaled by Fs)
%            depending on the input arguments RANGE and TYPE.
%    W     - Frequency vector 0 to 2*Nyquist or 0 to Nyquist depending on
%            range, units will be either rad/sample (if Fs is empty) or Hz
%            (otherwise).
%    UNITS - Either 'rad/sample' or 'Hz'
%   Author(s): R. Losada
%   Copyright 1988-2005 The MathWorks, Inc.

function varargout = computepsd(Sxx,Svxx,w,range,nfft,Fs,esttype)
  
  if nargin < 7
    iswinfs = false;
    if nargin < 6,
      esttype = 'psd';
    end
  end
  
  w = w(:); % Make sure we always returns a column vector for frequency
  
  % Generate the one-sided spectrum [Power] if so wanted
  if strcmp(range,'onesided'),
    if rem(nfft,2),
      select = 1:(nfft+1)/2;  % ODD
      Sxx_unscaled = Sxx(select,:); % Take only [0,pi] or [0,pi)
      Svxx_unscaled = Svxx(select,:); % Take only [0,pi] or [0,pi)
      Sxx = [Sxx_unscaled(1,:); 2*Sxx_unscaled(2:end,:)];  % Only DC is a unique point and doesn't get doubled
      Svxx = [Svxx_unscaled(1,:); 4*Svxx_unscaled(2:end,:)];
    else
      select = 1:nfft/2+1;    % EVEN
      Sxx_unscaled = Sxx(select,:); % Take only [0,pi] or [0,pi)
      Svxx_unscaled = Svxx(select,:); % Take only [0,pi] or [0,pi)
      Sxx = [Sxx_unscaled(1,:); 2*Sxx_unscaled(2:end-1,:); Sxx_unscaled(end,:)]; % Don't double unique Nyquist point
      Svxx = [Svxx_unscaled(1,:); 4*Svxx_unscaled(2:end-1,:); Svxx_unscaled(end,:)]; % Don't double unique Nyquist point
    end
    w = w(select);
  end
  
  % Compute the PSD [Power/freq]
  if ~isempty(Fs),
    Pxx = Sxx./Fs; % Scale by the sampling frequency to obtain the psd
    Pvxx = Svxx./Fs^2;
    units = 'Hz';
  else
    Pxx = Sxx./(2.*pi); % Scale the power spectrum by 2*pi to obtain the psd
    Pvxx = Svxx./(2.*pi)^2;
    units = 'rad/sample';
  end
  
  if strcmpi(esttype,'ms'),
    varargout = {Sxx,Svxx,w,units};  % Mean-square
  else
    varargout = {Pxx,Pvxx,w,units};  % PSD
  end
  
  % [EOF] computepsd.m
end