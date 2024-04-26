% This is the STARTUP file for ltpda. It should be run once in the MATLAB
% session before using any features of ltpda. The best way to ensure this
% is to create a file called startup.m and put this somewhere in your
% MATLAB path. In this file you should have the command 'ltpda_startup'.
%
% M Hewitson  16-03-07 - creation
% D Dal Bosco 24-04-24 - cleanup
%
function ltpda_startup

% For the case that the user calls 'ltpda_startup' in his current MATLAB
% session again it is necessary to destroy ALL java objects.
try
    rmappdata(0, 'LTPDApreferences');
end

% Remove the database connection manager
try
    rmappdata(0, 'LTPDADatabaseConnectionManager');
end

% clear environment
if verLessThan('matlab', 'R2015b')
    evalin('base', 'clear classes')
end
evalin('base', 'clear java')

%--------------------------------------------------------------------------
% If the mex files of LTPDA are not working on your system, you can
% recompile them by setting this flag to 1 then run ltpda_startup. After
% compilation, set it back to 0.
%
% This is often required on Linux machines due to the difficulties of
% distributing mex files on Linux.
COMPILE_MEX = 0;

%-----------------------------------------------------------------------
% Decide if using or not the LTPDA print and plot settings
USE_LTPDA_PLOT = true;
USE_LTPDA_PRINT = true;
LTPDA_ADD_HISTORY = false;

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% NO NEED TO EDIT BELOW HERE
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

% Format of numbers on MATLAB terminal
format long g

%--------------------------------------------------------------------------
% JAVA extensions

% Add all jar files in 'ltpda_toolbox/ltpda/jar' to path
jardir = fullfile(fileparts(which('ltpda_startup')), '..', '..', 'jar');
jars = dir(jardir);
for c = 1:numel(jars)
    s = jars(c);
    [path, name, ext] = fileparts(s.name);
    if strcmp(ext, '.jar')
        javaaddpath(fullfile(jardir, s.name));
    end
end
% Add all jar files in 'ltpda_toolbox/ltpda/jar/lib' to path
jardir = fullfile(fileparts(which('ltpda_startup')), '..', '..', 'jar', 'lib');
jars = dir(jardir);
for c = 1:numel(jars)
    s = jars(c);
    [path, name, ext] = fileparts(s.name);
    if strcmp(ext, '.jar')
        javaaddpath(fullfile(jardir, s.name));
    end
end

% add all jar files in ltpda_toolbox/extensions
extdir = fullfile(fileparts(which('ltpda_startup')), '..', '..', '..', 'extensions');
jars = utils.prog.filescan(extdir, '.jar');
for c = 1:numel(jars)
    s = jars(c);
    javaaddpath(s);
end

% Add all jar files in extension modules to path
installExtensionJarFiles;

%--------------------------------------------------------------------------
% do we need to compile mex files?
if COMPILE_MEX
    currdir = pwd;
    [path, name, ext, vers] = fileparts(which('ltpda_startup'));
    parts = regexp(path, 'ltpda/',  'split');
    cd(fullfile(parts{1}, 'ltpda', 'src'));
    compileAll;
    cd(currdir);
end

% -------------------------------------------------------------------------
%  import some things
import utils.const.*

%--------------------------------------------------------------------------
% Check and load user parameters
loadPrefs;

% Add user model paths
prefs = getappdata(0, 'LTPDApreferences');
searchPaths = prefs.getModelsPrefs.getSearchPaths;
for jj = 1:searchPaths.size()
    addpath(genpath(char(searchPaths.get(jj-1))));
end

% Install extensions
utils.modules.installExtensions;

% Remove the VCS folders from the path
utils.helper.remove_cvs_from_matlabpath();
utils.helper.remove_svn_from_matlabpath();
utils.helper.remove_git_from_matlabpath();

% ------------------------------------------------------------------------
% General Variables
setappdata(0, 'LTPDA_ADD_HISTORY', LTPDA_ADD_HISTORY);

setappdata(0, 'xmlsetsize', 50000); % Max size of an xml data set <Set></Set>

