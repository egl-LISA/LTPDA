% TIME_TORQUE gives the torque as a function of time
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: Computes torque time series from an angle time series
% using a numerical differentiation method to obtain the first and the
% second derivative. It then computes
%
% N(t) = I*d^2phi/dt^2 + Gamma*(phi-phi0) + Gamma/((2pi/T0)*Q)*dphi/dt
%
% CALL:        b = time_torque(a, pl)
%
% INPUTS:      a  - angle time series. units of rad are expected
%              pl - parameter list
%
% OUTPUTS:     b  - torque time series
%
% PARAMETERS:
%
%   I         moment of inertia.  cdata ao with units of kg*m^2/rad or a number
%   Q         quality factor.  dimensionless cdata ao or a number
%   T0        oscillation period.  cdata ao with units of s or a number
%   PHI0      offset.  cdata ao with units of rad or a number
%   METHOD    differentiation method
%   D0COEFF   data smoother coefficient
%   D1COEFF   first derivative coefficient
%   D2COEFF   second derivative coefficient
%   GAMMA-EXT extra stiffness term.  ao with the same dimensions of A or a constant
%   PHI0-EXT  zero point for the extra stiffness term
%
% <a href="matlab:utils.helper.displayMethodInfo('ao', 'time_torque')">Parameters Descriptions</a>
%
% NOTE: Derivative estimation is performed with the parabolic fit
% approximation by default [1].  Try to change D#COEFF to use another
% method
%
% REFERENCES:
%
% [1] L. Ferraioli, M. Hueller and S. Vitale
%     Discrete derivative estimation in LISA Pathfinder data reduction.
%     <a href="matlab:web('http://arxiv.org/abs/0903.0324v1','-browser')">http://arxiv.org/abs/0903.0324v1</a>
%
% VERSION:     $Id: time_torque.m 6930 2023-06-07 13:19:10Z davide.dalbosco-1 $
%
% SEE ALSO:    ao/diff and utils.math.fpsder
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = time_torque(varargin)
  
  % check if this is a call for parameters
  if utils.helper.isinfocall(varargin{:})
    varargout{1} = getInfo(varargin{3});
    return
  end
  
  % collect input variable names
  in_names = cell(size(varargin));
  for ii = 1:nargin
      in_names{ii} = inputname(ii);
  end
  
  % collect all AOs
  [as, ao_invars] = utils.helper.collect_objects(varargin(:), 'ao', in_names);
  
  % decide on a deep copy or a modify
  bs = copy(as, nargout);
  inhists = copy([as.hist],1);
  
  % combine plists
  pl = applyDefaults(getDefaultPlist(), varargin{:});
  
  % get parameters
  I      = find(pl, 'I');
  Q      = find(pl, 'Q');
  T0     = find(pl, 'T0');
  phi0   = find(pl, 'phi0');
  method = find(pl, 'method');
  
  Gamma_ext  = find(pl, 'gamma-ext');
  phi0_ext   = find(pl, 'phi0-ext');
  
  % check if the pendulum parameters are AOs
  if ~isa(I,'ao')
    I = ao(I, plist('yunits', 'kg m^2 / rad'));
  end
  if ~isa(Q,'ao')
    Q = ao(Q, plist('yunits', ''));
  end
  if ~isa(T0,'ao')
    T0 = ao(T0, plist('yunits', 's'));
  end
  if ~isa(phi0,'ao')
    phi0 = ao(phi0, plist('yunits', 'rad'));
  end
  if ~isa(Gamma_ext,'ao')
    Gamma_ext = ao(Gamma_ext, plist('yunits', 's^(-2) kg m^(2) / rad'));
  end
  if ~isa(phi0_ext,'ao')
    phi0_ext = ao(phi0_ext, plist('yunits', 'rad'));
  end
  
  % check the derivative method
  switch lower(method)
    case 'parfit'
      d0c = -3/35;
      d1c = -1/5;
      d2c = 2/7;
    case 'pi'
      d0c = 0;
      d1c = 0;
      d2c = 1/4;
      error('### pi differentiation method is not implemented');
    case 'taylor'
      d0c = 0;
      d1c = 1/12;
      d2c = -1/12;
    case ''
      d0c  = find(pl, 'D0COEFF');
      d1c  = find(pl, 'D1COEFF');
      d2c  = find(pl, 'D2COEFF');
    otherwise
      error('### unknown differentiation method.');
  end
  
  if isa(d0c,'ao')
    d0c = d0c.y;
  end
  if isa(d1c,'ao')
    d1c = d1c.y;
  end
  if isa(d2c,'ao')
    d2c = d2c.y;
  end
  
  % calculate coefficients
  w0 = 2*pi ./ T0;
  Gamma = I .* w0.^2;
  beta = Gamma/(w0.*Q);
  
  % go through analysis objects
  for kk = 1:numel(bs)
    
    % calculate derivatives
    a0 = diff(bs(kk), plist('METHOD', 'FPS', 'ORDER', 'ZERO', 'COEFF', d0c));
    a1 = diff(bs(kk), plist('METHOD', 'FPS', 'ORDER', 'FIRST', 'COEFF', d1c));
    a2 = diff(bs(kk), plist('METHOD', 'FPS', 'ORDER', 'SECOND', 'COEFF', d2c));
    
    % compute torque
    bs(kk) = a2 .* I + a1 .* beta + (a0 - phi0) .* Gamma + (a0 - phi0_ext) .* Gamma_ext;
    
    % simplify units
    bs(kk).simplifyYunits;
    if eq(bs(kk).yunits, unit('kg m^(2) s^(-2)'))
      bs(kk).setYunits('N m');
    end
    
    % set name
    bs(kk).name = sprintf('time_torque(%s)', ao_invars{kk});
    
    % add history
    bs(kk).addHistory(getInfo('None'), pl, ao_invars(kk), [inhists(kk)]);
    
  end
  
  % output
  varargout = utils.helper.setoutputs(nargout, bs);
  