% Pau Tol's color schemes
% https://personal.sron.nl/~pault/
setappdata(0, 'ltpda_default_plot_colors', { ...
    [68, 119, 170]/255, ...
    [238, 102, 119]/255, ...
    [34, 136, 51]/255, ...
    [204, 187, 68]/255, ...
    [102, 204, 238]/255, ...
    [170, 51, 119]/255, ...
    [0, 119, 187]/255, ...
    [204, 51, 17]/255, ...
    [68, 119, 170]/255, ...
    [0, 153, 136]/255, ...
    [238, 119, 51]/255, ...
    [51, 187, 238]/255, ...
    [238, 51, 119]/255, ...
    [187, 187, 187]/255, ...
    });

% ------------------------------------------------------------------------
% Version Variables

NOT_INSTALLED = 'Not installed';
matlab_version = NOT_INSTALLED;
sigproc_version = NOT_INSTALLED;
symbolic_math_version = NOT_INSTALLED;
optimization_version = NOT_INSTALLED;
database_version = NOT_INSTALLED;
control_version = NOT_INSTALLED;
statistics_version = NOT_INSTALLED;
ltpda_version = NOT_INSTALLED;

vs = ver;
for jj = 1:length(vs)
    v = vs(jj);
    switch v.Name
        case 'MATLAB'
            matlab_version = [v.Version ' ' v.Release];
        case 'Signal Processing Toolbox'
            sigproc_version = [v.Version ' ' v.Release];
        case 'Symbolic Math Toolbox'
            symbolic_math_version = [v.Version ' ' v.Release];
        case 'Optimization Toolbox'
            optimization_version = [v.Version ' ' v.Release];
        case 'Database Toolbox'
            database_version = [v.Version ' ' v.Release];
        case 'Control System Toolbox'
            control_version = [v.Version ' ' v.Release];
        case 'Statistics Toolbox'
            statistics_version = [v.Version ' ' v.Release];
        case 'LTPDA Toolbox'
            ltpda_version = [v.Version ' ' matlabRelease.Release];
    end
end

setappdata(0, 'matlab_version', matlab_version);
setappdata(0, 'sigproc_version', sigproc_version);
setappdata(0, 'symbolic_math_version', symbolic_math_version);
setappdata(0, 'optimization_version', optimization_version);
setappdata(0, 'database_version', database_version);
setappdata(0, 'control_version', control_version);
setappdata(0, 'statistics_version', statistics_version);
setappdata(0, 'ltpda_version', ltpda_version);
setappdata(0, 'ltpda_required_matlab_version', '8.0');

%--------------------------------------------------------------------------
% set page properties for printing
if USE_LTPDA_PRINT
    set(0, 'DefaultFigurePaperOrientation','landscape');
    set(0, 'DefaultFigurePaperType','A4');
    set(0, 'DefaultFigurePaperUnits', 'centimeters');
    set(0, 'DefaultFigurePaperPositionMode', 'manual');
    set(0, 'DefaultFigurePaperPosition', [0 0 29 21]);
end

% ------------------------------------------------------------------------
% Backup MATLAB's plot settings
utils.plottools.backupDefaultPlotSettings();

%--------------------------------------------------------------------------
% Plot settings
if USE_LTPDA_PLOT
    set(0, 'DefaultAxesXColor', [0 0 0]);
    set(0, 'DefaultAxesYColor', [0 0 0]);
    set(0, 'defaultfigurenumbertitle', 'on');
    set(0, 'DefaultFigureColor', 'w');
    set(0, 'DefaultFigurePosition', [0 0 1200 700]);
    set(0, 'DefaultAxesPosition', [0.13 0.15 0.775 0.75]);
end

%--------------------------------------------------------------------------
% Check that the user uses at least the last supported MATLAB version.
if verLessThan('MATLAB', '8.0')
    error('### LTPDA supports MATLAB versions 8.0 (R2012b) or higher');
end

% Set LTPDA Root dir
ltpdaroot = strrep(which('ao'), fullfile('ltpda', 'classes', '@ao', 'ao.m'), '');
setappdata(0, 'LTPDAROOT', ltpdaroot);