end

%--------------------------------------------------------------------------
% Get Info Object
%--------------------------------------------------------------------------
function ii = getInfo(varargin)
  if nargin == 1 && strcmpi(varargin{1}, 'None')
    sets = {};
    pl   = [];
  else
    sets = {'Default'};
    pl   = getDefaultPlist();
  end
  % Build info object
  ii = minfo(mfilename, 'ao', 'UniTN_Module', utils.const.categories.sigproc, '$Id: time_torque.m 6930 2023-06-07 13:19:10Z davide.dalbosco-1 $', sets, pl);
end

%--------------------------------------------------------------------------
% Get Default Plist
%--------------------------------------------------------------------------
function pl = getDefaultPlist()
  pl = plist();
  
  % moment of inertia
  p = param({'I', 'Moment of inertia. A cdata ao with units of kg*m^2/rad expected or a number.'}, 4.31e-5);
  pl.append(p);
  
  % quality factor
  p = param({'Q', 'Quality factor. A dimensionless cdata ao or a number'}, 2880);
  pl.append(p);
  
  % free oscillation period
  p = param({'T0', 'Pendulum oscillation period. A cdata ao with usits of s or a number'}, 563);
  pl.append(p);
  
  % force zero position
  p = param({'PHI0', 'Offset. A cdata ao with units of rad or a number'}, 0);
  pl.append(p);
  
  % method for derivative calculation
  p = param({'METHOD', ['Differentiation method. Choose between:<ul>', ...
    '<li>''parfit'' - parabolic fit</li>', ...
    '<li>''taylor'' - Taylor series expansion</li>', ...
    '<li>''pi''     - sets a zero at the Nyquist frequency</li></ul>', ...
    'Set it empty and set D*COEFF values.']}, 'parfit');
  pl.append(p);
  
  % coefficient for 0th derivative (data smoother)
  p = param({'D0COEFF', 'Data smoother coefficient. Used only when METHOD = []'}, -3/35);
  pl.append(p);
  
  % coefficient for 1st derivative
  p = param({'D1COEFF', 'First derivative coefficient. Used only when METHOD = []'}, -1/5);
  pl.append(p);
  
  % coefficient for 2nd derivative
  p = param({'D2COEFF', 'Second derivative coefficient. Used only when METHOD = []'}, 2/7);
  pl.append(p);
  
  % Extra stiffness term
  p = param({'GAMMA-EXT', 'Extra stiffness term'}, 0);
  pl.append(p);
  
  % Zero point for the extra stiffness term
  p = param({'PHI0-EXT', 'Zero point for the extra stiffness term'}, 0);
  pl.append(p);
  
end
% END