% Show logo
showLogo();

% set LTPDA operating mode
setappdata(0, 'LTPDA_MODE', utils.const.msg.USER);

% Now we need to clear in order to register the newly install class
% methods coming from the extensions
mc;

end

function installExtensionJarFiles
% We'll need to get all the users extension modules to look for jar files
v = ver('LTPDA');
nv = utils.helper.ver2num(v(1).Version);
prefs = mpipeline.ltpdapreferences.LTPDAPreferences.loadFromDisk(LTPDAprefs.preffile, nv);
prefs.writeToDisk;
jextPaths = prefs.getExtensionsPrefs.getSearchPaths;
setappdata(0, 'LTPDApreferences', []);
clear prefs;

extPaths = [];
for kk=0:jextPaths.size-1
    extPaths = [extPaths {char(jextPaths.get(kk))}];
end
clear jextPaths;

for kk=1:numel(extPaths)
    p = extPaths{kk};
    files = utils.prog.filescan(p, '.jar');
    for ff=1:numel(files)
        f = files{ff};
        [path, name, ext] = fileparts(f);
        if strcmp(ext, '.jar')
            javaaddpath(f);
        end
    end
end
end

function loadPrefs
if exist(LTPDAprefs.preffile, 'file') == 2

    % we just go ahead
    LTPDAprefs.loadPrefs;

else

    % Check for old prefs file
    if exist(LTPDAprefs.oldpreffile, 'file') == 2

        % load it
        pl = plist(LTPDAprefs.oldpreffile);

        % Now make a new preferences file
        LTPDAprefs.loadPrefs;
        prefs = getappdata(0, 'LTPDApreferences');
        prefs = LTPDAprefs.upgradeFromPlist(prefs, pl);

        prefs.writeToDisk;

    else

        % Copy the default preferences file to MATLAB's preference directory
        defPrefsFile = fullfile(fileparts(which('ltpda_startup')), 'ltpda_prefs2.xml');
        copyfile(defPrefsFile, prefdir());

        % Build the default prefs
        LTPDAprefs.loadPrefs;

        % Show a GUI to allow the user to edit the prefs for the first time
        LTPDAprefs;

    end
end
end

function showLogo()

v = ver('LTPDA');

logo = {...
    '                                        ',...
    '                  ****                  ',...
    '                   **                   ',...
    '              -------------             ',...
    '          ////       /     \\\\         ',...
    '       ///          /          \\\      ',...
    '      |            /              |     ',...
    '  ** |    +----+  /      +----+    | ** ',...
    '  ***|    |    |//-------|    |    |*** ',...
    '  ** |    +----+        /+----+    | ** ',...
    '      |                /          |     ',...
    '       \\\            /        ///      ',...
    '          \\\\      //     ////         ',...
    '              -------------             ',...
    '                   **                   ',...
    '                  ****                  ',...
    };

l1 = '+----------------------------------------------------+';
ll = length(l1);

disp(l1);
disp('|                                                    |')
for jj = 1:length(logo)
    disp([utils.prog.strpad(sprintf('|      %s  ', char(logo{jj})), ll-1) '|']);
end
try
    ltpdaHash = [];
    ltpdaHash = gitHash();
    ltpdaHash = ltpdaHash.ltpda(1:7);
catch
end
if ~ischar(ltpdaHash)
    ltpdaHash = 'unknown'; 
end

disp([utils.prog.strpad('|', ll-1) '|'])
disp([utils.prog.strpad(sprintf('|          Welcome to the %s', v.Name), ll-1) '|'])
disp([utils.prog.strpad('|', ll-1) '|'])
disp([utils.prog.strpad(sprintf('|                 Version: %s', v.Version), ll-1) '|'])
disp([utils.prog.strpad(sprintf('|                GIT Hash: %s', ltpdaHash), ll-1) '|'])
disp([utils.prog.strpad(sprintf('|                    Date: %s', v.Date), ll-1) '|'])
disp([utils.prog.strpad('|', ll-1) '|'])
disp(l1);

end
% END