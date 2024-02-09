% LTPDA Toolbox
% Version 3.0.14.dev (R2017b) 10-12-18
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Toolbox        LTPDA
%
% Version        3.0.14.dev (R2017b) 10-12-18
%
% Contents path  C:\Users\Davide\Documents\MATLAB\ltpda_toolbox\ltpda
%
%
%%%%%%%%%%%%%%%%%%%%   path:    %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help MakeContents">MakeContents</a> -  makes Contents file in current working directory and subdirectories
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\+const\@categories   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\+const\@categories\categories">classes\+utils\+const\@categories\categories</a> -  class that defines LTPDA method categories.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\+const\@ltp   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\+const\@ltp\ltp">classes\+utils\+const\@ltp\ltp</a> -  class that defines constants for LTP.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\+const\@msg   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\+const\@msg\msg">classes\+utils\+const\@msg\msg</a> -  class that defines constants for different message levels.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\+const\@physics   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\+const\@physics\physics">classes\+utils\+const\@physics\physics</a> -  class that defines common physical constants.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\+const\@warnings   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\+const\@warnings\warnings">classes\+utils\+const\@warnings\warnings</a> -  class that defines different warning labels.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\+gui\@BaseGUI   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\+gui\@BaseGUI\BaseGUI">classes\+utils\+gui\@BaseGUI\BaseGUI</a>      -  is a base class for graphical user interface in LTPDA.
%   <a href="matlab:help classes\+utils\+gui\@BaseGUI\cb_guiClosed">classes\+utils\+gui\@BaseGUI\cb_guiClosed</a> -  callback for closing the BaseGUI class
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\+gui\@QueryResultsTable   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\+gui\@QueryResultsTable\QueryResultsTable">classes\+utils\+gui\@QueryResultsTable\QueryResultsTable</a>           -  is a graphical user interface for query the LTPDA repository.
%   <a href="matlab:help classes\+utils\+gui\@QueryResultsTable\cb_guiClosed">classes\+utils\+gui\@QueryResultsTable\cb_guiClosed</a>                -  callback for closing the QueryResultsTable GUI
%   <a href="matlab:help classes\+utils\+gui\@QueryResultsTable\cb_retrieveObjectsFromTable">classes\+utils\+gui\@QueryResultsTable\cb_retrieveObjectsFromTable</a> -  callback for retrieving objects
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\+gui\@RepositoryRetrieve   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\+gui\@RepositoryRetrieve\RepositoryRetrieve">classes\+utils\+gui\@RepositoryRetrieve\RepositoryRetrieve</a> -  is a graphical user interface for query the LTPDA repository.
%   <a href="matlab:help classes\+utils\+gui\@RepositoryRetrieve\cb_guiClosed">classes\+utils\+gui\@RepositoryRetrieve\cb_guiClosed</a>       -  callback for closing the QueryResultsTable GUI
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\@autoReporter   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\@autoReporter\autoReporter">classes\+utils\@autoReporter\autoReporter</a> -  class, for reporting automatization.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\@bin   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\@bin\bin">classes\+utils\@bin\bin</a> -  class for wrapping of executable binary files.
%   <a href="matlab:help classes\+utils\@bin\fil">classes\+utils\@bin\fil</a> -  a wrapper for the LISO fil executable.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\@credentials   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\@credentials\credentials">classes\+utils\@credentials\credentials</a> - end % properties
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\@helper   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\@helper\CPUbenchmark">classes\+utils\@helper\CPUbenchmark</a>                  - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@helper\addLicenseToFile">classes\+utils\@helper\addLicenseToFile</a>              - fprintf(2, 'No rule for extension: [%s]', ext);
%   <a href="matlab:help classes\+utils\@helper\buildSearchDatabase">classes\+utils\@helper\buildSearchDatabase</a>           -  Build LTPDA documentation search database.
%   <a href="matlab:help classes\+utils\@helper\callerIsMethod">classes\+utils\@helper\callerIsMethod</a>                - CALLERISMETHOD(varargin) checks if a method was called by another LTPDA method.
%   <a href="matlab:help classes\+utils\@helper\checkFilterOptions">classes\+utils\@helper\checkFilterOptions</a>            -  checks the options to the different filter
%   <a href="matlab:help classes\+utils\@helper\checkMatlabVersion">classes\+utils\@helper\checkMatlabVersion</a>            -  checks the current MATLAB version.
%   <a href="matlab:help classes\+utils\@helper\class2plist">classes\+utils\@helper\class2plist</a>                   -  create a plist from the class properties.
%   <a href="matlab:help classes\+utils\@helper\classFromStruct">classes\+utils\@helper\classFromStruct</a>               -  returns a class name that matches the structure.
%   <a href="matlab:help classes\+utils\@helper\collect_objects">classes\+utils\@helper\collect_objects</a>               -  Collect objects of the required class.
%   <a href="matlab:help classes\+utils\@helper\collect_values">classes\+utils\@helper\collect_values</a>                -  convert numeric values in to AOs.
%   <a href="matlab:help classes\+utils\@helper\createUniqueNames">classes\+utils\@helper\createUniqueNames</a>             -  This function make sure that the input cell contains only unique strings.
%   <a href="matlab:help classes\+utils\@helper\displayConstructorExamples">classes\+utils\@helper\displayConstructorExamples</a>    - % Get the class which we want to display from the input
%   <a href="matlab:help classes\+utils\@helper\displayMethodInfo">classes\+utils\@helper\displayMethodInfo</a>             -  displays the information about a method in the MATLAB browser.
%   <a href="matlab:help classes\+utils\@helper\dunzip">classes\+utils\@helper\dunzip</a>                        -  - decompress DZIP output to recover original data
%   <a href="matlab:help classes\+utils\@helper\dzip">classes\+utils\@helper\dzip</a>                          -  - losslessly compress data into smaller memory space
%   <a href="matlab:help classes\+utils\@helper\eq2eps">classes\+utils\@helper\eq2eps</a>                        -  returns True if the two values are equal to within 2*eps of the
%   <a href="matlab:help classes\+utils\@helper\err">classes\+utils\@helper\err</a>                           -  prints the error message to the MATLAB terminal and to the
%   <a href="matlab:help classes\+utils\@helper\errorDlg">classes\+utils\@helper\errorDlg</a>                      -  Create and open error dialog box.
%   <a href="matlab:help classes\+utils\@helper\extractTransitionTimes">classes\+utils\@helper\extractTransitionTimes</a>        - UTILS.HELPER.EXTRACTTRANSITIONTIMES
%   <a href="matlab:help classes\+utils\@helper\feval">classes\+utils\@helper\feval</a>                         -  a wrapper of MATLAB's feval
%   <a href="matlab:help classes\+utils\@helper\generic_getInfo">classes\+utils\@helper\generic_getInfo</a>               -  generic version of the getInfo function
%   <a href="matlab:help classes\+utils\@helper\genvarname">classes\+utils\@helper\genvarname</a>                    -  is a wrapper for the different MATLAB versions.
%   <a href="matlab:help classes\+utils\@helper\getClassFromStruct">classes\+utils\@helper\getClassFromStruct</a>            - pubCnames = {p(idxPub).Name}; % public and not hidden properties. (same as properties(cl))
%   <a href="matlab:help classes\+utils\@helper\getClasses">classes\+utils\@helper\getClasses</a>                    -  lists all the LTPDA object types.
%   <a href="matlab:help classes\+utils\@helper\getDefaultValue">classes\+utils\@helper\getDefaultValue</a>               -  Returns the default value of a class property.
%   <a href="matlab:help classes\+utils\@helper\getHelpPath">classes\+utils\@helper\getHelpPath</a>                   -  return the full path of the LTPDA toolbox help
%   <a href="matlab:help classes\+utils\@helper\getObjectFromStruct">classes\+utils\@helper\getObjectFromStruct</a>           - % Call constructor of the data class
%   <a href="matlab:help classes\+utils\@helper\getPublicMethods">classes\+utils\@helper\getPublicMethods</a>              -  returns a cell array of the public methods for the given
%   <a href="matlab:help classes\+utils\@helper\getUserClasses">classes\+utils\@helper\getUserClasses</a>                -  lists all the LTPDA user object types.
%   <a href="matlab:help classes\+utils\@helper\helper">classes\+utils\@helper\helper</a>                        -  helper class for helpful utility functions.
%   <a href="matlab:help classes\+utils\@helper\isSubclassOf">classes\+utils\@helper\isSubclassOf</a>                  -  determines if the one class is a subclass of another
%   <a href="matlab:help classes\+utils\@helper\isSubmissionPlist">classes\+utils\@helper\isSubmissionPlist</a>             -  Checks if the input plist is a submission plist.
%   <a href="matlab:help classes\+utils\@helper\isdeprecated">classes\+utils\@helper\isdeprecated</a>                  -  attempts to determine if a given method of a class is
%   <a href="matlab:help classes\+utils\@helper\isinfocall">classes\+utils\@helper\isinfocall</a>                    -  defines the condition for an 'info' call
%   <a href="matlab:help classes\+utils\@helper\ismember">classes\+utils\@helper\ismember</a>                      -  a simpler version that just checks if the given string(s) is/are in the
%   <a href="matlab:help classes\+utils\@helper\isobject">classes\+utils\@helper\isobject</a>                      -  checks that the input objects are one of the LTPDA object types.
%   <a href="matlab:help classes\+utils\@helper\jArrayList2CellArray">classes\+utils\@helper\jArrayList2CellArray</a>          -  Converts a java ArrayList into a MATLAB cell array.
%   <a href="matlab:help classes\+utils\@helper\ltpda_classes">classes\+utils\@helper\ltpda_classes</a>                 -  lists all the LTPDA object types.
%   <a href="matlab:help classes\+utils\@helper\ltpda_non_abstract_classes">classes\+utils\@helper\ltpda_non_abstract_classes</a>    -  lists all non abstract LTPDA object classes.
%   <a href="matlab:help classes\+utils\@helper\ltpda_userclasses">classes\+utils\@helper\ltpda_userclasses</a>             -  lists all the LTPDA user object types.
%   <a href="matlab:help classes\+utils\@helper\make_class_diagram">classes\+utils\@helper\make_class_diagram</a>            -  script to plot nicely the class structure of the LTPDA Toolbox,
%   <a href="matlab:help classes\+utils\@helper\mat2str">classes\+utils\@helper\mat2str</a>                       -  overloads the mat2str operator to set the precision at a central place.
%   <a href="matlab:help classes\+utils\@helper\msg">classes\+utils\@helper\msg</a>                           -  writes a message to the MATLAB terminal.
%   <a href="matlab:help classes\+utils\@helper\msg_nnl">classes\+utils\@helper\msg_nnl</a>                       -  writes a message to the MATLAB terminal without a new line character
%   <a href="matlab:help classes\+utils\@helper\num2str">classes\+utils\@helper\num2str</a>                       -  uses sprintf to convert a data vector to a string with a fixed precision.
%   <a href="matlab:help classes\+utils\@helper\obj2tex">classes\+utils\@helper\obj2tex</a>                       -  converts the input data to TeX code
%   <a href="matlab:help classes\+utils\@helper\objdisp">classes\+utils\@helper\objdisp</a>                       -  displays the input object.
%   <a href="matlab:help classes\+utils\@helper\parseMethodInfo">classes\+utils\@helper\parseMethodInfo</a>               -  parses the standard function information.
%   <a href="matlab:help classes\+utils\@helper\plotTraces">classes\+utils\@helper\plotTraces</a>                    - (No help available)
%   <a href="matlab:help classes\+utils\@helper\plot_gauss_hist">classes\+utils\@helper\plot_gauss_hist</a>               - % Check if this is a call for parameters
%   <a href="matlab:help classes\+utils\@helper\process_smodel_diff_options">classes\+utils\@helper\process_smodel_diff_options</a>   -  checks the options for the parameters needed by smodel methods like diff
%   <a href="matlab:help classes\+utils\@helper\process_smodel_transf_options">classes\+utils\@helper\process_smodel_transf_options</a> -  checks the options for the parameters needed by smodel methods like transforms
%   <a href="matlab:help classes\+utils\@helper\process_spectral_options">classes\+utils\@helper\process_spectral_options</a>      -  checks the options for the parameters needed by spectral estimators, recalculating  and/or resetting them if needed.
%   <a href="matlab:help classes\+utils\@helper\readGZip">classes\+utils\@helper\readGZip</a>                      - Reads a GZip file in full and puts the contents into the output variable.
%   <a href="matlab:help classes\+utils\@helper\remove_cvs_from_matlabpath">classes\+utils\@helper\remove_cvs_from_matlabpath</a>    - newpath = remove_cvs_from_matlabpath(oldpath)
%   <a href="matlab:help classes\+utils\@helper\remove_git_from_matlabpath">classes\+utils\@helper\remove_git_from_matlabpath</a>    - newpath = remove_git_from_matlabpath(oldpath)
%   <a href="matlab:help classes\+utils\@helper\remove_svn_from_matlabpath">classes\+utils\@helper\remove_svn_from_matlabpath</a>    - newpath = remove_svn_from_matlabpath(oldpath)
%   <a href="matlab:help classes\+utils\@helper\saveobj">classes\+utils\@helper\saveobj</a>                       -  saves an object to a file.
%   <a href="matlab:help classes\+utils\@helper\setoutputs">classes\+utils\@helper\setoutputs</a>                    -  sets the output cell-array for LTPDA methods.
%   <a href="matlab:help classes\+utils\@helper\time_data_worsener">classes\+utils\@helper\time_data_worsener</a>            -  introduces missing points and/or unvenly sampling time
%   <a href="matlab:help classes\+utils\@helper\truncateString">classes\+utils\@helper\truncateString</a>                -  truncates a string or cell-array of strings to a given number of characters.
%   <a href="matlab:help classes\+utils\@helper\val2str">classes\+utils\@helper\val2str</a>                       -  converts each value into a string
%   <a href="matlab:help classes\+utils\@helper\ver2num">classes\+utils\@helper\ver2num</a>                       -  converts a version string into a number.
%   <a href="matlab:help classes\+utils\@helper\warn">classes\+utils\@helper\warn</a>                          -  - prints the warning message to the MATLAB terminal.
%   <a href="matlab:help classes\+utils\@helper\warnDlg">classes\+utils\@helper\warnDlg</a>                       -  Create and open warn dialog box.
%   <a href="matlab:help classes\+utils\@helper\warn_no_bt">classes\+utils\@helper\warn_no_bt</a>                    -  - prints the warning message to the MATLAB terminal without backtrace informations.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\@html   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\@html\beginBody">classes\+utils\@html\beginBody</a>     -   returns an html string to start the body of the document.
%   <a href="matlab:help classes\+utils\@html\beginItemize">classes\+utils\@html\beginItemize</a>  -   returns an html string  to start a items list in HTML
%   <a href="matlab:help classes\+utils\@html\bold">classes\+utils\@html\bold</a>          -   returns an html string rep  
%   <a href="matlab:help classes\+utils\@html\center">classes\+utils\@html\center</a>        -   returns an html string to center the given text 
%   <a href="matlab:help classes\+utils\@html\color">classes\+utils\@html\color</a>         -   returns an html string that represents given text with given font color  
%   <a href="matlab:help classes\+utils\@html\comment">classes\+utils\@html\comment</a>       -   returns an html string representing a hidden comment   
%   <a href="matlab:help classes\+utils\@html\endBody">classes\+utils\@html\endBody</a>       -   returns an html string to end the body of the document.
%   <a href="matlab:help classes\+utils\@html\endItemize">classes\+utils\@html\endItemize</a>    - ENDINITEMIZE  returns an html string  to end an items list in HTML
%   <a href="matlab:help classes\+utils\@html\figure">classes\+utils\@html\figure</a>        -   returns an html string  to embed an image  to a HTML document
%   <a href="matlab:help classes\+utils\@html\html">classes\+utils\@html\html</a>          -  helper class for helpful utility functions.
%   <a href="matlab:help classes\+utils\@html\item">classes\+utils\@html\item</a>          -   returns an html string  add an enumeration item with given text, in HTML
%   <a href="matlab:help classes\+utils\@html\label">classes\+utils\@html\label</a>         -   returns an html string  to add a location label in a HTML document
%   <a href="matlab:help classes\+utils\@html\lineBreak">classes\+utils\@html\lineBreak</a>     -   returns an html string with a line break 
%   <a href="matlab:help classes\+utils\@html\lineSeparator">classes\+utils\@html\lineSeparator</a> -  returns an html string representing a vertical line 
%   <a href="matlab:help classes\+utils\@html\link">classes\+utils\@html\link</a>          -   returns an html string that is a link to a given URL, in html.
%   <a href="matlab:help classes\+utils\@html\pageFooter">classes\+utils\@html\pageFooter</a>    -  returns an html string suitable for ending an html page.
%   <a href="matlab:help classes\+utils\@html\pageHeader">classes\+utils\@html\pageHeader</a>    -   returns an html string suitable for starting an html page.
%   <a href="matlab:help classes\+utils\@html\paragraph">classes\+utils\@html\paragraph</a>     -   returns an html string  to add a paragrapgh to a HTML document
%   <a href="matlab:help classes\+utils\@html\reference">classes\+utils\@html\reference</a>     -   returns an html string that is a link to a previously set
%   <a href="matlab:help classes\+utils\@html\table">classes\+utils\@html\table</a>         -  returns an html string containing a table of the given quantities.
%   <a href="matlab:help classes\+utils\@html\title">classes\+utils\@html\title</a>         -   returns an html string that is a title with given level
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\@jmysql   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\@jmysql\getsinfo">classes\+utils\@jmysql\getsinfo</a> -   Retrieved objects metadata from the repository
%   <a href="matlab:help classes\+utils\@jmysql\jmysql">classes\+utils\@jmysql\jmysql</a>   - UTILS.JMYSQL  Interface to MySQL databases
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\@math   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\@math\Chi2cdf">classes\+utils\@math\Chi2cdf</a>                      - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\Chi2inv">classes\+utils\@math\Chi2inv</a>                      - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\Fcdf">classes\+utils\@math\Fcdf</a>                         - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\Finv">classes\+utils\@math\Finv</a>                         - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\Fpdf">classes\+utils\@math\Fpdf</a>                         - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\Ftest">classes\+utils\@math\Ftest</a>                        -  perfomes an F-Test.
%   <a href="matlab:help classes\+utils\@math\Kurt">classes\+utils\@math\Kurt</a>                         - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\Normcdf">classes\+utils\@math\Normcdf</a>                      - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\Norminv">classes\+utils\@math\Norminv</a>                      - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\Rcovmat">classes\+utils\@math\Rcovmat</a>                      - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\SFtest">classes\+utils\@math\SFtest</a>                       -  perfomes a Spectral F-Test on PSDs.
%   <a href="matlab:help classes\+utils\@math\SKcriticalvalues">classes\+utils\@math\SKcriticalvalues</a>             - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\Skew">classes\+utils\@math\Skew</a>                         - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\autocfit">classes\+utils\@math\autocfit</a>                     -  performs a fitting loop to identify model order and parameters.
%   <a href="matlab:help classes\+utils\@math\autodfit">classes\+utils\@math\autodfit</a>                     -  perform a fitting loop to identify model order and parameters.
%   <a href="matlab:help classes\+utils\@math\blwhitenoise">classes\+utils\@math\blwhitenoise</a>                 -  return a band limited gaussian distributed white noise
%   <a href="matlab:help classes\+utils\@math\boxplot">classes\+utils\@math\boxplot</a>                      -  draw box plot on data
%   <a href="matlab:help classes\+utils\@math\cauchy">classes\+utils\@math\cauchy</a>                       - (No help available)
%   <a href="matlab:help classes\+utils\@math\cdfplot">classes\+utils\@math\cdfplot</a>                      -  makes cumulative distribution plot
%   <a href="matlab:help classes\+utils\@math\chi2">classes\+utils\@math\chi2</a>                         - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\chisquare_ssm_td">classes\+utils\@math\chisquare_ssm_td</a>             - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\chop">classes\+utils\@math\chop</a>                         - (No help available)
%   <a href="matlab:help classes\+utils\@math\computeDftPeriodogram">classes\+utils\@math\computeDftPeriodogram</a>        -  compute periodogram with dft
%   <a href="matlab:help classes\+utils\@math\computepsd">classes\+utils\@math\computepsd</a>                   - Slight modification of original MATLAB's computepsd to include correct scaling for the variance, i.e var(a*x) = a^2*var(x)
%   <a href="matlab:help classes\+utils\@math\corr2cov">classes\+utils\@math\corr2cov</a>                     - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\cov2corr">classes\+utils\@math\cov2corr</a>                     - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\cpf">classes\+utils\@math\cpf</a>                          -  finds the partial fraction expansion of the ratio of two polynomials A(s)/B(s).
%   <a href="matlab:help classes\+utils\@math\cpsd">classes\+utils\@math\cpsd</a>                         - UTILS.MATH.CPSD: Pure Matlab function that performs the CPSD using LTPDA machinery
%   <a href="matlab:help classes\+utils\@math\crank">classes\+utils\@math\crank</a>                        -  calculate ranks for Spearman correlation
%   <a href="matlab:help classes\+utils\@math\csd2tf">classes\+utils\@math\csd2tf</a>                       -  Input cross spectral density matrix and output stable transfer function 
%   <a href="matlab:help classes\+utils\@math\csd2tf2">classes\+utils\@math\csd2tf2</a>                      -  Input cross spectral density matrix and output stable transfer function 
%   <a href="matlab:help classes\+utils\@math\ctfit">classes\+utils\@math\ctfit</a>                        -  fits a continuous model to a frequency response.
%   <a href="matlab:help classes\+utils\@math\ctmult">classes\+utils\@math\ctmult</a>                       - % Multiplication function designed for the
%   <a href="matlab:help classes\+utils\@math\deg2rad">classes\+utils\@math\deg2rad</a>                      -  Convert degrees to radians
%   <a href="matlab:help classes\+utils\@math\dft">classes\+utils\@math\dft</a>                          -  Compute discrete fourier transform at a given frequency
%   <a href="matlab:help classes\+utils\@math\diffStepFish">classes\+utils\@math\diffStepFish</a>                 - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\diffStepFish_1x1">classes\+utils\@math\diffStepFish_1x1</a>             - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\dispersion_1x1">classes\+utils\@math\dispersion_1x1</a>               - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\dispersion_2x2">classes\+utils\@math\dispersion_2x2</a>               - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\downsampleSpectrum">classes\+utils\@math\downsampleSpectrum</a>           -  spectrum in order to ensure independence between frequency
%   <a href="matlab:help classes\+utils\@math\drawSampleM">classes\+utils\@math\drawSampleM</a>                  - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\drawSampleT">classes\+utils\@math\drawSampleT</a>                  -   Draw a sample from the Student's t distribution
%   <a href="matlab:help classes\+utils\@math\dtfit">classes\+utils\@math\dtfit</a>                        -  fits a discrete model to a frequency response.
%   <a href="matlab:help classes\+utils\@math\ecdf">classes\+utils\@math\ecdf</a>                         -  Compute empirical cumulative distribution function
%   <a href="matlab:help classes\+utils\@math\eigcsd">classes\+utils\@math\eigcsd</a>                       -  calculates TFs from 2D cross-correlated spectra.
%   <a href="matlab:help classes\+utils\@math\eigpsd">classes\+utils\@math\eigpsd</a>                       -  calculates TFs from 2D cross-correlated spectra.
%   <a href="matlab:help classes\+utils\@math\fdfilt_delay_core">classes\+utils\@math\fdfilt_delay_core</a>            -  core method to implement fractional delay filtering
%   <a href="matlab:help classes\+utils\@math\fftdelay_core">classes\+utils\@math\fftdelay_core</a>                -  applies a delay to a timeseries using the FFT/IFFT method
%   <a href="matlab:help classes\+utils\@math\filtfilt_filterbank">classes\+utils\@math\filtfilt_filterbank</a>          -  computes filtfilt for filterbank objects
%   <a href="matlab:help classes\+utils\@math\filtpz">classes\+utils\@math\filtpz</a>                       - (No help available)
%   <a href="matlab:help classes\+utils\@math\findShapeParamKStestSpectrum">classes\+utils\@math\findShapeParamKStestSpectrum</a> -  find shape parameter for kstest on the
%   <a href="matlab:help classes\+utils\@math\fisher">classes\+utils\@math\fisher</a>                       - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\fisher_1x1">classes\+utils\@math\fisher_1x1</a>                   - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\fisher_2x2">classes\+utils\@math\fisher_2x2</a>                   - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\fitPrior">classes\+utils\@math\fitPrior</a>                     - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\fminsearchbnd_core">classes\+utils\@math\fminsearchbnd_core</a>           - --------------------------------------------------------------------------
%   <a href="matlab:help classes\+utils\@math\fpsder">classes\+utils\@math\fpsder</a>                       -  performs the numeric time derivative
%   <a href="matlab:help classes\+utils\@math\fq2ri">classes\+utils\@math\fq2ri</a>                        -  Convert frequency/Q pole/zero representation into real
%   <a href="matlab:help classes\+utils\@math\fq2ri2">classes\+utils\@math\fq2ri2</a>                       -  Convert frequency/Q pole/zero representation into real
%   <a href="matlab:help classes\+utils\@math\free_flight_ode">classes\+utils\@math\free_flight_ode</a>              - % we cannot look up the parameter each time because it takes too long
%   <a href="matlab:help classes\+utils\@math\freqCorr">classes\+utils\@math\freqCorr</a>                     -  Compute correlation between frequency bins
%   <a href="matlab:help classes\+utils\@math\gammacdf">classes\+utils\@math\gammacdf</a>                     - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\gammapdf">classes\+utils\@math\gammapdf</a>                     - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\getCorr">classes\+utils\@math\getCorr</a>                      - (No help available)
%   <a href="matlab:help classes\+utils\@math\getdc">classes\+utils\@math\getdc</a>                        -  get the DC gain factor for a pole-zero model
%   <a href="matlab:help classes\+utils\@math\getfftfreq">classes\+utils\@math\getfftfreq</a>                   - GETFFTFREQ: get frequencies for fft
%   <a href="matlab:help classes\+utils\@math\getinitstate">classes\+utils\@math\getinitstate</a>                 - (No help available)
%   <a href="matlab:help classes\+utils\@math\getjacobian">classes\+utils\@math\getjacobian</a>                  -  Calculate Jacobian of a given model function.
%   <a href="matlab:help classes\+utils\@math\getk">classes\+utils\@math\getk</a>                         -  get the mathematical gain factor for a pole-zero model
%   <a href="matlab:help classes\+utils\@math\heaviside">classes\+utils\@math\heaviside</a>                    - (No help available)
%   <a href="matlab:help classes\+utils\@math\iirinit">classes\+utils\@math\iirinit</a>                      -  defines the initial state of an IIR filter.
%   <a href="matlab:help classes\+utils\@math\intfact">classes\+utils\@math\intfact</a>                      -  computes integer factorisation
%   <a href="matlab:help classes\+utils\@math\isequal">classes\+utils\@math\isequal</a>                      -  test if two matrices are equal to within the given tolerance.
%   <a href="matlab:help classes\+utils\@math\jr2cov">classes\+utils\@math\jr2cov</a>                       -  Calculates coefficients covariance matrix from Jacobian and Residuals.
%   <a href="matlab:help classes\+utils\@math\kstest">classes\+utils\@math\kstest</a>                       -  perform the Kolmogorov - Smirnov statistical hypothesis test
%   <a href="matlab:help classes\+utils\@math\linfit">classes\+utils\@math\linfit</a>                       -  returns the fit parameters for a linear fit of the form  y = m*x + b.
%   <a href="matlab:help classes\+utils\@math\linfitsvd">classes\+utils\@math\linfitsvd</a>                    - Linear fit with singular value decomposition
%   <a href="matlab:help classes\+utils\@math\linlsqsvd">classes\+utils\@math\linlsqsvd</a>                    -  Linear least squares with singular value decomposition
%   <a href="matlab:help classes\+utils\@math\logLmath">classes\+utils\@math\logLmath</a>                     - (No help available)
%   <a href="matlab:help classes\+utils\@math\loglikelihood">classes\+utils\@math\loglikelihood</a>                - (No help available)
%   <a href="matlab:help classes\+utils\@math\loglikelihood_matrix">classes\+utils\@math\loglikelihood_matrix</a>         - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\loglikelihood_ssm">classes\+utils\@math\loglikelihood_ssm</a>            - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\loglikelihood_ssm_td">classes\+utils\@math\loglikelihood_ssm_td</a>         - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\loglikelihood_td">classes\+utils\@math\loglikelihood_td</a>             - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\lp2z">classes\+utils\@math\lp2z</a>                         -  converts a continous TF in to a discrete TF.
%   <a href="matlab:help classes\+utils\@math\math">classes\+utils\@math\math</a>                         -  helper class for math utility functions.
%   <a href="matlab:help classes\+utils\@math\mhsample">classes\+utils\@math\mhsample</a>                     - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\mhsample_td">classes\+utils\@math\mhsample_td</a>                  - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\mtxiirresp">classes\+utils\@math\mtxiirresp</a>                   -  calculate iir resp by matrix product
%   <a href="matlab:help classes\+utils\@math\mtxiirresp2">classes\+utils\@math\mtxiirresp2</a>                  -  calculate iir resp by matrix product
%   <a href="matlab:help classes\+utils\@math\mtxratresp2">classes\+utils\@math\mtxratresp2</a>                  - MTXIIRRESP calculate rational resp by matrix product
%   <a href="matlab:help classes\+utils\@math\mult">classes\+utils\@math\mult</a>                         - % Multiplication function designed specially for the
%   <a href="matlab:help classes\+utils\@math\music">classes\+utils\@math\music</a>                        -   Implements the heart of the MUSIC algorithm of line spectra estimation.
%   <a href="matlab:help classes\+utils\@math\ndeigcsd">classes\+utils\@math\ndeigcsd</a>                     -  calculates TFs from ND cross-correlated spectra.
%   <a href="matlab:help classes\+utils\@math\normalPDF">classes\+utils\@math\normalPDF</a>                    - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\overlapCorr">classes\+utils\@math\overlapCorr</a>                  -  Compute correlation introduced by segment overlapping
%   <a href="matlab:help classes\+utils\@math\pf2ss">classes\+utils\@math\pf2ss</a>                        -  Convert partial fraction models to state space matrices
%   <a href="matlab:help classes\+utils\@math\pfallps">classes\+utils\@math\pfallps</a>                      -  all pass filtering in order to stabilize TF poles and zeros.
%   <a href="matlab:help classes\+utils\@math\pfallps2">classes\+utils\@math\pfallps2</a>                     -  all pass filtering to stabilize TF poles and zeros.
%   <a href="matlab:help classes\+utils\@math\pfallpsyms">classes\+utils\@math\pfallpsyms</a>                   - (No help available)
%   <a href="matlab:help classes\+utils\@math\pfallpsyms2">classes\+utils\@math\pfallpsyms2</a>                  -  all pass filtering to stabilize TF poles and zeros.
%   <a href="matlab:help classes\+utils\@math\pfallpsymz">classes\+utils\@math\pfallpsymz</a>                   -  all pass filtering in order to stabilize TF poles and zeros.
%   <a href="matlab:help classes\+utils\@math\pfallpsymz2">classes\+utils\@math\pfallpsymz2</a>                  -  all pass filtering to stabilize TF poles and zeros.
%   <a href="matlab:help classes\+utils\@math\pfallpz">classes\+utils\@math\pfallpz</a>                      -  all pass filtering to stabilize TF poles and zeros.
%   <a href="matlab:help classes\+utils\@math\pfallpz2">classes\+utils\@math\pfallpz2</a>                     -  all pass filtering to stabilize TF poles and zeros.
%   <a href="matlab:help classes\+utils\@math\pfresp">classes\+utils\@math\pfresp</a>                       -  returns frequency response of a partial fraction TF.
%   <a href="matlab:help classes\+utils\@math\phase">classes\+utils\@math\phase</a>                        -  return the phase in degrees for a given complex input.
%   <a href="matlab:help classes\+utils\@math\ppplot">classes\+utils\@math\ppplot</a>                       -  makes probability-probability plot
%   <a href="matlab:help classes\+utils\@math\psd">classes\+utils\@math\psd</a>                          - UTILS.MATH.PSD: Pure Matlab function that performs the PSD using LTPDA machinery
%   <a href="matlab:help classes\+utils\@math\psd2tf">classes\+utils\@math\psd2tf</a>                       -  Input power spectral density (psd) and output a stable and minimum
%   <a href="matlab:help classes\+utils\@math\psd2wf">classes\+utils\@math\psd2wf</a>                       - PSD2WF: Input power spectral density (psd) and output a corresponding
%   <a href="matlab:help classes\+utils\@math\psdvectorfit">classes\+utils\@math\psdvectorfit</a>                 - AUTOCFIT performs a fitting loop to identify model order and parameters.
%   <a href="matlab:help classes\+utils\@math\psdzfit">classes\+utils\@math\psdzfit</a>                      - PSDZFIT: Fit discrete partial fraction model to PSD
%   <a href="matlab:help classes\+utils\@math\psre">classes\+utils\@math\psre</a>                         - (No help available)
%   <a href="matlab:help classes\+utils\@math\pzmodel2SSMats">classes\+utils\@math\pzmodel2SSMats</a>               - % computing the A matrix
%   <a href="matlab:help classes\+utils\@math\qqplot">classes\+utils\@math\qqplot</a>                       -  makes quantile-quantile plot
%   <a href="matlab:help classes\+utils\@math\rand">classes\+utils\@math\rand</a>                         -  return a random number between r1 and r2
%   <a href="matlab:help classes\+utils\@math\randelement">classes\+utils\@math\randelement</a>                  - RANDELEMENT(VECTOR,J) returns J random samples chosen in the VECTOR array.
%   <a href="matlab:help classes\+utils\@math\randomWalkGen">classes\+utils\@math\randomWalkGen</a>                - Generate a random walk
%   <a href="matlab:help classes\+utils\@math\regularizePSDForFit">classes\+utils\@math\regularizePSDForFit</a>          - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\ri2fq">classes\+utils\@math\ri2fq</a>                        -  Convert complex pole/zero into frequency/Q pole/zero representation.
%   <a href="matlab:help classes\+utils\@math\rjsample">classes\+utils\@math\rjsample</a>                     - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\rootmusic">classes\+utils\@math\rootmusic</a>                    -    Computes the frequencies and powers of sinusoids via the
%   <a href="matlab:help classes\+utils\@math\roundn">classes\+utils\@math\roundn</a>                       -   Round to multiple of 10^n
%   <a href="matlab:help classes\+utils\@math\slopefit">classes\+utils\@math\slopefit</a>                     -  returns the fit parameters for a linear fit of the form  y = m*x.
%   <a href="matlab:help classes\+utils\@math\spcorr">classes\+utils\@math\spcorr</a>                       -  calculate Spearman Rank-Order Correlation Coefficient
%   <a href="matlab:help classes\+utils\@math\spflat">classes\+utils\@math\spflat</a>                       -  measures the flatness of a given spectrum
%   <a href="matlab:help classes\+utils\@math\startpoles">classes\+utils\@math\startpoles</a>                   -  defines starting poles for fitting procedures ctfit, dtfit.
%   <a href="matlab:help classes\+utils\@math\stnr">classes\+utils\@math\stnr</a>                         - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\stopfit">classes\+utils\@math\stopfit</a>                      -  verify fit accuracy checking for specified condition.
%   <a href="matlab:help classes\+utils\@math\stpdf">classes\+utils\@math\stpdf</a>                        -   Probability density function for Student's T distribution
%   <a href="matlab:help classes\+utils\@math\unitStep">classes\+utils\@math\unitStep</a>                     - (No help available)
%   <a href="matlab:help classes\+utils\@math\unwrapdeg">classes\+utils\@math\unwrapdeg</a>                    -  Unwrap a phase vector given in degrees.
%   <a href="matlab:help classes\+utils\@math\vcfit">classes\+utils\@math\vcfit</a>                        -  Fits continuous models to frequency responses
%   <a href="matlab:help classes\+utils\@math\vdfit">classes\+utils\@math\vdfit</a>                        - VDFIT: Fit discrete models to frequency responses
%   <a href="matlab:help classes\+utils\@math\welchdft">classes\+utils\@math\welchdft</a>                     -  welch method with dft
%   <a href="matlab:help classes\+utils\@math\welchscale">classes\+utils\@math\welchscale</a>                   -  scales the output of welch to be in the required units
%   <a href="matlab:help classes\+utils\@math\wfun">classes\+utils\@math\wfun</a>                         -  defines weighting factor for fitting procedures ctfit, dtfit.
%   <a href="matlab:help classes\+utils\@math\xCovmat">classes\+utils\@math\xCovmat</a>                      - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\+utils\@math\ymcd">classes\+utils\@math\ymcd</a>                         - (No help available)
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\@models   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\@models\displayModelOverview">classes\+utils\@models\displayModelOverview</a>             -  displays the model overview in the MATLAB browser.
%   <a href="matlab:help classes\+utils\@models\functionForVersion">classes\+utils\@models\functionForVersion</a>               -  returns the function handle for a given version string
%   <a href="matlab:help classes\+utils\@models\getBuiltinModelSearchPaths">classes\+utils\@models\getBuiltinModelSearchPaths</a>       - % Get a list of user model directories
%   <a href="matlab:help classes\+utils\@models\getDefaultPlist">classes\+utils\@models\getDefaultPlist</a>                  -  returns a default plist for the model 
%   <a href="matlab:help classes\+utils\@models\getDescription">classes\+utils\@models\getDescription</a>                   -  builds a description string from the model
%   <a href="matlab:help classes\+utils\@models\getInfo">classes\+utils\@models\getInfo</a>                          -  Get Info Object
%   <a href="matlab:help classes\+utils\@models\mainFnc">classes\+utils\@models\mainFnc</a>                          -  is the main function call for all built-in models.
%   <a href="matlab:help classes\+utils\@models\makeBuiltInModel">classes\+utils\@models\makeBuiltInModel</a>                 -  prepares a new built-in model template
%   <a href="matlab:help classes\+utils\@models\models">classes\+utils\@models\models</a>                           -  helper class for built-in model utility functions.
%   <a href="matlab:help classes\+utils\@models\processModelInputs">classes\+utils\@models\processModelInputs</a>               -  processes the various input options for built-in
%   <a href="matlab:help classes\+utils\@models\template_built_in_model">classes\+utils\@models\template_built_in_model</a>          -  built-in model of class <CLASS> called <NAME>
%   <a href="matlab:help classes\+utils\@models\template_built_in_model_unittest">classes\+utils\@models\template_built_in_model_unittest</a> - test_<CLASS>_model_<NAME> - Returns a TestSuite with the test plan of the built-in model <NAME>.
%   <a href="matlab:help classes\+utils\@models\template_class_TestCaseModel">classes\+utils\@models\template_class_TestCaseModel</a>     - TCM_<MODULE>_Misc_<CLASS> - Defines the tests for all <CLASS> models in the <MODULE> module.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\@modules   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\@modules\buildModule">classes\+utils\@modules\buildModule</a>               -  builds a new module structure in the location specified by
%   <a href="matlab:help classes\+utils\@modules\copyHashFile">classes\+utils\@modules\copyHashFile</a>              -  copies an hash file for an LTPDA Extension module into the LTPDA hash folder
%   <a href="matlab:help classes\+utils\@modules\generateHash">classes\+utils\@modules\generateHash</a>              -  generates a hash file for an LTPDA Extension module
%   <a href="matlab:help classes\+utils\@modules\generateVCSHash">classes\+utils\@modules\generateVCSHash</a>           -  generates a hash file for an LTPDA Extension module
%   <a href="matlab:help classes\+utils\@modules\getExtensionDirs">classes\+utils\@modules\getExtensionDirs</a>          - % Get a list of user extension directories
%   <a href="matlab:help classes\+utils\@modules\installExtensions">classes\+utils\@modules\installExtensions</a>         -  all extension modules declared in the user's preferences.
%   <a href="matlab:help classes\+utils\@modules\installExtensionsForDir">classes\+utils\@modules\installExtensionsForDir</a>   -  installs the toolbox extensions found under the
%   <a href="matlab:help classes\+utils\@modules\makeMethod">classes\+utils\@modules\makeMethod</a>                -  prepares a new LTPDA method
%   <a href="matlab:help classes\+utils\@modules\method_template">classes\+utils\@modules\method_template</a>           - <METHOD_UPPER> performs actions on <CLASS> objects.
%   <a href="matlab:help classes\+utils\@modules\method_unittest_template">classes\+utils\@modules\method_unittest_template</a>  - TEST_<CLASS>_<METHOD> runs tests for the <CLASS> method <METHOD>.
%   <a href="matlab:help classes\+utils\@modules\moduleInfo">classes\+utils\@modules\moduleInfo</a>                -  returns a structure containing information about the module.
%   <a href="matlab:help classes\+utils\@modules\modules">classes\+utils\@modules\modules</a>                   -  helper class for LTPDA extension modules.
%   <a href="matlab:help classes\+utils\@modules\releaseModule">classes\+utils\@modules\releaseModule</a>             -  prepares an extension module for release.
%   <a href="matlab:help classes\+utils\@modules\uninstallExtensions">classes\+utils\@modules\uninstallExtensions</a>       -  all extension modules declared in the user's preferences.
%   <a href="matlab:help classes\+utils\@modules\uninstallExtensionsForDir">classes\+utils\@modules\uninstallExtensionsForDir</a> -  uninstalls the toolbox extensions found under the
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\@mysql   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\@mysql\connect">classes\+utils\@mysql\connect</a> -  Opens a connection to the given database.
%   <a href="matlab:help classes\+utils\@mysql\execute">classes\+utils\@mysql\execute</a> -  Execute the given QUERY with optional parameters VARARGIN
%   <a href="matlab:help classes\+utils\@mysql\mysql">classes\+utils\@mysql\mysql</a>   - UTILS.MYSQL  MySQL database utilities.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\@plottools   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\@plottools\addPlotProvenance">classes\+utils\@plottools\addPlotProvenance</a>          -  adds a discrete text label to a figure with details of
%   <a href="matlab:help classes\+utils\@plottools\addRepositoryPatch">classes\+utils\@plottools\addRepositoryPatch</a>         - ADDPLOTPROVENANCE adds a discrete text label to a figure with details of
%   <a href="matlab:help classes\+utils\@plottools\adjustErrorbarTick">classes\+utils\@plottools\adjustErrorbarTick</a>         -  Adjust the width of y-errorbars.
%   <a href="matlab:help classes\+utils\@plottools\allLines">classes\+utils\@plottools\allLines</a>                   -  Set all the line styles and widths on the current axes
%   <a href="matlab:help classes\+utils\@plottools\allMarkers">classes\+utils\@plottools\allMarkers</a>                 -  Set all the markers on the current axes
%   <a href="matlab:help classes\+utils\@plottools\allgrid">classes\+utils\@plottools\allgrid</a>                    -  Set all the grids to 'state'
%   <a href="matlab:help classes\+utils\@plottools\allowedLinestyles">classes\+utils\@plottools\allowedLinestyles</a>          -  returns a cell-array of valid MATLAB line styles.
%   <a href="matlab:help classes\+utils\@plottools\allowedMarkers">classes\+utils\@plottools\allowedMarkers</a>             -  returns a cell-array of valid MATLAB markers.
%   <a href="matlab:help classes\+utils\@plottools\allxaxis">classes\+utils\@plottools\allxaxis</a>                   - ALLXSCALE Set all the x scales on the current figure.
%   <a href="matlab:help classes\+utils\@plottools\allxlabel">classes\+utils\@plottools\allxlabel</a>                  -  Set all the x-axis labels on the current figure.
%   <a href="matlab:help classes\+utils\@plottools\allxscale">classes\+utils\@plottools\allxscale</a>                  -  Set all the x scales on the current figure.
%   <a href="matlab:help classes\+utils\@plottools\allyaxis">classes\+utils\@plottools\allyaxis</a>                   -  Set all the yaxis ranges on the current figure.
%   <a href="matlab:help classes\+utils\@plottools\allylabel">classes\+utils\@plottools\allylabel</a>                  -  Set all the y-axis labels on the current figure.
%   <a href="matlab:help classes\+utils\@plottools\allyscale">classes\+utils\@plottools\allyscale</a>                  -  Set all the Y scales on the current figure.
%   <a href="matlab:help classes\+utils\@plottools\backupDefaultPlotSettings">classes\+utils\@plottools\backupDefaultPlotSettings</a>  -  Backup the current default plot settings.
%   <a href="matlab:help classes\+utils\@plottools\box">classes\+utils\@plottools\box</a>                        -  applies box to all the given axes handles.
%   <a href="matlab:help classes\+utils\@plottools\cacheObjectInUserData">classes\+utils\@plottools\cacheObjectInUserData</a>      -  cache a copy of the object in the figure handle's
%   <a href="matlab:help classes\+utils\@plottools\consolidatePlot">classes\+utils\@plottools\consolidatePlot</a>            -  creates a collection object from the objects contained
%   <a href="matlab:help classes\+utils\@plottools\convertXunits">classes\+utils\@plottools\convertXunits</a>              - -----------------------------------------------
%   <a href="matlab:help classes\+utils\@plottools\cscale">classes\+utils\@plottools\cscale</a>                     -  Set the color range of the current figure
%   <a href="matlab:help classes\+utils\@plottools\datacursormode">classes\+utils\@plottools\datacursormode</a>             - Display the position of the data cursor
%   <a href="matlab:help classes\+utils\@plottools\errorbarxy">classes\+utils\@plottools\errorbarxy</a>                 -  Customizable error bar plot in X and Y direction
%   <a href="matlab:help classes\+utils\@plottools\fixAxisLabel">classes\+utils\@plottools\fixAxisLabel</a>               -  performs some substitutions on the axis label string.
%   <a href="matlab:help classes\+utils\@plottools\getAxes">classes\+utils\@plottools\getAxes</a>                    -  gets an array of axes from the given figure handle.
%   <a href="matlab:help classes\+utils\@plottools\getLegends">classes\+utils\@plottools\getLegends</a>                 -  gets an array of legends from the given figure handle.
%   <a href="matlab:help classes\+utils\@plottools\hold">classes\+utils\@plottools\hold</a>                       -  applies hold to all the given axes handles.
%   <a href="matlab:help classes\+utils\@plottools\horizontalLine">classes\+utils\@plottools\horizontalLine</a>             -  plots a horizontal line(s) to an axes handle.
%   <a href="matlab:help classes\+utils\@plottools\islinespec">classes\+utils\@plottools\islinespec</a>                 -  checks a string to the line spec syntax.
%   <a href="matlab:help classes\+utils\@plottools\label">classes\+utils\@plottools\label</a>                      -  makes the input string into a suitable string for using on plots.
%   <a href="matlab:help classes\+utils\@plottools\legendAdd">classes\+utils\@plottools\legendAdd</a>                  -  Add a string to the current legend.
%   <a href="matlab:help classes\+utils\@plottools\makeDraft">classes\+utils\@plottools\makeDraft</a>                  -  labels a figure as draft, or not.
%   <a href="matlab:help classes\+utils\@plottools\msuptitle">classes\+utils\@plottools\msuptitle</a>                  -  Puts a title above all subplots.
%   <a href="matlab:help classes\+utils\@plottools\plottools">classes\+utils\@plottools\plottools</a>                  -  class for tools to manipulate the current object/figure/axis.
%   <a href="matlab:help classes\+utils\@plottools\restoreDefaultPlotSettings">classes\+utils\@plottools\restoreDefaultPlotSettings</a> -  Restore the saved plot settings.
%   <a href="matlab:help classes\+utils\@plottools\retrieveFigure">classes\+utils\@plottools\retrieveFigure</a>             -  retreives a figure plist from an LTPDA repository.
%   <a href="matlab:help classes\+utils\@plottools\setLegendLocation">classes\+utils\@plottools\setLegendLocation</a>          -  gets an array of legends from the given figure handle
%   <a href="matlab:help classes\+utils\@plottools\submitFigure">classes\+utils\@plottools\submitFigure</a>               -  submits the given figure to an LTPDA repository.
%   <a href="matlab:help classes\+utils\@plottools\verticalLine">classes\+utils\@plottools\verticalLine</a>               -  plots a vertical line(s) to an axes handle.
%   <a href="matlab:help classes\+utils\@plottools\xaxis">classes\+utils\@plottools\xaxis</a>                      -  Set the X axis range of the current figure
%   <a href="matlab:help classes\+utils\@plottools\xlim">classes\+utils\@plottools\xlim</a>                       -  applies xlim to all the given axes handles.
%   <a href="matlab:help classes\+utils\@plottools\xscale">classes\+utils\@plottools\xscale</a>                     -  Set the X scale of the current axis
%   <a href="matlab:help classes\+utils\@plottools\xticks">classes\+utils\@plottools\xticks</a>                     -  set the input vector as the x-ticks of the current axis.
%   <a href="matlab:help classes\+utils\@plottools\yaxis">classes\+utils\@plottools\yaxis</a>                      -  Set the Y axis range of the current figure
%   <a href="matlab:help classes\+utils\@plottools\ylim">classes\+utils\@plottools\ylim</a>                       -  applies ylim to all the given axes handles.
%   <a href="matlab:help classes\+utils\@plottools\yscale">classes\+utils\@plottools\yscale</a>                     -  Set the Y scale of the current axis
%   <a href="matlab:help classes\+utils\@plottools\yticks">classes\+utils\@plottools\yticks</a>                     -  set the input vector as the y-ticks of the current axis.
%   <a href="matlab:help classes\+utils\@plottools\zaxis">classes\+utils\@plottools\zaxis</a>                      -  Set the Z axis range of the current figure
%   <a href="matlab:help classes\+utils\@plottools\zscale">classes\+utils\@plottools\zscale</a>                     -  Set the Z scale of the current axis
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\@prog   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\@prog\cell2str">classes\+utils\@prog\cell2str</a>             -  Convert a 2-D cell array to a string in MATLAB syntax.
%   <a href="matlab:help classes\+utils\@prog\convertComString">classes\+utils\@prog\convertComString</a>     - replaceString changes the input string accordingly to a predefined list of rules
%   <a href="matlab:help classes\+utils\@prog\csv">classes\+utils\@prog\csv</a>                  -  makes comma separated list of numbers
%   <a href="matlab:help classes\+utils\@prog\csvFile2struct">classes\+utils\@prog\csvFile2struct</a>       -  Reads a CSV file into a structure
%   <a href="matlab:help classes\+utils\@prog\cutString">classes\+utils\@prog\cutString</a>            -  Cuts a string to maximum length
%   <a href="matlab:help classes\+utils\@prog\dirscan">classes\+utils\@prog\dirscan</a>              -  recursively scans the given directory for subdirectories that match the given pattern.
%   <a href="matlab:help classes\+utils\@prog\disp">classes\+utils\@prog\disp</a>                 -  display a formatted string to screen.
%   <a href="matlab:help classes\+utils\@prog\fields2list">classes\+utils\@prog\fields2list</a>          -  splits a string containing fields seperated by ','
%   <a href="matlab:help classes\+utils\@prog\filescan">classes\+utils\@prog\filescan</a>             -  recursively scans the given directory for files that end in 'ext'
%   <a href="matlab:help classes\+utils\@prog\find_in_models">classes\+utils\@prog\find_in_models</a>       -  Search full block diagram hierarchy
%   <a href="matlab:help classes\+utils\@prog\findchildren">classes\+utils\@prog\findchildren</a>         - This function retrieves the handles of all blocks children of a given
%   <a href="matlab:help classes\+utils\@prog\findparent">classes\+utils\@prog\findparent</a>           - This function retrieves the handles of all blocks parents of a given
%   <a href="matlab:help classes\+utils\@prog\funchash">classes\+utils\@prog\funchash</a>             -  compute MD5 hash of a MATLAB m-file.
%   <a href="matlab:help classes\+utils\@prog\gcbsh">classes\+utils\@prog\gcbsh</a>                -  gets the handles for the currently selected blocks.
%   <a href="matlab:help classes\+utils\@prog\get_curr_m_file_path">classes\+utils\@prog\get_curr_m_file_path</a> -  returns the path for a mfile.
%   <a href="matlab:help classes\+utils\@prog\hash">classes\+utils\@prog\hash</a>                 -  - Convert an input variable into a message digest.
%   <a href="matlab:help classes\+utils\@prog\issubclass">classes\+utils\@prog\issubclass</a>           - % check this level
%   <a href="matlab:help classes\+utils\@prog\jcolor2mcolor">classes\+utils\@prog\jcolor2mcolor</a>        -  converts a java color object to a MATLAB color array.
%   <a href="matlab:help classes\+utils\@prog\label">classes\+utils\@prog\label</a>                -  makes the input string into a suitable string for using on plots.
%   <a href="matlab:help classes\+utils\@prog\mcell2str">classes\+utils\@prog\mcell2str</a>            -  recursively converts a cell-array to an executable string.
%   <a href="matlab:help classes\+utils\@prog\mcolor2jcolor">classes\+utils\@prog\mcolor2jcolor</a>        -  converts a MATLAB color to a java Color object.
%   <a href="matlab:help classes\+utils\@prog\mup2mat">classes\+utils\@prog\mup2mat</a>              -  converts Mupad string to MATLAB string
%   <a href="matlab:help classes\+utils\@prog\obj2binary">classes\+utils\@prog\obj2binary</a>           -  Converts an object to binary representation
%   <a href="matlab:help classes\+utils\@prog\obj2xml">classes\+utils\@prog\obj2xml</a>              -  Converts an object to an XML representation
%   <a href="matlab:help classes\+utils\@prog\prog">classes\+utils\@prog\prog</a>                 -  helper class for prog utility functions.
%   <a href="matlab:help classes\+utils\@prog\rnfield">classes\+utils\@prog\rnfield</a>              -  Rename Structure Fields.
%   <a href="matlab:help classes\+utils\@prog\rstruct">classes\+utils\@prog\rstruct</a>              -  recursively converts an object into a structure.
%   <a href="matlab:help classes\+utils\@prog\str2cells">classes\+utils\@prog\str2cells</a>            -  Take a single string and separate out individual "elements" into a new cell array.
%   <a href="matlab:help classes\+utils\@prog\strjoin">classes\+utils\@prog\strjoin</a>              -  Concatenate an array into a single string.
%   <a href="matlab:help classes\+utils\@prog\strpad">classes\+utils\@prog\strpad</a>               -  Pads a string with blank spaces until it is N characters long.
%   <a href="matlab:help classes\+utils\@prog\strs2cells">classes\+utils\@prog\strs2cells</a>           -  convert a set of input strings to a cell array.
%   <a href="matlab:help classes\+utils\@prog\struct2csvFile">classes\+utils\@prog\struct2csvFile</a>       -  Saves a structure as a CSV file.
%   <a href="matlab:help classes\+utils\@prog\structcat">classes\+utils\@prog\structcat</a>            -  concatonate structures to make one large structure.
%   <a href="matlab:help classes\+utils\@prog\wrapstring">classes\+utils\@prog\wrapstring</a>           -  wraps a string to a cell array of strings with each cell less than n characters long.
%   <a href="matlab:help classes\+utils\@prog\yes2true">classes\+utils\@prog\yes2true</a>             -  converts strings containing 'yes'/'no' into boolean true/false
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\@repository   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\@repository\adjustPlist">classes\+utils\@repository\adjustPlist</a>           - ADJUSTPLIST(CONN, PL) Removes CONN, USERNAME, PASSWORD parameters
%   <a href="matlab:help classes\+utils\@repository\createCollection">classes\+utils\@repository\createCollection</a>      -   Creates a new collection.
%   <a href="matlab:help classes\+utils\@repository\existObjectInDB">classes\+utils\@repository\existObjectInDB</a>       -  checks if a given name exist in the database table objmeta.name
%   <a href="matlab:help classes\+utils\@repository\findDuplicates">classes\+utils\@repository\findDuplicates</a>        -  returns the IDs of duplicated objects for given database.
%   <a href="matlab:help classes\+utils\@repository\getCollectionIDs">classes\+utils\@repository\getCollectionIDs</a>      -   Return the IDs of the objects composing a collection.
%   <a href="matlab:help classes\+utils\@repository\getIDfromUUID">classes\+utils\@repository\getIDfromUUID</a>         -  returns the UUID for given database IDs.
%   <a href="matlab:help classes\+utils\@repository\getLatestObject">classes\+utils\@repository\getLatestObject</a>       -  Performs a mySQL query on a LTPDA repository and returns
%   <a href="matlab:help classes\+utils\@repository\getObjectIdInTimespan">classes\+utils\@repository\getObjectIdInTimespan</a> -  returns the object ID for a given timespan which fits into the timespan of the metadata.keywords.
%   <a href="matlab:help classes\+utils\@repository\getObjectMetaData">classes\+utils\@repository\getObjectMetaData</a>     -  Retrieved objects metadata from the repository
%   <a href="matlab:help classes\+utils\@repository\getObjectType">classes\+utils\@repository\getObjectType</a>         -   Return the type of the object.
%   <a href="matlab:help classes\+utils\@repository\getUUIDfromID">classes\+utils\@repository\getUUIDfromID</a>         -  returns the UUID for given database IDs.
%   <a href="matlab:help classes\+utils\@repository\getUser">classes\+utils\@repository\getUser</a>               -   Return username and userid of the current database user.
%   <a href="matlab:help classes\+utils\@repository\insertObjMetadata">classes\+utils\@repository\insertObjMetadata</a>     - an utility to insert entries for various object metadata in the
%   <a href="matlab:help classes\+utils\@repository\insertObjMetadataV1">classes\+utils\@repository\insertObjMetadataV1</a>   - an utility to insert entries for various object metadata in the
%   <a href="matlab:help classes\+utils\@repository\listDatabases">classes\+utils\@repository\listDatabases</a>         -  returns a list of database names on the server.
%   <a href="matlab:help classes\+utils\@repository\report">classes\+utils\@repository\report</a>                - UTILS.REPOSITORY.REPORT Dumps the records of a database to a file
%   <a href="matlab:help classes\+utils\@repository\repository">classes\+utils\@repository\repository</a>            - UTILS.REPOSITORY  Utility functions to operate with LTPDA Repositories
%   <a href="matlab:help classes\+utils\@repository\search">classes\+utils\@repository\search</a>                -  searches for objects by name and timespan in a repository
%   <a href="matlab:help classes\+utils\@repository\updateObjMetadata">classes\+utils\@repository\updateObjMetadata</a>     - an utility to update entries for various object metadata in the
%   <a href="matlab:help classes\+utils\@repository\updateObjMetadataV1">classes\+utils\@repository\updateObjMetadataV1</a>   - an utility to update entries for various object metadata in the
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\@timetools   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\@timetools\getTimezone">classes\+utils\@timetools\getTimezone</a>   - GETIMEZONE Get the list of supported time zones.
%   <a href="matlab:help classes\+utils\@timetools\gps2utc">classes\+utils\@timetools\gps2utc</a>       -  converts GPS seconds to UTC time.
%   <a href="matlab:help classes\+utils\@timetools\gpsnow">classes\+utils\@timetools\gpsnow</a>        - Returns the current system time as a GPS second.
%   <a href="matlab:help classes\+utils\@timetools\reformat_date">classes\+utils\@timetools\reformat_date</a> -  reformats the input date
%   <a href="matlab:help classes\+utils\@timetools\timetools">classes\+utils\@timetools\timetools</a>     -  class for tools to manipulate the time.
%   <a href="matlab:help classes\+utils\@timetools\utc2gps">classes\+utils\@timetools\utc2gps</a>       -  Converts UTC time to GPS seconds.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\+utils\@xml   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\+utils\@xml\attachCellToDom">classes\+utils\@xml\attachCellToDom</a>       - % Store the cell shape in the parent node
%   <a href="matlab:help classes\+utils\@xml\attachCellstrToDom">classes\+utils\@xml\attachCellstrToDom</a>    - % Store the original shape of the string
%   <a href="matlab:help classes\+utils\@xml\attachCharToDom">classes\+utils\@xml\attachCharToDom</a>       - % Store the original shape of the string
%   <a href="matlab:help classes\+utils\@xml\attachEmptyObjectNode">classes\+utils\@xml\attachEmptyObjectNode</a> - emptyNode.setAttribute('shape', sprintf('%dx%d', size(objs)));
%   <a href="matlab:help classes\+utils\@xml\attachMatrixToDom">classes\+utils\@xml\attachMatrixToDom</a>     - shape = sprintf('%dx%d', size(numbers));
%   <a href="matlab:help classes\+utils\@xml\attachNumberToDom">classes\+utils\@xml\attachNumberToDom</a>     - % Store the original shape
%   <a href="matlab:help classes\+utils\@xml\attachStructToDom">classes\+utils\@xml\attachStructToDom</a>     - % Store the structure shape in the parent node
%   <a href="matlab:help classes\+utils\@xml\attachSymToDom">classes\+utils\@xml\attachSymToDom</a>        - % Attach the string as a content to the parent node
%   <a href="matlab:help classes\+utils\@xml\attachVectorToDom">classes\+utils\@xml\attachVectorToDom</a>     - shape = sprintf('%dx%d', size(numbers));
%   <a href="matlab:help classes\+utils\@xml\cellstr2str">classes\+utils\@xml\cellstr2str</a>           - % Check if empty cell or empty string
%   <a href="matlab:help classes\+utils\@xml\getCell">classes\+utils\@xml\getCell</a>               - % Get shape
%   <a href="matlab:help classes\+utils\@xml\getCellstr">classes\+utils\@xml\getCellstr</a>            - % Get the shape from the attribute
%   <a href="matlab:help classes\+utils\@xml\getChildByName">classes\+utils\@xml\getChildByName</a>        - expression = XPATH.compile(sprintf('child::%s', childName));
%   <a href="matlab:help classes\+utils\@xml\getChildrenByName">classes\+utils\@xml\getChildrenByName</a>     - expression = XPATH.compile(sprintf('child::%s', childName));
%   <a href="matlab:help classes\+utils\@xml\getFromType">classes\+utils\@xml\getFromType</a>           - % It might be possible that a NON LTPDA class is stored inside a LTPDA
%   <a href="matlab:help classes\+utils\@xml\getHistoryFromUUID">classes\+utils\@xml\getHistoryFromUUID</a>    - error('### Didn''t find a history object with the UUID [%s]', inhistUUID)
%   <a href="matlab:help classes\+utils\@xml\getMatrix">classes\+utils\@xml\getMatrix</a>             - % Get node name
%   <a href="matlab:help classes\+utils\@xml\getNumber">classes\+utils\@xml\getNumber</a>             - % Special case for an empty double.
%   classes\+utils\@xml\getObject             - (No help available)
%   <a href="matlab:help classes\+utils\@xml\getShape">classes\+utils\@xml\getShape</a>              -  = sscanf(utils.xml.mchar(node.getAttribute('shape')), '%dx%d')';
%   <a href="matlab:help classes\+utils\@xml\getString">classes\+utils\@xml\getString</a>             - % Get node content
%   classes\+utils\@xml\getStringFromNode     - (No help available)
%   <a href="matlab:help classes\+utils\@xml\getStruct">classes\+utils\@xml\getStruct</a>             - % Get shape
%   <a href="matlab:help classes\+utils\@xml\getSym">classes\+utils\@xml\getSym</a>                - % Get node content
%   classes\+utils\@xml\getType               - (No help available)
%   <a href="matlab:help classes\+utils\@xml\getVector">classes\+utils\@xml\getVector</a>             - % Get node name
%   <a href="matlab:help classes\+utils\@xml\mat2str">classes\+utils\@xml\mat2str</a>               -  overloads the mat2str operator to set the precision at a central place.
%   classes\+utils\@xml\mchar                 - (No help available)
%   <a href="matlab:help classes\+utils\@xml\num2str">classes\+utils\@xml\num2str</a>               -  uses sprintf to convert a data vector to a string with a fixed precision.
%   <a href="matlab:help classes\+utils\@xml\prepareString">classes\+utils\@xml\prepareString</a>         - % Convert the string into one line.
%   classes\+utils\@xml\prepareVersionString  - (No help available)
%   <a href="matlab:help classes\+utils\@xml\read_sinfo_xml">classes\+utils\@xml\read_sinfo_xml</a>        -  reads a submission info struct from a simple XML file.
%   <a href="matlab:help classes\+utils\@xml\recoverString">classes\+utils\@xml\recoverString</a>         - % Recover the new line character.
%   classes\+utils\@xml\recoverVersionString  - (No help available)
%   <a href="matlab:help classes\+utils\@xml\save_sinfo_xml">classes\+utils\@xml\save_sinfo_xml</a>        -  saves a submission info struct to a simple XML file.
%   <a href="matlab:help classes\+utils\@xml\xml">classes\+utils\@xml\xml</a>                   -  helper class for helpful xml functions.
%   <a href="matlab:help classes\+utils\@xml\xmlread">classes\+utils\@xml\xmlread</a>               -  Reads a XML object
%   <a href="matlab:help classes\+utils\@xml\xmlwrite">classes\+utils\@xml\xmlwrite</a>              -  Add an object to a xml DOM project.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@LTPDADatabaseConnectionManager   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@LTPDADatabaseConnectionManager\LTPDADatabaseConnectionManager">classes\@LTPDADatabaseConnectionManager\LTPDADatabaseConnectionManager</a> - end % private properties
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@LTPDAModelBrowser   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@LTPDAModelBrowser\LTPDAModelBrowser">classes\@LTPDAModelBrowser\LTPDAModelBrowser</a> -  is a graphical user interface for browsing the
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@LTPDANamedItem   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@LTPDANamedItem\LTPDANamedItem">classes\@LTPDANamedItem\LTPDANamedItem</a>      -  is a base class for naming various items.
%   <a href="matlab:help classes\@LTPDANamedItem\attachToDom">classes\@LTPDANamedItem\attachToDom</a>         - % Create empty ao node with the attribute 'shape'
%   <a href="matlab:help classes\@LTPDANamedItem\copy">classes\@LTPDANamedItem\copy</a>                -  makes a (deep) copy of the input LTPDANamedItem objects.
%   <a href="matlab:help classes\@LTPDANamedItem\disp">classes\@LTPDANamedItem\disp</a>                -  display plist object.
%   <a href="matlab:help classes\@LTPDANamedItem\fromDom">classes\@LTPDANamedItem\fromDom</a>             - %%%%%%%%%% Call super-class
%   <a href="matlab:help classes\@LTPDANamedItem\fromStruct">classes\@LTPDANamedItem\fromStruct</a>          -  creates from a structure a LTPDANAMEDITEM object.
%   <a href="matlab:help classes\@LTPDANamedItem\ismember">classes\@LTPDANamedItem\ismember</a>            -  returns true for set member.
%   <a href="matlab:help classes\@LTPDANamedItem\listContentsOfGroup">classes\@LTPDANamedItem\listContentsOfGroup</a> -  lists the MTelemetry constructors for the
%   <a href="matlab:help classes\@LTPDANamedItem\listGroups">classes\@LTPDANamedItem\listGroups</a>          -  lists the different telemetry groups.
%   <a href="matlab:help classes\@LTPDANamedItem\loadobj">classes\@LTPDANamedItem\loadobj</a>             -  is called by the load function for user objects.
%   <a href="matlab:help classes\@LTPDANamedItem\obj2cmds">classes\@LTPDANamedItem\obj2cmds</a>            - This method is only necessary for the LTPDA method type() which
%   <a href="matlab:help classes\@LTPDANamedItem\retrieve">classes\@LTPDANamedItem\retrieve</a>            -  retrieves LTPDA objects from an LTPDA repository with help of a LTPDANamedItem object.
%   <a href="matlab:help classes\@LTPDANamedItem\sort">classes\@LTPDANamedItem\sort</a>                -  returns a sorted set of parameters.
%   <a href="matlab:help classes\@LTPDANamedItem\string">classes\@LTPDANamedItem\string</a>              -  converts an LTPDANamedItem object to a command string which will recreate the plist object.
%   <a href="matlab:help classes\@LTPDANamedItem\toHTML">classes\@LTPDANamedItem\toHTML</a>              -  creates and HTML table of the input objects
%   <a href="matlab:help classes\@LTPDANamedItem\unique">classes\@LTPDANamedItem\unique</a>              -  returns a set of parameters where non have the same name.
%   <a href="matlab:help classes\@LTPDANamedItem\update_struct">classes\@LTPDANamedItem\update_struct</a>       -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@LTPDARepositoryQuery   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@LTPDARepositoryQuery\LTPDARepositoryQuery">classes\@LTPDARepositoryQuery\LTPDARepositoryQuery</a> -  is a graphical user interface for query the LTPDA repository.
%   <a href="matlab:help classes\@LTPDARepositoryQuery\cb_executeQuery">classes\@LTPDARepositoryQuery\cb_executeQuery</a>      -  callback for executing the query
%   <a href="matlab:help classes\@LTPDARepositoryQuery\cb_guiClosed">classes\@LTPDARepositoryQuery\cb_guiClosed</a>         -  callback for closing the LTPDARepositoryQuery GUI
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@LTPDAprefs   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@LTPDAprefs\LTPDAprefs">classes\@LTPDAprefs\LTPDAprefs</a>             -  is a graphical user interface for editing LTPDA preferences.
%   <a href="matlab:help classes\@LTPDAprefs\cb_addExtensionPath">classes\@LTPDAprefs\cb_addExtensionPath</a>    -  callback for adding a extensions path
%   <a href="matlab:help classes\@LTPDAprefs\cb_guiClosed">classes\@LTPDAprefs\cb_guiClosed</a>           -  callback for closing the LTPDAprefs GUI
%   <a href="matlab:help classes\@LTPDAprefs\cb_plotPrefsChanged">classes\@LTPDAprefs\cb_plotPrefsChanged</a>    - cb_addModelPath callback for adding a model path
%   <a href="matlab:help classes\@LTPDAprefs\cb_removeExtensionPath">classes\@LTPDAprefs\cb_removeExtensionPath</a> -  callback for removing a extensions path
%   <a href="matlab:help classes\@LTPDAprefs\cb_timeformatChanged">classes\@LTPDAprefs\cb_timeformatChanged</a>   - cb_verboseLevelChanged callback if the user change the verbose level
%   <a href="matlab:help classes\@LTPDAprefs\cb_timezoneChanged">classes\@LTPDAprefs\cb_timezoneChanged</a>     - cb_verboseLevelChanged callback if the user change the verbose level
%   <a href="matlab:help classes\@LTPDAprefs\cb_verboseLevelChanged">classes\@LTPDAprefs\cb_verboseLevelChanged</a> -  callback if the user change the verbose level
%   <a href="matlab:help classes\@LTPDAprefs\getPreferences">classes\@LTPDAprefs\getPreferences</a>         -  returns the LTPDA preference instance.
%   <a href="matlab:help classes\@LTPDAprefs\loadPrefs">classes\@LTPDAprefs\loadPrefs</a>              -  a static method which loads the preferences from a XML file.
%   <a href="matlab:help classes\@LTPDAprefs\setApplicationData">classes\@LTPDAprefs\setApplicationData</a>     -  sets the application data from the preferences object.
%   <a href="matlab:help classes\@LTPDAprefs\setPreference">classes\@LTPDAprefs\setPreference</a>          -  A static method which sets a new value to the specified preference.
%   <a href="matlab:help classes\@LTPDAprefs\upgradeFromPlist">classes\@LTPDAprefs\upgradeFromPlist</a>       -  upgrades the old preference strucure to the new structure.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@MCMC   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@MCMC\MCMC">classes\@MCMC\MCMC</a>                 -  - Markov Chain Monte Carlo algorithm
%   <a href="matlab:help classes\@MCMC\ao2strucArrays">classes\@MCMC\ao2strucArrays</a>       - AO2NUMMATRICES.m
%   <a href="matlab:help classes\@MCMC\attachToDom">classes\@MCMC\attachToDom</a>          - % Create empty ao node with the attribute 'shape'
%   <a href="matlab:help classes\@MCMC\buildLogLikelihood">classes\@MCMC\buildLogLikelihood</a>   - (No help available)
%   <a href="matlab:help classes\@MCMC\buildplist">classes\@MCMC\buildplist</a>           - (No help available)
%   <a href="matlab:help classes\@MCMC\calculateCovariance">classes\@MCMC\calculateCovariance</a>  - (No help available)
%   <a href="matlab:help classes\@MCMC\checkDiffStep">classes\@MCMC\checkDiffStep</a>        - (No help available)
%   <a href="matlab:help classes\@MCMC\checkP0class">classes\@MCMC\checkP0class</a>         - (No help available)
%   <a href="matlab:help classes\@MCMC\checkXo">classes\@MCMC\checkXo</a>              - --------------------------------------------------------------------------
%   <a href="matlab:help classes\@MCMC\collectOutputAOs">classes\@MCMC\collectOutputAOs</a>     - (No help available)
%   <a href="matlab:help classes\@MCMC\computeBeta">classes\@MCMC\computeBeta</a>          - (No help available)
%   <a href="matlab:help classes\@MCMC\computeICSMatrix">classes\@MCMC\computeICSMatrix</a>     - (No help available)
%   <a href="matlab:help classes\@MCMC\copy">classes\@MCMC\copy</a>                 -  makes a (deep) copy of the input MCMCs.
%   <a href="matlab:help classes\@MCMC\decision">classes\@MCMC\decision</a>             - DECISION: Compute the MH acceptance ratio
%   <a href="matlab:help classes\@MCMC\defineLogLikelihood">classes\@MCMC\defineLogLikelihood</a>  - (No help available)
%   <a href="matlab:help classes\@MCMC\drawAdaptiveSample">classes\@MCMC\drawAdaptiveSample</a>   - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@MCMC\drawSample">classes\@MCMC\drawSample</a>           - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@MCMC\fromDom">classes\@MCMC\fromDom</a>              - % Get shape
%   <a href="matlab:help classes\@MCMC\fromStruct">classes\@MCMC\fromStruct</a>           -  creates from a structure a TIMESPAN object.
%   <a href="matlab:help classes\@MCMC\getLikelihood">classes\@MCMC\getLikelihood</a>        -  Get the likelihood function in a mfh object.
%   classes\@MCMC\getParamNames        - (No help available)
%   <a href="matlab:help classes\@MCMC\getPest">classes\@MCMC\getPest</a>              -  Get the estimated parameters in a pest object.
%   <a href="matlab:help classes\@MCMC\handle_data_for_icsm">classes\@MCMC\handle_data_for_icsm</a> - (No help available)
%   <a href="matlab:help classes\@MCMC\initObjectWithSize">classes\@MCMC\initObjectWithSize</a>   - (No help available)
%   <a href="matlab:help classes\@MCMC\jump">classes\@MCMC\jump</a>                 - JUMP: Propose new point on the parameter space
%   <a href="matlab:help classes\@MCMC\loadobj">classes\@MCMC\loadobj</a>              -  is called by the load function for user objects.
%   <a href="matlab:help classes\@MCMC\logDecision">classes\@MCMC\logDecision</a>          - LOGDECISION: Compute the logarithm of the MH acceptance ratio
%   <a href="matlab:help classes\@MCMC\main">classes\@MCMC\main</a>                 - (No help available)
%   <a href="matlab:help classes\@MCMC\mhsample">classes\@MCMC\mhsample</a>             -  The Metropolis - Hastings algorithm
%   <a href="matlab:help classes\@MCMC\mhutils">classes\@MCMC\mhutils</a>              - --------------------------------------------------------------------------
%   <a href="matlab:help classes\@MCMC\performDataChecks">classes\@MCMC\performDataChecks</a>    - (No help available)
%   <a href="matlab:help classes\@MCMC\plotLogLikelihood">classes\@MCMC\plotLogLikelihood</a>    - (No help available)
%   <a href="matlab:help classes\@MCMC\preprocess">classes\@MCMC\preprocess</a>           - MCMC.preprocess.
%   <a href="matlab:help classes\@MCMC\preprocessMFH">classes\@MCMC\preprocessMFH</a>        - (No help available)
%   <a href="matlab:help classes\@MCMC\preprocessModel">classes\@MCMC\preprocessModel</a>      - --------------------------------------------------------------------------
%   <a href="matlab:help classes\@MCMC\processChain">classes\@MCMC\processChain</a>         - PROCESSCHAIN: Get the statisticts of the MCMC Chain
%   <a href="matlab:help classes\@MCMC\setInputs">classes\@MCMC\setInputs</a>            - (No help available)
%   <a href="matlab:help classes\@MCMC\setModel">classes\@MCMC\setModel</a>             -  Set the model of the investigation.
%   <a href="matlab:help classes\@MCMC\setNoise">classes\@MCMC\setNoise</a>             -  Set the measured noise of the experiment.
%   <a href="matlab:help classes\@MCMC\simplex">classes\@MCMC\simplex</a>              -  Multidimensional unconstrained nonlinear minimization (Nelder-Mead)
%   <a href="matlab:help classes\@MCMC\updateFIM">classes\@MCMC\updateFIM</a>            - --------------------------------------------------------------------------
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@MCMC\tests   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@MCMC\tests\test_MCMC_calculateCovariance">classes\@MCMC\tests\test_MCMC_calculateCovariance</a> - (No help available)
%   <a href="matlab:help classes\@MCMC\tests\test_MCMC_convergence">classes\@MCMC\tests\test_MCMC_convergence</a>         - (No help available)
%   <a href="matlab:help classes\@MCMC\tests\test_MCMC_default_plist">classes\@MCMC\tests\test_MCMC_default_plist</a>       - (No help available)
%   <a href="matlab:help classes\@MCMC\tests\test_MCMC_getInfo">classes\@MCMC\tests\test_MCMC_getInfo</a>             - (No help available)
%   <a href="matlab:help classes\@MCMC\tests\test_MCMC_input_types">classes\@MCMC\tests\test_MCMC_input_types</a>         - (No help available)
%   <a href="matlab:help classes\@MCMC\tests\test_MCMC_loglikelihoods">classes\@MCMC\tests\test_MCMC_loglikelihoods</a>      - (No help available)
%   <a href="matlab:help classes\@MCMC\tests\test_MCMC_simplex">classes\@MCMC\tests\test_MCMC_simplex</a>             - (No help available)
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@ao   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@ao\abs">classes\@ao\abs</a>                      -  overloads the Absolute value method for analysis objects.
%   <a href="matlab:help classes\@ao\acos">classes\@ao\acos</a>                     -  overloads the acos method for analysis objects.
%   <a href="matlab:help classes\@ao\all">classes\@ao\all</a>                      -  overloads the all operator for analysis objects. True if all elements 
%   <a href="matlab:help classes\@ao\and">classes\@ao\and</a>                      -  (&) overloads the and (&) method for analysis objects.
%   <a href="matlab:help classes\@ao\angle">classes\@ao\angle</a>                    -  overloads the angle operator for analysis objects.
%   <a href="matlab:help classes\@ao\any">classes\@ao\any</a>                      -  overloads the any operator for analysis objects. True if any element 
%   <a href="matlab:help classes\@ao\ao">classes\@ao\ao</a>                       -  analysis object class constructor.
%   <a href="matlab:help classes\@ao\ao2numMatrices">classes\@ao\ao2numMatrices</a>           -  transforms AO objects to numerical matrices.
%   <a href="matlab:help classes\@ao\applymethod">classes\@ao\applymethod</a>              -  to the analysis object
%   <a href="matlab:help classes\@ao\applyoperator">classes\@ao\applyoperator</a>            -  to the analysis object
%   <a href="matlab:help classes\@ao\asin">classes\@ao\asin</a>                     -  overloads the asin method for analysis objects.
%   <a href="matlab:help classes\@ao\atan">classes\@ao\atan</a>                     -  overloads the atan method for analysis objects.
%   <a href="matlab:help classes\@ao\atan2">classes\@ao\atan2</a>                    -  overloads the atan2 operator for analysis objects. Four quadrant inverse tangent.
%   <a href="matlab:help classes\@ao\attachToDom">classes\@ao\attachToDom</a>              - % Create empty ao node with the attribute 'shape'
%   <a href="matlab:help classes\@ao\average">classes\@ao\average</a>                  -  averages aos point-by-point
%   <a href="matlab:help classes\@ao\bandpass">classes\@ao\bandpass</a>                 -  AOs containing time-series data.
%   <a href="matlab:help classes\@ao\bandreject">classes\@ao\bandreject</a>               -  AOs containing time-series data.
%   <a href="matlab:help classes\@ao\bicohere">classes\@ao\bicohere</a>                 -  computes the bicoherence of two input time-series
%   <a href="matlab:help classes\@ao\bilinfit">classes\@ao\bilinfit</a>                 -  is a linear fitting tool
%   <a href="matlab:help classes\@ao\bin_data">classes\@ao\bin_data</a>                 -  rebins aos data, on logarithmic scale, linear scale, or arbitrarly chosen.
%   <a href="matlab:help classes\@ao\blrms">classes\@ao\blrms</a>                    -  computes band-limited RMS trends of the input time-series.
%   <a href="matlab:help classes\@ao\buildWhitener1D">classes\@ao\buildWhitener1D</a>          -  builds a whitening filter based on the input frequency-series.
%   <a href="matlab:help classes\@ao\cast">classes\@ao\cast</a>                     -  - converts the numeric values in an AO to the data type specified by type.
%   <a href="matlab:help classes\@ao\cat">classes\@ao\cat</a>                      -  concatenate AOs into a row vector.
%   <a href="matlab:help classes\@ao\cdfplot">classes\@ao\cdfplot</a>                  -  makes cumulative distribution plot
%   <a href="matlab:help classes\@ao\cgfill">classes\@ao\cgfill</a>                   -  fills specified gaps in the data given an inital guess for the spectrum.
%   <a href="matlab:help classes\@ao\char">classes\@ao\char</a>                     -  overloads char() function for analysis objects.
%   <a href="matlab:help classes\@ao\checkDataType">classes\@ao\checkDataType</a>            -  Throws an error for AOs with a specified data-type.
%   <a href="matlab:help classes\@ao\checkNumericDataTypes">classes\@ao\checkNumericDataTypes</a>    -  Throws an error for AOs if the numeric data types doesn't match to an AO method.
%   <a href="matlab:help classes\@ao\checkTimestamps">classes\@ao\checkTimestamps</a>          -  performs a check on the timestamps of the input AOs.
%   <a href="matlab:help classes\@ao\clearErrors">classes\@ao\clearErrors</a>              - % Set units
%   <a href="matlab:help classes\@ao\cohere">classes\@ao\cohere</a>                   -  estimates the coherence between time-series objects
%   <a href="matlab:help classes\@ao\complex">classes\@ao\complex</a>                  -  overloads the complex operator for Analysis objects.
%   <a href="matlab:help classes\@ao\compute">classes\@ao\compute</a>                  -  performs the given operations on the input AOs.
%   <a href="matlab:help classes\@ao\computeDFT">classes\@ao\computeDFT</a>               -  Computes DFT using FFT or Goertzel
%   <a href="matlab:help classes\@ao\computeperiodogram">classes\@ao\computeperiodogram</a>       -    Periodogram spectral estimation.
%   <a href="matlab:help classes\@ao\confint">classes\@ao\confint</a>                  -  Calculates confidence levels and variance for psd, lpsd, cohere, lcohere and curvefit parameters
%   <a href="matlab:help classes\@ao\conj">classes\@ao\conj</a>                     -  overloads the conjugate operator for analysis objects.
%   <a href="matlab:help classes\@ao\consolidate">classes\@ao\consolidate</a>              -  resamples all input AOs onto the same time grid.
%   <a href="matlab:help classes\@ao\conv">classes\@ao\conv</a>                     -  vector convolution.
%   <a href="matlab:help classes\@ao\conv_noisegen">classes\@ao\conv_noisegen</a>            -  calls the matlab function conv.m to convolute poles and zeros from a given pzmodel
%   <a href="matlab:help classes\@ao\convert">classes\@ao\convert</a>                  -  perform various conversions on the ao.
%   <a href="matlab:help classes\@ao\copy">classes\@ao\copy</a>                     -  makes a (deep) copy of the input AOs.
%   <a href="matlab:help classes\@ao\corr">classes\@ao\corr</a>                     -  estimate linear correlation coefficients.
%   <a href="matlab:help classes\@ao\cos">classes\@ao\cos</a>                      -  overloads the cos method for analysis objects.
%   <a href="matlab:help classes\@ao\cov">classes\@ao\cov</a>                      -  estimate covariance of data streams.
%   <a href="matlab:help classes\@ao\cpsd">classes\@ao\cpsd</a>                     -  estimates the cross-spectral density between time-series objects
%   <a href="matlab:help classes\@ao\crb">classes\@ao\crb</a>                      -  computes the inverse of the Fisher Matrix
%   <a href="matlab:help classes\@ao\crbound">classes\@ao\crbound</a>                  -  computes the inverse of the Fisher Matrix
%   <a href="matlab:help classes\@ao\csvGenerateData">classes\@ao\csvGenerateData</a>          -  Default method to convert a analysis object into csv data.
%   <a href="matlab:help classes\@ao\ctranspose">classes\@ao\ctranspose</a>               -  overloads the ' operator for Analysis Objects.
%   <a href="matlab:help classes\@ao\cumsum">classes\@ao\cumsum</a>                   -  overloads the cumsum operator for analysis objects.
%   <a href="matlab:help classes\@ao\delay">classes\@ao\delay</a>                    -  delays a time-series using various methods.
%   <a href="matlab:help classes\@ao\delayEstimate">classes\@ao\delayEstimate</a>            -  estimates the delay between two AOs
%   <a href="matlab:help classes\@ao\delay_fractional_core">classes\@ao\delay_fractional_core</a>    -  core method to implement fractional delay
%   <a href="matlab:help classes\@ao\demux">classes\@ao\demux</a>                    -  splits the input vector of AOs into a number of output AOs.
%   <a href="matlab:help classes\@ao\det">classes\@ao\det</a>                      -  overloads the determinant function for analysis objects.
%   <a href="matlab:help classes\@ao\detectOutliers">classes\@ao\detectOutliers</a>           -  locates outliers in data.
%   <a href="matlab:help classes\@ao\detrend">classes\@ao\detrend</a>                  -  detrends the input analysis object using a polynomial of degree N.
%   <a href="matlab:help classes\@ao\dft">classes\@ao\dft</a>                      -  computes the DFT of the input time-series at the requested frequencies.
%   <a href="matlab:help classes\@ao\diag">classes\@ao\diag</a>                     -  overloads the diagonal operator for analysis objects.
%   <a href="matlab:help classes\@ao\diff">classes\@ao\diff</a>                     -  differentiates the data in AO.
%   <a href="matlab:help classes\@ao\diff2p_core">classes\@ao\diff2p_core</a>              - (No help available)
%   <a href="matlab:help classes\@ao\diff3p_core">classes\@ao\diff3p_core</a>              - (No help available)
%   <a href="matlab:help classes\@ao\diff5p_core">classes\@ao\diff5p_core</a>              - (No help available)
%   <a href="matlab:help classes\@ao\disp">classes\@ao\disp</a>                     -  implement terminal display for analysis object.
%   <a href="matlab:help classes\@ao\dispersionLoop">classes\@ao\dispersionLoop</a>           - dipersionLoop computes the dispersion function in loop
%   <a href="matlab:help classes\@ao\double">classes\@ao\double</a>                   -  overloads double() function for analysis objects.
%   <a href="matlab:help classes\@ao\downsample">classes\@ao\downsample</a>               -  decimate AOs by an integer factor.
%   <a href="matlab:help classes\@ao\dropduplicates">classes\@ao\dropduplicates</a>           -  drops all duplicate samples in time-series AOs.
%   <a href="matlab:help classes\@ao\dsmean">classes\@ao\dsmean</a>                   -  performs a simple downsampling by taking the mean of every N samples.
%   <a href="matlab:help classes\@ao\dtfe">classes\@ao\dtfe</a>                     -  estimates transfer function between time-series objects.
%   <a href="matlab:help classes\@ao\dx">classes\@ao\dx</a>                       -  Get the data property 'dx'.
%   <a href="matlab:help classes\@ao\dy">classes\@ao\dy</a>                       -  Get the data property 'dy'.
%   <a href="matlab:help classes\@ao\dz">classes\@ao\dz</a>                       - DX Get the data property 'dz'.
%   <a href="matlab:help classes\@ao\ecdf">classes\@ao\ecdf</a>                     -  calculate empirical cumulative distribution function
%   <a href="matlab:help classes\@ao\edgedetect">classes\@ao\edgedetect</a>               -  detects edges in a binary pulse-train.
%   <a href="matlab:help classes\@ao\eig">classes\@ao\eig</a>                      -  overloads the eigenvalues/eigenvectors function for analysis objects.
%   <a href="matlab:help classes\@ao\elementOp">classes\@ao\elementOp</a>                -  applies the given operator to the data.
%   <a href="matlab:help classes\@ao\eq">classes\@ao\eq</a>                       -  overloads == operator for analysis objects. Compare the y-axis values.
%   <a href="matlab:help classes\@ao\eqmotion">classes\@ao\eqmotion</a>                 -  solves numerically a given linear equation of motion
%   <a href="matlab:help classes\@ao\evaluateModel">classes\@ao\evaluateModel</a>            -  evaluate a curvefit model.
%   <a href="matlab:help classes\@ao\exp">classes\@ao\exp</a>                      -  overloads the exp operator for analysis objects. Exponential.
%   <a href="matlab:help classes\@ao\export">classes\@ao\export</a>                   -  export the data of an analysis object to a text file.
%   <a href="matlab:help classes\@ao\fft">classes\@ao\fft</a>                      -  overloads the fft method for Analysis objects.
%   <a href="matlab:help classes\@ao\fft_1sided_core">classes\@ao\fft_1sided_core</a>          - (No help available)
%   <a href="matlab:help classes\@ao\fft_2sided_core">classes\@ao\fft_2sided_core</a>          - (No help available)
%   <a href="matlab:help classes\@ao\fft_core">classes\@ao\fft_core</a>                 -  Simple core method which computes the fft.
%   <a href="matlab:help classes\@ao\fftfilt">classes\@ao\fftfilt</a>                  -  overrides the fft filter function for analysis objects.
%   <a href="matlab:help classes\@ao\fftfilt_core">classes\@ao\fftfilt_core</a>             -  Simple core method which computes the fft filter.
%   <a href="matlab:help classes\@ao\filtSubtract">classes\@ao\filtSubtract</a>             -  subtracts a frequency dependent noise contribution from an input ao.
%   <a href="matlab:help classes\@ao\filter">classes\@ao\filter</a>                   -  overrides the filter function for analysis objects.
%   <a href="matlab:help classes\@ao\filtfilt">classes\@ao\filtfilt</a>                 -  overrides the filtfilt function for analysis objects.
%   <a href="matlab:help classes\@ao\find">classes\@ao\find</a>                     -  particular samples that satisfy the input query and return a new AO.
%   <a href="matlab:help classes\@ao\findFsMax">classes\@ao\findFsMax</a>                -  Returns the max Fs of a set of AOs
%   <a href="matlab:help classes\@ao\findFsMin">classes\@ao\findFsMin</a>                -  Returns the min Fs of a set of AOs
%   <a href="matlab:help classes\@ao\findShortestVector">classes\@ao\findShortestVector</a>       -  Returns the length of the shortest vector in samples
%   <a href="matlab:help classes\@ao\firwhiten">classes\@ao\firwhiten</a>                -  whitens the input time-series by building an FIR whitening filter.
%   <a href="matlab:help classes\@ao\fixAxisData">classes\@ao\fixAxisData</a>              -  up the data type according to the users chosen axis
%   <a href="matlab:help classes\@ao\fixfs">classes\@ao\fixfs</a>                    -  resamples the input time-series to have a fixed sample rate.
%   <a href="matlab:help classes\@ao\flscov">classes\@ao\flscov</a>                   -  - Tool to perform a least square fit in frequency domain.
%   <a href="matlab:help classes\@ao\flscov_global">classes\@ao\flscov_global</a>            -  - Tool to perform a least square fit in frequency domain
%   <a href="matlab:help classes\@ao\fngen">classes\@ao\fngen</a>                    -  creates an arbitrarily long time-series based on the input PSD.
%   <a href="matlab:help classes\@ao\fq2fac">classes\@ao\fq2fac</a>                   -  is a private function and is called by ngconv.m which can be found in the
%   <a href="matlab:help classes\@ao\fromComplexDatafile">classes\@ao\fromComplexDatafile</a>      -  Construct an AO from filename AND parameter list
%   <a href="matlab:help classes\@ao\fromDataInMAT">classes\@ao\fromDataInMAT</a>            -  Convert a saved data-array into an AO with a tsdata-object
%   <a href="matlab:help classes\@ao\fromDatafile">classes\@ao\fromDatafile</a>             -  Construct an ao from filename AND parameter list
%   <a href="matlab:help classes\@ao\fromDom">classes\@ao\fromDom</a>                  - % Get shape
%   <a href="matlab:help classes\@ao\fromFSfcn">classes\@ao\fromFSfcn</a>                -  Construct an ao from a fs-function string
%   <a href="matlab:help classes\@ao\fromFcn">classes\@ao\fromFcn</a>                  -  Construct an ao from a function string
%   <a href="matlab:help classes\@ao\fromParameter">classes\@ao\fromParameter</a>            -  Construct an ao from a param object
%   <a href="matlab:help classes\@ao\fromPest">classes\@ao\fromPest</a>                 -  Construct a AO from a pest.
%   <a href="matlab:help classes\@ao\fromPolyval">classes\@ao\fromPolyval</a>              -  Construct an ao from polynomial coefficients
%   <a href="matlab:help classes\@ao\fromProcinfo">classes\@ao\fromProcinfo</a>             -  returns for a given key-name the value of the procinfo-plist
%   <a href="matlab:help classes\@ao\fromPzmodel">classes\@ao\fromPzmodel</a>              -  Construct a time-series ao from polynomial coefficients
%   <a href="matlab:help classes\@ao\fromSModel">classes\@ao\fromSModel</a>               -  Construct a AO from an smodel.
%   <a href="matlab:help classes\@ao\fromSpecWin">classes\@ao\fromSpecWin</a>              -  Construct an ao from a Spectral window
%   <a href="matlab:help classes\@ao\fromStruct">classes\@ao\fromStruct</a>               -  creates from a structure an analysis object.
%   <a href="matlab:help classes\@ao\fromTSfcn">classes\@ao\fromTSfcn</a>                -  Construct an ao from a ts-function string
%   <a href="matlab:help classes\@ao\fromVals">classes\@ao\fromVals</a>                 -  Construct an ao from a value set
%   <a href="matlab:help classes\@ao\fromWaveform">classes\@ao\fromWaveform</a>             -  Construct an ao from a waveform
%   <a href="matlab:help classes\@ao\fromXYFcn">classes\@ao\fromXYFcn</a>                -  Construct an ao from a function f(x) string
%   <a href="matlab:help classes\@ao\fromXYVals">classes\@ao\fromXYVals</a>               -  Construct an ao from a value set
%   <a href="matlab:help classes\@ao\fromXYZVals">classes\@ao\fromXYZVals</a>              -  Construct an ao from a value set
%   <a href="matlab:help classes\@ao\fs">classes\@ao\fs</a>                       -  Get the data property 'fs'.
%   <a href="matlab:help classes\@ao\gapfilling">classes\@ao\gapfilling</a>               -  fills possible gaps in data.
%   <a href="matlab:help classes\@ao\gapfillingoptim">classes\@ao\gapfillingoptim</a>          -  fills possible gaps in data.
%   <a href="matlab:help classes\@ao\ge">classes\@ao\ge</a>                       -  overloads >= operator for analysis objects. Compare the y-axis values.
%   <a href="matlab:help classes\@ao\generateConstructorPlist">classes\@ao\generateConstructorPlist</a> -  generates a PLIST from the properties which can rebuild the object.
%   <a href="matlab:help classes\@ao\getAbsTimeRange">classes\@ao\getAbsTimeRange</a>          -  returns a timespan object which span the absolute time range of an AO
%   <a href="matlab:help classes\@ao\getCommonInterval">classes\@ao\getCommonInterval</a>        -  Estimates the common interval spun by a group of Analysis Objects
%   <a href="matlab:help classes\@ao\getGeneralInterval">classes\@ao\getGeneralInterval</a>       -  Estimates the maximum interval spun by a group of Analysis Objects
%   <a href="matlab:help classes\@ao\getKSCValPSD">classes\@ao\getKSCValPSD</a>             -  provides critical value for KStest on the PSD
%   <a href="matlab:help classes\@ao\getdof">classes\@ao\getdof</a>                   -  Calculates degrees of freedom for psd, lpsd, cohere and lcohere
%   <a href="matlab:help classes\@ao\gnuplot">classes\@ao\gnuplot</a>                  -  a gnuplot interface for AOs.
%   <a href="matlab:help classes\@ao\gt">classes\@ao\gt</a>                       -  overloads > operator for analysis objects. Compare the y-axis values.
%   <a href="matlab:help classes\@ao\heterodyne">classes\@ao\heterodyne</a>               -  heterodynes time-series.
%   <a href="matlab:help classes\@ao\highpass">classes\@ao\highpass</a>                 -  highpass AOs containing time-series data.
%   <a href="matlab:help classes\@ao\hist">classes\@ao\hist</a>                     -  overloads the histogram function (hist) of MATLAB for Analysis Objects.
%   <a href="matlab:help classes\@ao\hypot">classes\@ao\hypot</a>                    -  overloads robust computation of the square root of the sum of squares for AOs.
%   <a href="matlab:help classes\@ao\iacf">classes\@ao\iacf</a>                     -  computes the inverse auto-correlation function from a spectrum.
%   <a href="matlab:help classes\@ao\ifft">classes\@ao\ifft</a>                     -  overloads the ifft operator for Analysis objects.
%   <a href="matlab:help classes\@ao\ifft_1sided_even_core">classes\@ao\ifft_1sided_even_core</a>    - (No help available)
%   <a href="matlab:help classes\@ao\ifft_1sided_odd_core">classes\@ao\ifft_1sided_odd_core</a>     - (No help available)
%   <a href="matlab:help classes\@ao\ifft_2sided_core">classes\@ao\ifft_2sided_core</a>         - (No help available)
%   <a href="matlab:help classes\@ao\ifft_core">classes\@ao\ifft_core</a>                -  Simple core method which computes the ifft.
%   <a href="matlab:help classes\@ao\ifft_plain_core">classes\@ao\ifft_plain_core</a>          - (No help available)
%   <a href="matlab:help classes\@ao\imag">classes\@ao\imag</a>                     -  overloads the imaginary operator for analysis objects.
%   <a href="matlab:help classes\@ao\integrate">classes\@ao\integrate</a>                -  integrates the data in AO.
%   <a href="matlab:help classes\@ao\interp">classes\@ao\interp</a>                   -  interpolate the values in the input AO(s) at new values.
%   <a href="matlab:help classes\@ao\interpmissing">classes\@ao\interpmissing</a>            -  interpolate missing samples in a time-series.
%   <a href="matlab:help classes\@ao\intersect">classes\@ao\intersect</a>                -  overloads the intersect operator for Analysis objects.
%   <a href="matlab:help classes\@ao\inv">classes\@ao\inv</a>                      -  overloads the inverse function for analysis objects.
%   <a href="matlab:help classes\@ao\iplot">classes\@ao\iplot</a>                    -  provides an intelligent plotting tool for LTPDA.
%   <a href="matlab:help classes\@ao\iplotyy">classes\@ao\iplotyy</a>                  -  provides an intelligent plotting tool for LTPDA.
%   <a href="matlab:help classes\@ao\join">classes\@ao\join</a>                     -  multiple AOs into a single AO.
%   <a href="matlab:help classes\@ao\kstest">classes\@ao\kstest</a>                   -  perform KS test on input AOs
%   <a href="matlab:help classes\@ao\lcohere">classes\@ao\lcohere</a>                  -  implement magnitude-squadred coherence estimation on a log frequency axis.
%   <a href="matlab:help classes\@ao\lcpsd">classes\@ao\lcpsd</a>                    -  implement cross-power-spectral density estimation on a log frequency axis.
%   <a href="matlab:help classes\@ao\le">classes\@ao\le</a>                       -  overloads <= operator for analysis objects. Compare the y-axis values.
%   <a href="matlab:help classes\@ao\len">classes\@ao\len</a>                      -  overloads the length operator for Analysis objects. Length of the data samples.
%   <a href="matlab:help classes\@ao\linSubtract">classes\@ao\linSubtract</a>              -  subtracts a linear contribution from an input ao.
%   <a href="matlab:help classes\@ao\lincom">classes\@ao\lincom</a>                   -  make a linear combination of analysis objects
%   <a href="matlab:help classes\@ao\linedetect">classes\@ao\linedetect</a>               -  find spectral lines in the ao/fsdata objects.
%   <a href="matlab:help classes\@ao\linfit">classes\@ao\linfit</a>                   -  is a linear fitting tool
%   <a href="matlab:help classes\@ao\linlsqsvd">classes\@ao\linlsqsvd</a>                -  Linear least squares with singular value decomposition
%   <a href="matlab:help classes\@ao\lisovfit">classes\@ao\lisovfit</a>                 -  uses LISO to fit a pole/zero model to the input frequency-series.
%   <a href="matlab:help classes\@ao\ln">classes\@ao\ln</a>                       -  overloads the log operator for analysis objects. Natural logarithm.
%   <a href="matlab:help classes\@ao\loadobj">classes\@ao\loadobj</a>                  -  is called by the load function for user objects.
%   <a href="matlab:help classes\@ao\log">classes\@ao\log</a>                      -  overloads the log operator for analysis objects. Natural logarithm.
%   <a href="matlab:help classes\@ao\log10">classes\@ao\log10</a>                    -  overloads the log10 operator for analysis objects. Common (base 10) logarithm.
%   <a href="matlab:help classes\@ao\logical">classes\@ao\logical</a>                  -  overloads logical() function for analysis objects.
%   <a href="matlab:help classes\@ao\lowpass">classes\@ao\lowpass</a>                  -  lowpass AOs containing time-series data.
%   <a href="matlab:help classes\@ao\lpsd">classes\@ao\lpsd</a>                     -  implements the LPSD algorithm for analysis objects.
%   <a href="matlab:help classes\@ao\lscov">classes\@ao\lscov</a>                    -  is a wrapper for MATLAB's lscov function.
%   <a href="matlab:help classes\@ao\lsf">classes\@ao\lsf</a>                      - --------------------------------------------------------------------------
%   <a href="matlab:help classes\@ao\lsf_global">classes\@ao\lsf_global</a>               - --------------------------------------------------------------------------
%   <a href="matlab:help classes\@ao\lt">classes\@ao\lt</a>                       -  overloads < operator for analysis objects. Compare the y-axis values.
%   <a href="matlab:help classes\@ao\ltf_plan">classes\@ao\ltf_plan</a>                 -  computes all input values needed for the LPSD and LTFE algorithms.
%   <a href="matlab:help classes\@ao\ltfe">classes\@ao\ltfe</a>                     -  implements transfer function estimation computed on a log frequency axis.
%   <a href="matlab:help classes\@ao\lxspec">classes\@ao\lxspec</a>                   -  performs log-scale cross-spectral analysis of various forms.
%   <a href="matlab:help classes\@ao\map3D">classes\@ao\map3D</a>                    -  maps the input 1 or 2D AOs on to a 3D AO
%   <a href="matlab:help classes\@ao\max">classes\@ao\max</a>                      -  computes the maximum value of the data in the AO
%   <a href="matlab:help classes\@ao\mchol">classes\@ao\mchol</a>                    - (No help available)
%   <a href="matlab:help classes\@ao\mcmc">classes\@ao\mcmc</a>                     -  estimates paramters using a Monte Carlo Markov Chain.
%   <a href="matlab:help classes\@ao\md5">classes\@ao\md5</a>                      -  computes an MD5 checksum from an analysis objects.
%   <a href="matlab:help classes\@ao\mean">classes\@ao\mean</a>                     -  computes the mean value of the data in the AO.
%   <a href="matlab:help classes\@ao\median">classes\@ao\median</a>                   -  computes the median value of the data in the AO.
%   <a href="matlab:help classes\@ao\melementOp">classes\@ao\melementOp</a>               -  applies the given matrix operator to the data.
%   <a href="matlab:help classes\@ao\min">classes\@ao\min</a>                      -  computes the minimum value of the data in the AO
%   <a href="matlab:help classes\@ao\minus">classes\@ao\minus</a>                    -  implements subtraction operator for analysis objects.
%   <a href="matlab:help classes\@ao\mlpsd_m">classes\@ao\mlpsd_m</a>                  -  m-file only version of the LPSD algorithm
%   <a href="matlab:help classes\@ao\mlpsd_mex">classes\@ao\mlpsd_mex</a>                -  calls the ltpda_dft.mex to compute the DFT part of the LPSD algorithm
%   <a href="matlab:help classes\@ao\mltfe">classes\@ao\mltfe</a>                    -  compute log-frequency space TF
%   <a href="matlab:help classes\@ao\mod">classes\@ao\mod</a>                      -  overloads the modulus function for analysis objects.
%   <a href="matlab:help classes\@ao\mode">classes\@ao\mode</a>                     -  computes the modal value of the data in the AO.
%   <a href="matlab:help classes\@ao\modelSelect">classes\@ao\modelSelect</a>              -  method to compute the Bayes Factor using RJMCMC, LF, LM, BIC methods
%   <a href="matlab:help classes\@ao\mpower">classes\@ao\mpower</a>                   -  implements mpower operator for analysis objects.
%   <a href="matlab:help classes\@ao\mrdivide">classes\@ao\mrdivide</a>                 -  implements mrdivide operator for analysis objects.
%   <a href="matlab:help classes\@ao\mtimes">classes\@ao\mtimes</a>                   -  implements mtimes operator for analysis objects.
%   <a href="matlab:help classes\@ao\mve">classes\@ao\mve</a>                      - MVE: Minimum Volume Ellipsoid estimator
%   <a href="matlab:help classes\@ao\ne">classes\@ao\ne</a>                       -  overloads ~= operator for analysis objects. Compare the y-axis values.
%   <a href="matlab:help classes\@ao\ngconv">classes\@ao\ngconv</a>                   -  is called by the function fromPzmodel
%   <a href="matlab:help classes\@ao\nginit">classes\@ao\nginit</a>                   -  is called by the function fromPzmodel
%   <a href="matlab:help classes\@ao\ngprop">classes\@ao\ngprop</a>                   -  is called by the function fromPzmodel
%   <a href="matlab:help classes\@ao\ngsetup">classes\@ao\ngsetup</a>                  -  is called by the function fromPzmodel
%   <a href="matlab:help classes\@ao\ngsetup_vpa">classes\@ao\ngsetup_vpa</a>              - % ALGONAME = mfilename;
%   <a href="matlab:help classes\@ao\noisePower">classes\@ao\noisePower</a>               -  computes the noise power spectral density in a time-series as a function of time.
%   <a href="matlab:help classes\@ao\noisegen1D">classes\@ao\noisegen1D</a>               -  generates colored noise from white noise.
%   <a href="matlab:help classes\@ao\noisegen2D">classes\@ao\noisegen2D</a>               -  generates cross correleted colored noise from white noise.
%   <a href="matlab:help classes\@ao\norm">classes\@ao\norm</a>                     -  overloads the norm operator for analysis objects.
%   <a href="matlab:help classes\@ao\normdist">classes\@ao\normdist</a>                 -  computes the equivalent normal distribution for the data.
%   <a href="matlab:help classes\@ao\not">classes\@ao\not</a>                      -  overloads the logical not operator for analysis objects.
%   <a href="matlab:help classes\@ao\nsecs">classes\@ao\nsecs</a>                    -  Get the data property 'nsecs'.
%   <a href="matlab:help classes\@ao\nyquistplot">classes\@ao\nyquistplot</a>              -  fits a piecewise powerlaw to the given data.
%   <a href="matlab:help classes\@ao\offset">classes\@ao\offset</a>                   -  adds an offset to the data in the AO.
%   <a href="matlab:help classes\@ao\or">classes\@ao\or</a>                       -  (|) overloads the or (|) method for Analysis objects.
%   <a href="matlab:help classes\@ao\overlap">classes\@ao\overlap</a>                  -  This method cuts out the the overlapping data of the input AOs.
%   <a href="matlab:help classes\@ao\pad">classes\@ao\pad</a>                      -  pads the input data series to a given value.
%   <a href="matlab:help classes\@ao\performFFTcore">classes\@ao\performFFTcore</a>           -  performs fft for flscov and flscovSegments
%   <a href="matlab:help classes\@ao\phase">classes\@ao\phase</a>                    -  is the phase operator for analysis objects.
%   <a href="matlab:help classes\@ao\play">classes\@ao\play</a>                     -  plays a time-series using MATLAB's audioplay function.
%   <a href="matlab:help classes\@ao\plot">classes\@ao\plot</a>                     -  the analysis objects on the given axes.
%   <a href="matlab:help classes\@ao\plus">classes\@ao\plus</a>                     -  implements addition operator for analysis objects.
%   <a href="matlab:help classes\@ao\polyfit">classes\@ao\polyfit</a>                  -  overloads polyfit() function of MATLAB for Analysis Objects.
%   <a href="matlab:help classes\@ao\polyfitSpectrum">classes\@ao\polyfitSpectrum</a>          -  does a polynomial fit to the log of the input spectrum.
%   <a href="matlab:help classes\@ao\polynomfit">classes\@ao\polynomfit</a>               -  is a polynomial fitting tool
%   <a href="matlab:help classes\@ao\power">classes\@ao\power</a>                    -  implements power operator for analysis objects.
%   <a href="matlab:help classes\@ao\powerFit">classes\@ao\powerFit</a>                 -  fits a piecewise powerlaw to the given data.
%   <a href="matlab:help classes\@ao\ppsd">classes\@ao\ppsd</a>                     -  makes power spectral density estimates of the time-series objects in the input analysis objects by estimating ARMA models coefficients.
%   <a href="matlab:help classes\@ao\preprocessDataForMCMC">classes\@ao\preprocessDataForMCMC</a>    -  Split, resample and apply FFT to time series for MCMC analysis.
%   <a href="matlab:help classes\@ao\processSetterValues">classes\@ao\processSetterValues</a>      - (No help available)
%   <a href="matlab:help classes\@ao\psd">classes\@ao\psd</a>                      -  makes power spectral density estimates of the time-series objects
%   <a href="matlab:help classes\@ao\psdconf">classes\@ao\psdconf</a>                  -  Calculates confidence levels and variance for psd
%   <a href="matlab:help classes\@ao\psdvfit">classes\@ao\psdvfit</a>                  -  performs a fitting loop to identify model for a psd.
%   <a href="matlab:help classes\@ao\qqplot">classes\@ao\qqplot</a>                   -  makes quantile-quantile plot
%   <a href="matlab:help classes\@ao\quasiSweptSine">classes\@ao\quasiSweptSine</a>           -  computes a transfer function from swept-sine measurements
%   <a href="matlab:help classes\@ao\rdivide">classes\@ao\rdivide</a>                  -  implements division operator for analysis objects.
%   <a href="matlab:help classes\@ao\real">classes\@ao\real</a>                     -  overloads the real operator for analysis objects.
%   <a href="matlab:help classes\@ao\removeVal">classes\@ao\removeVal</a>                -  removes values from the input AO(s).
%   <a href="matlab:help classes\@ao\resample">classes\@ao\resample</a>                 -  overloads resample function for AOs.
%   <a href="matlab:help classes\@ao\resampleToCommonGrid">classes\@ao\resampleToCommonGrid</a>     -  Resamples Analysis Objects to a common grid
%   <a href="matlab:help classes\@ao\rjsample">classes\@ao\rjsample</a>                 -  Reverse Jump MCMC sampling using the "Metropolized Carlin And Chib" Method.
%   <a href="matlab:help classes\@ao\rms">classes\@ao\rms</a>                      -  Calculate RMS deviation from spectrum
%   <a href="matlab:help classes\@ao\rotate">classes\@ao\rotate</a>                   -  applies rotation factor to AOs
%   <a href="matlab:help classes\@ao\round">classes\@ao\round</a>                    -  overloads the Round method for analysis objects.
%   <a href="matlab:help classes\@ao\sDomainFit">classes\@ao\sDomainFit</a>               -  performs a fitting loop to identify model order and
%   <a href="matlab:help classes\@ao\scale">classes\@ao\scale</a>                    -  scales the data in the AO by the specified factor.
%   <a href="matlab:help classes\@ao\scatter3D">classes\@ao\scatter3D</a>                -  Creates from the y-values of the input AOs a new AO with a xyz-data object
%   <a href="matlab:help classes\@ao\scatterData">classes\@ao\scatterData</a>              -  Creates from the y-values of two input AOs an new AO(xydata)
%   <a href="matlab:help classes\@ao\select">classes\@ao\select</a>                   -  select particular samples from the input AOs and return new AOs with only those samples.
%   <a href="matlab:help classes\@ao\setData">classes\@ao\setData</a>                  -  sets the 'data' property of the ao.
%   <a href="matlab:help classes\@ao\setDx">classes\@ao\setDx</a>                    -  sets the 'dx' property of the ao.
%   <a href="matlab:help classes\@ao\setDy">classes\@ao\setDy</a>                    -  sets the 'dy' property of the ao.
%   <a href="matlab:help classes\@ao\setDz">classes\@ao\setDz</a>                    -  sets the 'dz' property of the ao.
%   <a href="matlab:help classes\@ao\setEnbw">classes\@ao\setEnbw</a>                  -  sets the 'enbw' property of the ao/fsdata.
%   <a href="matlab:help classes\@ao\setFs">classes\@ao\setFs</a>                    -  sets the 'fs' property of the ao.
%   <a href="matlab:help classes\@ao\setNavs">classes\@ao\setNavs</a>                  -  sets the 'navs' property of the ao/fsdata.
%   <a href="matlab:help classes\@ao\setReferenceTime">classes\@ao\setReferenceTime</a>         -  sets the t0 to the new value but doesn't move the data in time
%   <a href="matlab:help classes\@ao\setT0">classes\@ao\setT0</a>                    -  sets the 't0' property of the ao.
%   <a href="matlab:help classes\@ao\setToffset">classes\@ao\setToffset</a>               -  sets the 'toffset' property of the ao with tsdata
%   <a href="matlab:help classes\@ao\setUnitsForAxis">classes\@ao\setUnitsForAxis</a>          - % Set units
%   <a href="matlab:help classes\@ao\setX">classes\@ao\setX</a>                     -  sets the 'x' property of the ao.
%   <a href="matlab:help classes\@ao\setXY">classes\@ao\setXY</a>                    -  sets the 'x' and 'y' properties of the ao.
%   <a href="matlab:help classes\@ao\setXaxisName">classes\@ao\setXaxisName</a>             -  sets the x-axis name of the ao.
%   <a href="matlab:help classes\@ao\setXunits">classes\@ao\setXunits</a>                -  sets the 'xunits' property of the ao.
%   <a href="matlab:help classes\@ao\setY">classes\@ao\setY</a>                     -  sets the 'y' property of the ao.
%   <a href="matlab:help classes\@ao\setYaxisName">classes\@ao\setYaxisName</a>             -  sets the y-axis name of the ao.
%   <a href="matlab:help classes\@ao\setYunits">classes\@ao\setYunits</a>                -  sets the 'yunits' property of the ao.
%   <a href="matlab:help classes\@ao\setZ">classes\@ao\setZ</a>                     -  sets the 'z' property of the ao.
%   <a href="matlab:help classes\@ao\setZaxisName">classes\@ao\setZaxisName</a>             -  sets the z-axis name of the ao.
%   <a href="matlab:help classes\@ao\setZunits">classes\@ao\setZunits</a>                -  sets the 'zunits' property of the ao.
%   <a href="matlab:help classes\@ao\sign">classes\@ao\sign</a>                     -  overloads the sign operator for analysis objects.
%   <a href="matlab:help classes\@ao\simplex">classes\@ao\simplex</a>                  -  Multidimensional unconstrained nonlinear minimization (Nelder-Mead)
%   <a href="matlab:help classes\@ao\simplifyXunits">classes\@ao\simplifyXunits</a>           -  simplify the 'xunits' of the ao.
%   <a href="matlab:help classes\@ao\simplifyYunits">classes\@ao\simplifyYunits</a>           -  simplify the 'yunits' property of the ao.
%   <a href="matlab:help classes\@ao\simplifyZunits">classes\@ao\simplifyZunits</a>           -  simplify the 'zunits' of the ao.
%   <a href="matlab:help classes\@ao\sin">classes\@ao\sin</a>                      -  overloads the sin method for analysis objects.
%   <a href="matlab:help classes\@ao\sineParams">classes\@ao\sineParams</a>               -  estimates parameters of sinusoids
%   <a href="matlab:help classes\@ao\smoother">classes\@ao\smoother</a>                 -  smooths a given series of data points using the specified method.
%   <a href="matlab:help classes\@ao\sort">classes\@ao\sort</a>                     -  the values in the AO.
%   <a href="matlab:help classes\@ao\spcorr">classes\@ao\spcorr</a>                   -  calculate Spearman Rank-Order Correlation Coefficient
%   <a href="matlab:help classes\@ao\spectrogram">classes\@ao\spectrogram</a>              -  computes a spectrogram of the given ao/tsdata.
%   <a href="matlab:help classes\@ao\spikecleaning">classes\@ao\spikecleaning</a>            -  detects and corrects possible spikes in analysis objects
%   <a href="matlab:help classes\@ao\split">classes\@ao\split</a>                    -  split an analysis object into the specified segments.
%   <a href="matlab:help classes\@ao\split_samples_core">classes\@ao\split_samples_core</a>       - (No help available)
%   <a href="matlab:help classes\@ao\spsd">classes\@ao\spsd</a>                     -  implements the smoothed (binned) PSD algorithm for analysis objects.
%   <a href="matlab:help classes\@ao\spsdSubtraction">classes\@ao\spsdSubtraction</a>          -  makes a sPSD-weighted least-square iterative fit
%   <a href="matlab:help classes\@ao\sqrt">classes\@ao\sqrt</a>                     -  computes the square root of the data in the AO.
%   <a href="matlab:help classes\@ao\stack">classes\@ao\stack</a>                    -  xydata.
%   <a href="matlab:help classes\@ao\std">classes\@ao\std</a>                      -  computes the standard deviation of the data in the AO.
%   <a href="matlab:help classes\@ao\subsData">classes\@ao\subsData</a>                 -  performs actions on ao objects.
%   <a href="matlab:help classes\@ao\sum">classes\@ao\sum</a>                      -  computes the sum of the data in the AO.
%   <a href="matlab:help classes\@ao\sumjoin">classes\@ao\sumjoin</a>                  -  sums time-series signals togther
%   <a href="matlab:help classes\@ao\summaryReport">classes\@ao\summaryReport</a>            -  generates an HTML report about the input objects.
%   <a href="matlab:help classes\@ao\svd">classes\@ao\svd</a>                      -  overloads the svd (singular value decomposition) function for analysis objects.
%   <a href="matlab:help classes\@ao\svd_fit">classes\@ao\svd_fit</a>                  -  estimates parameters for a linear model using SVD
%   <a href="matlab:help classes\@ao\t0">classes\@ao\t0</a>                       -  Get the data property 't0'.
%   <a href="matlab:help classes\@ao\table">classes\@ao\table</a>                    -  display the data from the AO in a table.
%   <a href="matlab:help classes\@ao\tan">classes\@ao\tan</a>                      -  overloads the tan method for analysis objects.
%   <a href="matlab:help classes\@ao\tdfit">classes\@ao\tdfit</a>                    -  fit a set of smodels to a set of input and output signals..
%   <a href="matlab:help classes\@ao\tfe">classes\@ao\tfe</a>                      -  estimates transfer function between time-series objects.
%   <a href="matlab:help classes\@ao\timeaverage">classes\@ao\timeaverage</a>              -  Averages time series intervals
%   <a href="matlab:help classes\@ao\times">classes\@ao\times</a>                    -  implements multiplication operator for analysis objects.
%   <a href="matlab:help classes\@ao\timeshift">classes\@ao\timeshift</a>                -  for AO/tsdata objects, shifts data in time by the specified value in seconds.
%   <a href="matlab:help classes\@ao\toSI">classes\@ao\toSI</a>                     -  converts the units of the x, y and z axes into SI units.
%   <a href="matlab:help classes\@ao\toffset">classes\@ao\toffset</a>                  -  Get the data property 'toffset'.
%   <a href="matlab:help classes\@ao\transpose">classes\@ao\transpose</a>                -  overloads the .' operator for Analysis Objects.
%   <a href="matlab:help classes\@ao\trends">classes\@ao\trends</a>                   -  computes the trend statistics of the input time-series.
%   <a href="matlab:help classes\@ao\truncate">classes\@ao\truncate</a>                 -  Splits Analysis Objects over a common timespan
%   <a href="matlab:help classes\@ao\uminus">classes\@ao\uminus</a>                   -  overloads the uminus operator for analysis objects.
%   <a href="matlab:help classes\@ao\union">classes\@ao\union</a>                    -  overloads the union operator for Analysis Objects.
%   <a href="matlab:help classes\@ao\unwrap">classes\@ao\unwrap</a>                   -  overloads the unwrap operator for analysis objects.
%   <a href="matlab:help classes\@ao\update_struct">classes\@ao\update_struct</a>            -  update the input structure to the current ltpda version
%   <a href="matlab:help classes\@ao\upsample">classes\@ao\upsample</a>                 -  overloads upsample function for AOs.
%   <a href="matlab:help classes\@ao\validate">classes\@ao\validate</a>                 -  checks that the input Analysis Object is reproducible and valid.
%   <a href="matlab:help classes\@ao\validateSpectrumMod">classes\@ao\validateSpectrumMod</a>      -  statistically validate a model for a psd.
%   <a href="matlab:help classes\@ao\var">classes\@ao\var</a>                      -  computes the variance of the data in the AO.
%   <a href="matlab:help classes\@ao\whiten1D">classes\@ao\whiten1D</a>                 -  whitens the input time-series.
%   <a href="matlab:help classes\@ao\whiten2D">classes\@ao\whiten2D</a>                 -  whiten the noise for two cross correlated time series.
%   <a href="matlab:help classes\@ao\window">classes\@ao\window</a>                   -  applies the specified window to the input time-series objects
%   <a href="matlab:help classes\@ao\wosa">classes\@ao\wosa</a>                     -  implements Welch's overlaped segmented averaging algorithm with
%   <a href="matlab:help classes\@ao\x">classes\@ao\x</a>                        -  Get the data property 'x'.
%   <a href="matlab:help classes\@ao\xaxisname">classes\@ao\xaxisname</a>                -  Get the x axis name of the underlying data object.
%   <a href="matlab:help classes\@ao\xcorr">classes\@ao\xcorr</a>                    -  makes cross-correlation estimates of the time-series
%   <a href="matlab:help classes\@ao\xfit">classes\@ao\xfit</a>                     -  fit a function of x to data.
%   <a href="matlab:help classes\@ao\xor">classes\@ao\xor</a>                      -  overloads the xor (exclusive or) method for Analysis objects.
%   <a href="matlab:help classes\@ao\xspec">classes\@ao\xspec</a>                    -  performs cross-spectral analysis of various forms.
%   <a href="matlab:help classes\@ao\xunits">classes\@ao\xunits</a>                   -  Get the data property 'xunits'.
%   <a href="matlab:help classes\@ao\y">classes\@ao\y</a>                        -  Get the data property 'y'.
%   <a href="matlab:help classes\@ao\yaxisname">classes\@ao\yaxisname</a>                -  Get the y axis name of the underlying data object.
%   <a href="matlab:help classes\@ao\yunits">classes\@ao\yunits</a>                   -  Get the data property 'yunits'.
%   <a href="matlab:help classes\@ao\z">classes\@ao\z</a>                        -  Get the data property 'z'.
%   <a href="matlab:help classes\@ao\zDomainFit">classes\@ao\zDomainFit</a>               -  performs a fitting loop to identify model order and
%   <a href="matlab:help classes\@ao\zaxisname">classes\@ao\zaxisname</a>                -  Get the z axis name of the underlying data object.
%   <a href="matlab:help classes\@ao\zeropad">classes\@ao\zeropad</a>                  -  zero pads the input data series.
%   <a href="matlab:help classes\@ao\zeropad_post_core">classes\@ao\zeropad_post_core</a>        - (No help available)
%   <a href="matlab:help classes\@ao\zunits">classes\@ao\zunits</a>                   -  Get the data property 'zunits'.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@cdata   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@cdata\applymethod">classes\@cdata\applymethod</a>   -  applys the given method to the input cdata.
%   <a href="matlab:help classes\@cdata\applyoperator">classes\@cdata\applyoperator</a> -  applys the given operator to the two input data objects.
%   <a href="matlab:help classes\@cdata\attachToDom">classes\@cdata\attachToDom</a>   - % Create empty cdata node with the attribute 'shape'
%   <a href="matlab:help classes\@cdata\cdata">classes\@cdata\cdata</a>         -  is the constant data class.
%   <a href="matlab:help classes\@cdata\copy">classes\@cdata\copy</a>          -  makes a (deep) copy of the input cdata objects.
%   <a href="matlab:help classes\@cdata\disp">classes\@cdata\disp</a>          -  implement terminal display for cdata object.
%   <a href="matlab:help classes\@cdata\fromDom">classes\@cdata\fromDom</a>       - % Get shape
%   <a href="matlab:help classes\@cdata\fromStruct">classes\@cdata\fromStruct</a>    -  creates from a structure a CDATA object.
%   <a href="matlab:help classes\@cdata\loadobj">classes\@cdata\loadobj</a>       -  is called by the load function for user objects.
%   <a href="matlab:help classes\@cdata\minus">classes\@cdata\minus</a>         -  implements subtraction operator for cdata objects.
%   <a href="matlab:help classes\@cdata\plot">classes\@cdata\plot</a>          -  plots the given cdata on the given axes
%   <a href="matlab:help classes\@cdata\plus">classes\@cdata\plus</a>          -  implements addition operator for cdata objects.
%   <a href="matlab:help classes\@cdata\rdivide">classes\@cdata\rdivide</a>       -  implements element division for cdata objects.
%   <a href="matlab:help classes\@cdata\times">classes\@cdata\times</a>         -  implements element multiplication for cdata objects.
%   <a href="matlab:help classes\@cdata\update_struct">classes\@cdata\update_struct</a> -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@collection   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@collection\addObjects">classes\@collection\addObjects</a>               -  adds the given objects to the collection.
%   <a href="matlab:help classes\@collection\attachToDom">classes\@collection\attachToDom</a>              - % Create empty collection node with the attribute 'shape'
%   <a href="matlab:help classes\@collection\char">classes\@collection\char</a>                     -  convert a collection object into a string.
%   <a href="matlab:help classes\@collection\cohere">classes\@collection\cohere</a>                   -  estimates the coherence between time-series objects in a collection object.
%   <a href="matlab:help classes\@collection\collection">classes\@collection\collection</a>               -  constructor for collection class.
%   <a href="matlab:help classes\@collection\copy">classes\@collection\copy</a>                     -  makes a (deep) copy of the input collection objects.
%   <a href="matlab:help classes\@collection\cpsd">classes\@collection\cpsd</a>                     -  estimates the cross-spectral density between time-series objects in a collection object.
%   <a href="matlab:help classes\@collection\disp">classes\@collection\disp</a>                     -  overloads display functionality for collection objects.
%   <a href="matlab:help classes\@collection\filter">classes\@collection\filter</a>                   -  overrides the filter function for analysis objects in a collection object.
%   <a href="matlab:help classes\@collection\filtfilt">classes\@collection\filtfilt</a>                 -  overrides the filtfilt function for analysis objects in a collection object.
%   <a href="matlab:help classes\@collection\fromDom">classes\@collection\fromDom</a>                  - % Get shape
%   <a href="matlab:help classes\@collection\fromInput">classes\@collection\fromInput</a>                - Construct a collection object from ltpda_uoh objects.
%   <a href="matlab:help classes\@collection\fromRepository">classes\@collection\fromRepository</a>           - Retrieve a ltpda_uo from a repository
%   <a href="matlab:help classes\@collection\fromStruct">classes\@collection\fromStruct</a>               -  creates from a structure a COLLECTION object.
%   <a href="matlab:help classes\@collection\generateConstructorPlist">classes\@collection\generateConstructorPlist</a> -  generates a PLIST from the properties which can rebuild the object.
%   <a href="matlab:help classes\@collection\getObjectAtIndex">classes\@collection\getObjectAtIndex</a>         -  index into the inner objects of one collection object.
%   <a href="matlab:help classes\@collection\getObjectByName">classes\@collection\getObjectByName</a>          -  returns an inside object selected by the name.
%   <a href="matlab:help classes\@collection\getObjectsOfClass">classes\@collection\getObjectsOfClass</a>        -  returns all objects of the specified class in a collection-object.
%   <a href="matlab:help classes\@collection\identifyInsideObjs">classes\@collection\identifyInsideObjs</a>       -  Static method which identify the inside objects and configuration PLISTs.
%   <a href="matlab:help classes\@collection\iplot">classes\@collection\iplot</a>                    -  calls ao/iplot on all inner ao objects.
%   <a href="matlab:help classes\@collection\lincom">classes\@collection\lincom</a>                   -  make a linear combination of objects within the collection
%   <a href="matlab:help classes\@collection\loadobj">classes\@collection\loadobj</a>                  -  is called by the load function for user objects.
%   <a href="matlab:help classes\@collection\nobjs">classes\@collection\nobjs</a>                    -  Returns the number of objects in the inner object array.
%   <a href="matlab:help classes\@collection\objTypes">classes\@collection\objTypes</a>                 -  returns a cell array of the class types for each object in the
%   <a href="matlab:help classes\@collection\plot">classes\@collection\plot</a>                     -  the collection objects.
%   <a href="matlab:help classes\@collection\plotTrends">classes\@collection\plotTrends</a>               -  plots the trend collections produced by ao/trends.
%   <a href="matlab:help classes\@collection\removeObjectAtIndex">classes\@collection\removeObjectAtIndex</a>      -  removes the object at the specified position from the collection.
%   <a href="matlab:help classes\@collection\saveAllObjects">classes\@collection\saveAllObjects</a>           -  index into the inner objects of one collection object.
%   <a href="matlab:help classes\@collection\setNames">classes\@collection\setNames</a>                 -  Sets the property 'names' of a collection object.
%   <a href="matlab:help classes\@collection\setObjectAtIndex">classes\@collection\setObjectAtIndex</a>         -  sets an input object to the collection.
%   <a href="matlab:help classes\@collection\setObjs">classes\@collection\setObjs</a>                  -  sets the 'objs' property of a collection object.
%   <a href="matlab:help classes\@collection\subsasgn">classes\@collection\subsasgn</a>                 -  overloads the setting behaviour for collection objects.
%   <a href="matlab:help classes\@collection\subsref">classes\@collection\subsref</a>                  -  overloads the referencing behaviour for collection objects.
%   <a href="matlab:help classes\@collection\summaryReport">classes\@collection\summaryReport</a>            -  generates an HTML report about the inner objects.
%   <a href="matlab:help classes\@collection\tfe">classes\@collection\tfe</a>                      -  estimates the transfer function between time-series objects in a collection object.
%   <a href="matlab:help classes\@collection\toCell">classes\@collection\toCell</a>                   -  toCells the objects in a collection and sets them to the given output
%   <a href="matlab:help classes\@collection\unpack">classes\@collection\unpack</a>                   -  unpacks the objects in a collection and sets them to the given output
%   <a href="matlab:help classes\@collection\update_struct">classes\@collection\update_struct</a>            -  update the input structure to the current ltpda version
%   <a href="matlab:help classes\@collection\wrapperEval">classes\@collection\wrapperEval</a>              - % loop over inner objects
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@data2D   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@data2D\applymethod">classes\@data2D\applymethod</a>        -  applys the given method to the input 2D data.
%   <a href="matlab:help classes\@data2D\applyoperator">classes\@data2D\applyoperator</a>      -  applys the given operator to the two input data objects.
%   <a href="matlab:help classes\@data2D\attachToDom">classes\@data2D\attachToDom</a>        - % Add xaxis
%   <a href="matlab:help classes\@data2D\cast">classes\@data2D\cast</a>               -  - converts the numeric values in a data2D object to a new data type.
%   <a href="matlab:help classes\@data2D\copy">classes\@data2D\copy</a>               -  copies all fields of the data2D class to the new object.
%   <a href="matlab:help classes\@data2D\data2D">classes\@data2D\data2D</a>             -  is the abstract base class for 2-dimensional data objects.
%   <a href="matlab:help classes\@data2D\disp">classes\@data2D\disp</a>               -  overloads display functionality for data2D objects.
%   <a href="matlab:help classes\@data2D\fromDom">classes\@data2D\fromDom</a>            - %%%%%%%%%% Call super-class
%   <a href="matlab:help classes\@data2D\fromStruct">classes\@data2D\fromStruct</a>         -  sets all properties which are defined in the data2D class from the structure to the input object.
%   <a href="matlab:help classes\@data2D\getDx">classes\@data2D\getDx</a>              -  Get the property 'dx'.
%   <a href="matlab:help classes\@data2D\getX">classes\@data2D\getX</a>               -  Get the property 'x'.
%   <a href="matlab:help classes\@data2D\getXunits">classes\@data2D\getXunits</a>          -  Get the property 'xunits' from the x-axis.
%   <a href="matlab:help classes\@data2D\plot">classes\@data2D\plot</a>               -  plots the given xydata on the given axes
%   <a href="matlab:help classes\@data2D\plus">classes\@data2D\plus</a>               -  implements addition operator for data2D objects.
%   <a href="matlab:help classes\@data2D\prepareForPlotting">classes\@data2D\prepareForPlotting</a> -  takes the input data object and returns a function
%   <a href="matlab:help classes\@data2D\setDx">classes\@data2D\setDx</a>              -  Set the property 'dx'.
%   <a href="matlab:help classes\@data2D\setErrorsFromPlist">classes\@data2D\setErrorsFromPlist</a> -  sets the errors from the plist based on the error
%   <a href="matlab:help classes\@data2D\setX">classes\@data2D\setX</a>               -  Set the property 'x'.
%   <a href="matlab:help classes\@data2D\setXY">classes\@data2D\setXY</a>              -  Set the property 'xy'.
%   <a href="matlab:help classes\@data2D\setXaxisName">classes\@data2D\setXaxisName</a>       -  Set the property 'x-axis name'.
%   <a href="matlab:help classes\@data2D\setXunits">classes\@data2D\setXunits</a>          -  Set the property 'xunits'.
%   <a href="matlab:help classes\@data2D\update_struct">classes\@data2D\update_struct</a>      -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@data3D   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@data3D\applymethod">classes\@data3D\applymethod</a>        -  applys the given method to the input 3D data.
%   <a href="matlab:help classes\@data3D\applyoperator">classes\@data3D\applyoperator</a>      -  applys the given operator to the two input data objects.
%   <a href="matlab:help classes\@data3D\attachToDom">classes\@data3D\attachToDom</a>        - % Add zaxis
%   <a href="matlab:help classes\@data3D\cast">classes\@data3D\cast</a>               -  - converts the numeric values in a data3D object to a new data type.
%   <a href="matlab:help classes\@data3D\char">classes\@data3D\char</a>               -  convert a ltpda_data-object into a string.
%   <a href="matlab:help classes\@data3D\copy">classes\@data3D\copy</a>               -  copies all fields of the data3D class to the new object.
%   <a href="matlab:help classes\@data3D\data3D">classes\@data3D\data3D</a>             -  is the abstract base class for 3-dimensional data objects.
%   <a href="matlab:help classes\@data3D\disp">classes\@data3D\disp</a>               -  overloads display functionality for data3D objects.
%   <a href="matlab:help classes\@data3D\fromDom">classes\@data3D\fromDom</a>            - %%%%%%%%%% Call super-class
%   <a href="matlab:help classes\@data3D\fromStruct">classes\@data3D\fromStruct</a>         -  sets all properties which are defined in the data3D class from the structure to the input object.
%   <a href="matlab:help classes\@data3D\getDz">classes\@data3D\getDz</a>              -  Get the property 'dz'.
%   <a href="matlab:help classes\@data3D\getZ">classes\@data3D\getZ</a>               -  Get the property 'z'.
%   <a href="matlab:help classes\@data3D\getZunits">classes\@data3D\getZunits</a>          -  Get the property 'zunits' from the z-axis.
%   <a href="matlab:help classes\@data3D\plus">classes\@data3D\plus</a>               -  implements addition operator for data3D objects.
%   <a href="matlab:help classes\@data3D\setDz">classes\@data3D\setDz</a>              -  Set the property 'dz'.
%   <a href="matlab:help classes\@data3D\setErrorsFromPlist">classes\@data3D\setErrorsFromPlist</a> -  sets the errors from the plist based on the error
%   <a href="matlab:help classes\@data3D\setZ">classes\@data3D\setZ</a>               -  Set the property 'z'.
%   <a href="matlab:help classes\@data3D\setZaxisName">classes\@data3D\setZaxisName</a>       -  Set the property 'z-axis name'.
%   <a href="matlab:help classes\@data3D\setZunits">classes\@data3D\setZunits</a>          -  Set the property 'zunits'.
%   <a href="matlab:help classes\@data3D\update_struct">classes\@data3D\update_struct</a>      -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@filterbank   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@filterbank\addFilters">classes\@filterbank\addFilters</a>               -  This method adds a filter to the filterbank
%   <a href="matlab:help classes\@filterbank\attachToDom">classes\@filterbank\attachToDom</a>              - % Create empty filterbank node with the attribute 'shape'
%   <a href="matlab:help classes\@filterbank\char">classes\@filterbank\char</a>                     -  convert a filterbank object into a string.
%   <a href="matlab:help classes\@filterbank\copy">classes\@filterbank\copy</a>                     -  makes a (deep) copy of the input filterbank objects.
%   <a href="matlab:help classes\@filterbank\disp">classes\@filterbank\disp</a>                     -  overloads display functionality for filterbank objects.
%   <a href="matlab:help classes\@filterbank\filterbank">classes\@filterbank\filterbank</a>               -  constructor for filterbank class.
%   <a href="matlab:help classes\@filterbank\fromDom">classes\@filterbank\fromDom</a>                  - % Get shape
%   <a href="matlab:help classes\@filterbank\fromFilters">classes\@filterbank\fromFilters</a>              - (No help available)
%   <a href="matlab:help classes\@filterbank\fromStruct">classes\@filterbank\fromStruct</a>               -  creates from a structure a FILTERBANK object.
%   <a href="matlab:help classes\@filterbank\generateConstructorPlist">classes\@filterbank\generateConstructorPlist</a> -  generates a PLIST from the properties which can rebuild the object.
%   <a href="matlab:help classes\@filterbank\loadobj">classes\@filterbank\loadobj</a>                  -  is called by the load function for user objects.
%   <a href="matlab:help classes\@filterbank\resp">classes\@filterbank\resp</a>                     -  Make a frequency response of a filterbank.
%   <a href="matlab:help classes\@filterbank\setIunits">classes\@filterbank\setIunits</a>                -  sets the 'iunits' property of each filter-object inside the filterbank-object.
%   <a href="matlab:help classes\@filterbank\setOunits">classes\@filterbank\setOunits</a>                -  sets the 'ounits' property of each filter-object inside the filterbank-object.
%   <a href="matlab:help classes\@filterbank\update_struct">classes\@filterbank\update_struct</a>            -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@fsdata   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@fsdata\attachToDom">classes\@fsdata\attachToDom</a>   - % Create empty fsdata node with the attribute 'shape'
%   <a href="matlab:help classes\@fsdata\char">classes\@fsdata\char</a>          -  convert a fsdata object into a string.
%   <a href="matlab:help classes\@fsdata\copy">classes\@fsdata\copy</a>          -  makes a (deep) copy of the input fsdata objects.
%   <a href="matlab:help classes\@fsdata\disp">classes\@fsdata\disp</a>          -  implement terminal display for fsdata object.
%   <a href="matlab:help classes\@fsdata\fromDom">classes\@fsdata\fromDom</a>       - % Get shape
%   <a href="matlab:help classes\@fsdata\fromStruct">classes\@fsdata\fromStruct</a>    -  creates from a structure a FSDATA object.
%   <a href="matlab:help classes\@fsdata\fsdata">classes\@fsdata\fsdata</a>        -  frequency-series object class constructor.
%   <a href="matlab:help classes\@fsdata\getFfromYFs">classes\@fsdata\getFfromYFs</a>   - GETDSFROMYFS grows an evenly spaced frequency vector of N points for samplerate fs.
%   <a href="matlab:help classes\@fsdata\loadobj">classes\@fsdata\loadobj</a>       -  is called by the load function for user objects.
%   <a href="matlab:help classes\@fsdata\plot">classes\@fsdata\plot</a>          -  plots the given fsdata on the given axes
%   <a href="matlab:help classes\@fsdata\setEnbw">classes\@fsdata\setEnbw</a>       -  Set the property 'enbw'.
%   <a href="matlab:help classes\@fsdata\setFs">classes\@fsdata\setFs</a>         -  Set the property 'fs'.
%   <a href="matlab:help classes\@fsdata\setNavs">classes\@fsdata\setNavs</a>       -  Set the property 'navs'.
%   <a href="matlab:help classes\@fsdata\setT0">classes\@fsdata\setT0</a>         -  Set the property 't0'.
%   <a href="matlab:help classes\@fsdata\update_struct">classes\@fsdata\update_struct</a> -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@history   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@history\attachToDom">classes\@history\attachToDom</a>           - % Attach the history always to the historyRoot node
%   <a href="matlab:help classes\@history\char">classes\@history\char</a>                  -  convert a param object into a string.
%   <a href="matlab:help classes\@history\compressHistory">classes\@history\compressHistory</a>       -  returns an array of unique histories based on the input
%   <a href="matlab:help classes\@history\copy">classes\@history\copy</a>                  -  makes a (deep) copy of the input history objects.
%   <a href="matlab:help classes\@history\disp">classes\@history\disp</a>                  -  implement terminal display for history object.
%   <a href="matlab:help classes\@history\dotview">classes\@history\dotview</a>               -  view history of an object via the DOT interpreter.
%   <a href="matlab:help classes\@history\expandHistory">classes\@history\expandHistory</a>         - % fix history tree
%   <a href="matlab:help classes\@history\fromDom">classes\@history\fromDom</a>               - %  <historyRoot>
%   <a href="matlab:help classes\@history\fromStruct">classes\@history\fromStruct</a>            -  creates from a structure a HISTORY object.
%   <a href="matlab:help classes\@history\getAllUniqueHistories">classes\@history\getAllUniqueHistories</a> - % Collect the histories from the inhists
%   <a href="matlab:help classes\@history\getNodes">classes\@history\getNodes</a>              -  converts a history object to a nodes structure suitable for plotting as a tree.
%   <a href="matlab:help classes\@history\getObjectClass">classes\@history\getObjectClass</a>        -  get the class of object that this history refers to.
%   <a href="matlab:help classes\@history\hist2dot">classes\@history\hist2dot</a>              -  converts a history object to a 'DOT' file suitable for processing with graphviz
%   <a href="matlab:help classes\@history\hist2m">classes\@history\hist2m</a>                -  writes a new m-file that reproduces the analysis described in the history object.
%   <a href="matlab:help classes\@history\history">classes\@history\history</a>               -  History object class constructor.
%   <a href="matlab:help classes\@history\isequal">classes\@history\isequal</a>               -  overloads the isequal operator for ltpda history objects.
%   <a href="matlab:help classes\@history\loadobj">classes\@history\loadobj</a>               -  is called by the load function for user objects.
%   <a href="matlab:help classes\@history\rebuild">classes\@history\rebuild</a>               -  rebuilds the orignal object using the history.
%   <a href="matlab:help classes\@history\setContext">classes\@history\setContext</a>            -  set the context of object that this history refers to.
%   <a href="matlab:help classes\@history\setObjectClass">classes\@history\setObjectClass</a>        -  set the class of object that this history refers to.
%   <a href="matlab:help classes\@history\string">classes\@history\string</a>                -  writes a command string that can be used to recreate the input history object.
%   <a href="matlab:help classes\@history\update_struct">classes\@history\update_struct</a>         -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@ltpda_algorithm   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@ltpda_algorithm\ltpda_algorithm">classes\@ltpda_algorithm\ltpda_algorithm</a> -  is a superclass for algorithm classes.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@ltpda_algorithm\tests   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@ltpda_algorithm\tests\test_empty_constructor">classes\@ltpda_algorithm\tests\test_empty_constructor</a> - Tests that the emtpy constructor works and returns and object of the
%   <a href="matlab:help classes\@ltpda_algorithm\tests\test_rebuild">classes\@ltpda_algorithm\tests\test_rebuild</a>           - Tests that an object can be rebuilt.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@ltpda_container   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@ltpda_container\abs">classes\@ltpda_container\abs</a>             -  overloads the Absolute value method for analysis objects in a ltpda_container object.
%   <a href="matlab:help classes\@ltpda_container\conj">classes\@ltpda_container\conj</a>            -  implements conj operator for ltpda_container objects.
%   <a href="matlab:help classes\@ltpda_container\consolidate">classes\@ltpda_container\consolidate</a>     -  resamples all input AOs in a ltpda_container object onto the same time grid.
%   <a href="matlab:help classes\@ltpda_container\detrend">classes\@ltpda_container\detrend</a>         -  detrends the analysis objects in a ltpda_container object using a polynomial of degree N.
%   <a href="matlab:help classes\@ltpda_container\diff">classes\@ltpda_container\diff</a>            -  differentiates the data in a ltpda_container object.
%   <a href="matlab:help classes\@ltpda_container\downsample">classes\@ltpda_container\downsample</a>      -  downsamples each time-series AO in the ltpda_container.
%   <a href="matlab:help classes\@ltpda_container\dsmean">classes\@ltpda_container\dsmean</a>          -  resamples each time-series AO in the ltpda_container.
%   <a href="matlab:help classes\@ltpda_container\fft">classes\@ltpda_container\fft</a>             -  implements the fft operator for ltpda_container objects.
%   <a href="matlab:help classes\@ltpda_container\fixfs">classes\@ltpda_container\fixfs</a>           -  adjusts the sample frequency of each time-series AO in the ltpda_container.
%   <a href="matlab:help classes\@ltpda_container\heterodyne">classes\@ltpda_container\heterodyne</a>      -  heterodynes time-series in a ltpda_container object.
%   <a href="matlab:help classes\@ltpda_container\interp">classes\@ltpda_container\interp</a>          -  interpolate the values of each AO in the ltpda_container at new values.
%   <a href="matlab:help classes\@ltpda_container\interpmissing">classes\@ltpda_container\interpmissing</a>   -  interpolate missing samples of each time-series AO in the ltpda_container.
%   <a href="matlab:help classes\@ltpda_container\iplotPSD">classes\@ltpda_container\iplotPSD</a>        -  iplotPSD plots the sqrt of PSD AOs a ltpda_container object, including error bars
%   <a href="matlab:help classes\@ltpda_container\lpsd">classes\@ltpda_container\lpsd</a>            -  computes the log-scale PSD of the time-series AOs in a ltpda_container object.
%   <a href="matlab:help classes\@ltpda_container\ltpda_container">classes\@ltpda_container\ltpda_container</a> -  is the abstract ltpda class for ltpda multiple user object classes.
%   <a href="matlab:help classes\@ltpda_container\polyfit">classes\@ltpda_container\polyfit</a>         -  overloads polyfit() function of MATLAB for ltpda_container objects.
%   <a href="matlab:help classes\@ltpda_container\psd">classes\@ltpda_container\psd</a>             -  computes the PSD of the time-series in a ltpda_container object.
%   <a href="matlab:help classes\@ltpda_container\removeVal">classes\@ltpda_container\removeVal</a>       -  removes values from each AO in the ltpda_container.
%   <a href="matlab:help classes\@ltpda_container\resample">classes\@ltpda_container\resample</a>        -  resamples each time-series AO in the ltpda_container.
%   <a href="matlab:help classes\@ltpda_container\search">classes\@ltpda_container\search</a>          -  selects objects inside the collection/matrix object that match the given name.
%   <a href="matlab:help classes\@ltpda_container\simplifyYunits">classes\@ltpda_container\simplifyYunits</a>  -  overloads the simplifyYunits value method for analysis objects in a ltpda_container object.
%   <a href="matlab:help classes\@ltpda_container\split">classes\@ltpda_container\split</a>           -  splits a ltpda_container object into the specified segments.
%   <a href="matlab:help classes\@ltpda_container\sqrt">classes\@ltpda_container\sqrt</a>            -  computes the sqrt of each object in the ltpda_container.
%   <a href="matlab:help classes\@ltpda_container\subsData">classes\@ltpda_container\subsData</a>        -  computes the SUBSDATA of the time-series in a ltpda_container object.
%   <a href="matlab:help classes\@ltpda_container\timeaverage">classes\@ltpda_container\timeaverage</a>     -  Averages time series intervals in a ltpda_container object.
%   <a href="matlab:help classes\@ltpda_container\toSI">classes\@ltpda_container\toSI</a>            -  overloads the toSI value method for analysis objects in a ltpda_container object.
%   <a href="matlab:help classes\@ltpda_container\uminus">classes\@ltpda_container\uminus</a>          -  overloads the uminus operator for all AOs in the ltpda_container.
%   <a href="matlab:help classes\@ltpda_container\wrapper">classes\@ltpda_container\wrapper</a>         -  applies the given method to each object in the object.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@ltpda_data   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@ltpda_data\attachToDom">classes\@ltpda_data\attachToDom</a>        - % Add yaxis
%   <a href="matlab:help classes\@ltpda_data\cast">classes\@ltpda_data\cast</a>               -  - converts the numeric values in a ltpda_data object to a new data type.
%   <a href="matlab:help classes\@ltpda_data\char">classes\@ltpda_data\char</a>               -  convert a ltpda_data object into a string.
%   <a href="matlab:help classes\@ltpda_data\copy">classes\@ltpda_data\copy</a>               -  copies all fields of the ltpda_data class to the new object.
%   <a href="matlab:help classes\@ltpda_data\fromDom">classes\@ltpda_data\fromDom</a>            - %%%%%%%%%% Call super-class
%   <a href="matlab:help classes\@ltpda_data\fromStruct">classes\@ltpda_data\fromStruct</a>         -  sets all properties which are defined in the ltpda_data class from the structure to the input object.
%   <a href="matlab:help classes\@ltpda_data\getDy">classes\@ltpda_data\getDy</a>              -  Get the property 'dy'.
%   <a href="matlab:help classes\@ltpda_data\getY">classes\@ltpda_data\getY</a>               -  Get the property 'y'.
%   <a href="matlab:help classes\@ltpda_data\getYunits">classes\@ltpda_data\getYunits</a>          -  Get the property 'yunits' from the y-axis.
%   <a href="matlab:help classes\@ltpda_data\ltpda_data">classes\@ltpda_data\ltpda_data</a>         -  is the abstract base class for ltpda data objects.
%   <a href="matlab:help classes\@ltpda_data\prepareForPlotting">classes\@ltpda_data\prepareForPlotting</a> -  takes the input data object and returns quantities for
%   <a href="matlab:help classes\@ltpda_data\setDy">classes\@ltpda_data\setDy</a>              -  Set the property 'dy'.
%   <a href="matlab:help classes\@ltpda_data\setErrorsFromPlist">classes\@ltpda_data\setErrorsFromPlist</a> -  sets the errors from the plist based on the error
%   <a href="matlab:help classes\@ltpda_data\setY">classes\@ltpda_data\setY</a>               -  Set the property 'y'.
%   <a href="matlab:help classes\@ltpda_data\setYaxisName">classes\@ltpda_data\setYaxisName</a>       -  Set the property 'y-axis name'.
%   <a href="matlab:help classes\@ltpda_data\setYunits">classes\@ltpda_data\setYunits</a>          -  Set the property 'yunits'.
%   <a href="matlab:help classes\@ltpda_data\update_struct">classes\@ltpda_data\update_struct</a>      -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@ltpda_filter   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@ltpda_filter\attachToDom">classes\@ltpda_filter\attachToDom</a>  - % Add fs
%   <a href="matlab:help classes\@ltpda_filter\conj">classes\@ltpda_filter\conj</a>         -  overloads conjugate functionality for ltpda_filter objects.
%   <a href="matlab:help classes\@ltpda_filter\copy">classes\@ltpda_filter\copy</a>         -  copies all fields of the ltpda_filter class to the new object.
%   <a href="matlab:help classes\@ltpda_filter\fromDom">classes\@ltpda_filter\fromDom</a>      - %%%%%%%%%% Call super-class
%   <a href="matlab:help classes\@ltpda_filter\fromStruct">classes\@ltpda_filter\fromStruct</a>   -  sets all properties which are defined in the ltpda_filter class from the structure to the input object.
%   <a href="matlab:help classes\@ltpda_filter\impresp">classes\@ltpda_filter\impresp</a>      -  Make an impulse response of the filter.
%   <a href="matlab:help classes\@ltpda_filter\ltpda_filter">classes\@ltpda_filter\ltpda_filter</a> -  is the abstract base class for ltpda filter objects.
%   <a href="matlab:help classes\@ltpda_filter\respCore">classes\@ltpda_filter\respCore</a>     -  returns the complex response of one miir or mfir object.
%   <a href="matlab:help classes\@ltpda_filter\setA">classes\@ltpda_filter\setA</a>         -  Set the property 'a'
%   <a href="matlab:help classes\@ltpda_filter\setFs">classes\@ltpda_filter\setFs</a>        -  Set the property 'fs' to a filter object
%   <a href="matlab:help classes\@ltpda_filter\setHistout">classes\@ltpda_filter\setHistout</a>   -  sets the 'histout' property of the filter object.
%   <a href="matlab:help classes\@ltpda_filter\setInfile">classes\@ltpda_filter\setInfile</a>    -  Set the property 'infile'
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@ltpda_nuo   %%%%%%%%%%%%%%%%%%%%
%
%   classes\@ltpda_nuo\attachToDom - (No help available)
%   <a href="matlab:help classes\@ltpda_nuo\copy">classes\@ltpda_nuo\copy</a>        -  copies all fields of the ltpda_nuo class to the new object.
%   <a href="matlab:help classes\@ltpda_nuo\fromDom">classes\@ltpda_nuo\fromDom</a>     - %%%%%%%%%% Call super-class
%   <a href="matlab:help classes\@ltpda_nuo\fromStruct">classes\@ltpda_nuo\fromStruct</a>  -  sets all properties which are defined in the ltpda_nuo class from the structure to the input object.
%   <a href="matlab:help classes\@ltpda_nuo\ltpda_nuo">classes\@ltpda_nuo\ltpda_nuo</a>   -  is the abstract ltpda base class for ltpda non user object classes.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@ltpda_obj   %%%%%%%%%%%%%%%%%%%%
%
%   classes\@ltpda_obj\attachToDom - (No help available)
%   <a href="matlab:help classes\@ltpda_obj\fromDom">classes\@ltpda_obj\fromDom</a>     - %%%%%%%%%% Call super-class
%   <a href="matlab:help classes\@ltpda_obj\fromStruct">classes\@ltpda_obj\fromStruct</a>  -  sets all properties which are defined in the ltpda_obj class from the structure to the input object.
%   <a href="matlab:help classes\@ltpda_obj\ge">classes\@ltpda_obj\ge</a>          -  overloads >= operator for ltpda objects
%   <a href="matlab:help classes\@ltpda_obj\get">classes\@ltpda_obj\get</a>         -  get a property of a object.
%   <a href="matlab:help classes\@ltpda_obj\gt">classes\@ltpda_obj\gt</a>          -  overloads > operator for ltpda objects
%   <a href="matlab:help classes\@ltpda_obj\isequal">classes\@ltpda_obj\isequal</a>     -  overloads the isequal operator for ltpda objects.
%   <a href="matlab:help classes\@ltpda_obj\isequalMain">classes\@ltpda_obj\isequalMain</a> -  checks if the inputs objects are equal or not.
%   <a href="matlab:help classes\@ltpda_obj\isprop">classes\@ltpda_obj\isprop</a>      -  tests if the given field is one of the object properties.
%   classes\@ltpda_obj\isprop_core - (No help available)
%   <a href="matlab:help classes\@ltpda_obj\le">classes\@ltpda_obj\le</a>          -  overloads <= operator for ltpda objects
%   <a href="matlab:help classes\@ltpda_obj\lt">classes\@ltpda_obj\lt</a>          -  overloads < operator for ltpda objects
%   <a href="matlab:help classes\@ltpda_obj\ltpda_obj">classes\@ltpda_obj\ltpda_obj</a>   -  is the abstract ltpda base class.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@ltpda_tf   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@ltpda_tf\attachToDom">classes\@ltpda_tf\attachToDom</a>   - % Add iunits
%   <a href="matlab:help classes\@ltpda_tf\copy">classes\@ltpda_tf\copy</a>          -  copies all fields of the ltpda_tf class to the new object.
%   <a href="matlab:help classes\@ltpda_tf\fromDom">classes\@ltpda_tf\fromDom</a>       - %%%%%%%%%% Call super-class
%   <a href="matlab:help classes\@ltpda_tf\fromStruct">classes\@ltpda_tf\fromStruct</a>    -  sets all properties which are defined in the ltpda_tf class from the structure to the input object.
%   <a href="matlab:help classes\@ltpda_tf\ltpda_tf">classes\@ltpda_tf\ltpda_tf</a>      -  is the abstract class which defines transfer functions.
%   <a href="matlab:help classes\@ltpda_tf\plot">classes\@ltpda_tf\plot</a>          -  the transfer function objects on the given axes.
%   <a href="matlab:help classes\@ltpda_tf\resp">classes\@ltpda_tf\resp</a>          -  returns the complex response of a transfer function as an Analysis Object.
%   <a href="matlab:help classes\@ltpda_tf\setIunits">classes\@ltpda_tf\setIunits</a>     -  sets the 'iunits' property a transfer function object.
%   <a href="matlab:help classes\@ltpda_tf\setOunits">classes\@ltpda_tf\setOunits</a>     -  sets the 'ounits' property a transfer function object.
%   <a href="matlab:help classes\@ltpda_tf\simplifyUnits">classes\@ltpda_tf\simplifyUnits</a> -  simplify the input units and/or output units of the object.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@ltpda_uo   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@ltpda_uo\attachToDom">classes\@ltpda_uo\attachToDom</a>           - % Add name
%   <a href="matlab:help classes\@ltpda_uo\bsubmit">classes\@ltpda_uo\bsubmit</a>               -  Submits the given collection of objects in binary form to an LTPDA repository
%   <a href="matlab:help classes\@ltpda_uo\convertSinfo2Plist">classes\@ltpda_uo\convertSinfo2Plist</a>    -  Converts the 'old' sinfo structure to a PLIST-object.
%   <a href="matlab:help classes\@ltpda_uo\copy">classes\@ltpda_uo\copy</a>                  -  copies all fields of the ltpda_uo class to the new object.
%   <a href="matlab:help classes\@ltpda_uo\fromComplexDatafile">classes\@ltpda_uo\fromComplexDatafile</a>   -  Default method to convert a complex data-file into a ltpda_uoh-object
%   <a href="matlab:help classes\@ltpda_uo\fromDataInMAT">classes\@ltpda_uo\fromDataInMAT</a>         -  Default method to convert a data-array into am ltpda_uoh
%   <a href="matlab:help classes\@ltpda_uo\fromDatafile">classes\@ltpda_uo\fromDatafile</a>          -  Default method to convert a data-file into a ltpda_uoh-object
%   <a href="matlab:help classes\@ltpda_uo\fromDom">classes\@ltpda_uo\fromDom</a>               - %%%%%%%%%% Call super-class
%   <a href="matlab:help classes\@ltpda_uo\fromFile">classes\@ltpda_uo\fromFile</a>              - Construct a ltpda_ob from a file
%   <a href="matlab:help classes\@ltpda_uo\fromLISO">classes\@ltpda_uo\fromLISO</a>              -  Default method to read LISO files
%   <a href="matlab:help classes\@ltpda_uo\fromModel">classes\@ltpda_uo\fromModel</a>             -  Construct an a built in model
%   <a href="matlab:help classes\@ltpda_uo\fromRepository">classes\@ltpda_uo\fromRepository</a>        - Retrieve a ltpda_uo from a repository
%   <a href="matlab:help classes\@ltpda_uo\fromStruct">classes\@ltpda_uo\fromStruct</a>            -  sets all properties which are defined in the ltpda_uo class from the structure to the input object.
%   <a href="matlab:help classes\@ltpda_uo\getBuiltInModels">classes\@ltpda_uo\getBuiltInModels</a>      -  returns a list of the built-in AO models found on the
%   <a href="matlab:help classes\@ltpda_uo\legendString">classes\@ltpda_uo\legendString</a>          -  returns a string suitable for use in plot legends.
%   <a href="matlab:help classes\@ltpda_uo\load">classes\@ltpda_uo\load</a>                  -  Loads LTPDA objects from a file
%   <a href="matlab:help classes\@ltpda_uo\ltpda_uo">classes\@ltpda_uo\ltpda_uo</a>              -  is the abstract ltpda base class for ltpda user object classes.
%   <a href="matlab:help classes\@ltpda_uo\prepareSinfoForSubmit">classes\@ltpda_uo\prepareSinfoForSubmit</a> -  With this method is it possible to modify the submission structure
%   <a href="matlab:help classes\@ltpda_uo\processSetterValues">classes\@ltpda_uo\processSetterValues</a>   - (No help available)
%   <a href="matlab:help classes\@ltpda_uo\retrieve">classes\@ltpda_uo\retrieve</a>              -  retrieves a collection of objects from an LTPDA repository.
%   <a href="matlab:help classes\@ltpda_uo\save">classes\@ltpda_uo\save</a>                  -  overloads save operator for ltpda objects.
%   <a href="matlab:help classes\@ltpda_uo\search">classes\@ltpda_uo\search</a>                -  select objects that match the given name.
%   <a href="matlab:help classes\@ltpda_uo\setDescription">classes\@ltpda_uo\setDescription</a>        -  sets the 'description' property of a ltpda_uo object.
%   <a href="matlab:help classes\@ltpda_uo\setName">classes\@ltpda_uo\setName</a>               -  Sets the property 'name' of an ltpda_uoh object.
%   <a href="matlab:help classes\@ltpda_uo\setPropertyValue">classes\@ltpda_uo\setPropertyValue</a>      -  sets the value of a property of one or more objects.
%   <a href="matlab:help classes\@ltpda_uo\setPropertyValue_core">classes\@ltpda_uo\setPropertyValue_core</a> -  sets the value of a property of one or more objects.
%   <a href="matlab:help classes\@ltpda_uo\setUUID">classes\@ltpda_uo\setUUID</a>               -  Set the property 'UUID'
%   <a href="matlab:help classes\@ltpda_uo\submit">classes\@ltpda_uo\submit</a>                -  Submits the given collection of objects to an LTPDA repository
%   <a href="matlab:help classes\@ltpda_uo\submitDialog">classes\@ltpda_uo\submitDialog</a>          -  Creates a connection and the sinfo structure depending of the input variables.
%   <a href="matlab:help classes\@ltpda_uo\update">classes\@ltpda_uo\update</a>                -  Updates the given object in an LTPDA repository
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@ltpda_uoh   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@ltpda_uoh\addHistory">classes\@ltpda_uoh\addHistory</a>               -  Add a history-object to the ltpda_uo object.
%   <a href="matlab:help classes\@ltpda_uoh\addHistoryWoChangingUUID">classes\@ltpda_uoh\addHistoryWoChangingUUID</a> -  Add a history-object to the ltpda_uo object.
%   <a href="matlab:help classes\@ltpda_uoh\attachToDom">classes\@ltpda_uoh\attachToDom</a>              - % Add hist
%   <a href="matlab:help classes\@ltpda_uoh\clearHistory">classes\@ltpda_uoh\clearHistory</a>             -  Clears the history of an object with history.
%   <a href="matlab:help classes\@ltpda_uoh\copy">classes\@ltpda_uoh\copy</a>                     -  copies all fields of the ltpda_uoh class to the new object.
%   <a href="matlab:help classes\@ltpda_uoh\created">classes\@ltpda_uoh\created</a>                  -  Returns a time object of the last modification.
%   <a href="matlab:help classes\@ltpda_uoh\creator">classes\@ltpda_uoh\creator</a>                  -  Extract the creator(s) from the history.
%   <a href="matlab:help classes\@ltpda_uoh\csvGenerateData">classes\@ltpda_uoh\csvGenerateData</a>          -  Default method to convert a ltpda_uoh-object into csv data.
%   <a href="matlab:help classes\@ltpda_uoh\csvexport">classes\@ltpda_uoh\csvexport</a>                -  Exports the data of an object to a csv file.
%   <a href="matlab:help classes\@ltpda_uoh\fromDom">classes\@ltpda_uoh\fromDom</a>                  - %%%%%%%%%% Call super-class
%   <a href="matlab:help classes\@ltpda_uoh\fromModel">classes\@ltpda_uoh\fromModel</a>                -  Construct an a built in model
%   <a href="matlab:help classes\@ltpda_uoh\fromRepository">classes\@ltpda_uoh\fromRepository</a>           - Retrieve a ltpda_uo from a repository
%   <a href="matlab:help classes\@ltpda_uoh\fromStruct">classes\@ltpda_uoh\fromStruct</a>               -  sets all properties which are defined in the ltpda_uoh class from the structure to the input object.
%   <a href="matlab:help classes\@ltpda_uoh\index">classes\@ltpda_uoh\index</a>                    -  index into a 'ltpda_uoh' object array or matrix. This properly captures the history.
%   <a href="matlab:help classes\@ltpda_uoh\loadobj">classes\@ltpda_uoh\loadobj</a>                  - % This is an old-type ltpda object from disk, so we don't need to
%   <a href="matlab:help classes\@ltpda_uoh\ltpda_uoh">classes\@ltpda_uoh\ltpda_uoh</a>                -  is the abstract ltpda base class for ltpda user object classes with history
%   <a href="matlab:help classes\@ltpda_uoh\plot">classes\@ltpda_uoh\plot</a>                     -  plots the user object on a figure.
%   <a href="matlab:help classes\@ltpda_uoh\prepareSinfoForSubmit">classes\@ltpda_uoh\prepareSinfoForSubmit</a>    -  This method prepend the timespan as a XML-String to the submission structure.
%   <a href="matlab:help classes\@ltpda_uoh\rebuild">classes\@ltpda_uoh\rebuild</a>                  -  rebuilds the input objects using the history.
%   <a href="matlab:help classes\@ltpda_uoh\report">classes\@ltpda_uoh\report</a>                   -  generates an HTML report about the input objects.
%   <a href="matlab:help classes\@ltpda_uoh\requirements">classes\@ltpda_uoh\requirements</a>             -  Returns a list of LTPDA extension requirements for a given object.
%   <a href="matlab:help classes\@ltpda_uoh\saveobj">classes\@ltpda_uoh\saveobj</a>                  - % MATLAB does a double pass save, firs calculating the size, then doing
%   <a href="matlab:help classes\@ltpda_uoh\setHist">classes\@ltpda_uoh\setHist</a>                  -  Set the property 'hist'
%   <a href="matlab:help classes\@ltpda_uoh\setObjectProperties">classes\@ltpda_uoh\setObjectProperties</a>      -  sets the object properties of an ltpda_uoh object.
%   <a href="matlab:help classes\@ltpda_uoh\setPlotAxes">classes\@ltpda_uoh\setPlotAxes</a>              -  sets the 'axes' property of a the object's plotinfo.
%   <a href="matlab:help classes\@ltpda_uoh\setPlotColor">classes\@ltpda_uoh\setPlotColor</a>             -  sets the color of a the object's plotinfo.
%   <a href="matlab:help classes\@ltpda_uoh\setPlotFigure">classes\@ltpda_uoh\setPlotFigure</a>            -  sets the 'figure' property of a the object's plotinfo.
%   <a href="matlab:help classes\@ltpda_uoh\setPlotFillmarker">classes\@ltpda_uoh\setPlotFillmarker</a>        -  defines if the plot function fill the marker or not.
%   <a href="matlab:help classes\@ltpda_uoh\setPlotLineStyle">classes\@ltpda_uoh\setPlotLineStyle</a>         -  sets the linestyle of a the object's plotinfo.
%   <a href="matlab:help classes\@ltpda_uoh\setPlotLinewidth">classes\@ltpda_uoh\setPlotLinewidth</a>         -  sets the linewidth of a the object's plotinfo.
%   <a href="matlab:help classes\@ltpda_uoh\setPlotMarker">classes\@ltpda_uoh\setPlotMarker</a>            -  sets the marker of a the object's plotinfo.
%   <a href="matlab:help classes\@ltpda_uoh\setPlotMarkerEdgeColor">classes\@ltpda_uoh\setPlotMarkerEdgeColor</a>   -  sets the color of a the object's marker edge.
%   <a href="matlab:help classes\@ltpda_uoh\setPlotMarkerFaceColor">classes\@ltpda_uoh\setPlotMarkerFaceColor</a>   -  sets the color of a the object's marker face.
%   <a href="matlab:help classes\@ltpda_uoh\setPlotMarkersize">classes\@ltpda_uoh\setPlotMarkersize</a>        -  sets the markersize of a the object's plotinfo.
%   <a href="matlab:help classes\@ltpda_uoh\setPlotinfo">classes\@ltpda_uoh\setPlotinfo</a>              -  sets the 'plotinfo' property of a ltpda_uoh object.
%   <a href="matlab:help classes\@ltpda_uoh\setPlottingStyle">classes\@ltpda_uoh\setPlottingStyle</a>         -  sets the style property of a the object's plotinfo.
%   <a href="matlab:help classes\@ltpda_uoh\setProcinfo">classes\@ltpda_uoh\setProcinfo</a>              -  sets the 'procinfo' property of a ltpda_uoh object.
%   <a href="matlab:help classes\@ltpda_uoh\setProperties">classes\@ltpda_uoh\setProperties</a>            -  set different properties of an object.
%   <a href="matlab:help classes\@ltpda_uoh\setPropertyValue">classes\@ltpda_uoh\setPropertyValue</a>         - (No help available)
%   <a href="matlab:help classes\@ltpda_uoh\setShowsErrors">classes\@ltpda_uoh\setShowsErrors</a>           -  sets the 'showErrors' property of a the object's plotinfo.
%   <a href="matlab:help classes\@ltpda_uoh\setTimespan">classes\@ltpda_uoh\setTimespan</a>              -  sets the 'timespan' property of a ltpda_uoh object.
%   <a href="matlab:help classes\@ltpda_uoh\string">classes\@ltpda_uoh\string</a>                   -  writes a command string that can be used to recreate the input object(s).
%   <a href="matlab:help classes\@ltpda_uoh\testCallerIsMethod">classes\@ltpda_uoh\testCallerIsMethod</a>       -  hidden static method which tests the 'internal' command of a LTPDA-function.
%   <a href="matlab:help classes\@ltpda_uoh\type">classes\@ltpda_uoh\type</a>                     -  converts the input objects to MATLAB functions.
%   <a href="matlab:help classes\@ltpda_uoh\viewHistory">classes\@ltpda_uoh\viewHistory</a>              -  Displays the history of an object as a dot-view or a MATLAB figure.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@ltpda_vector   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@ltpda_vector\attachToDom">classes\@ltpda_vector\attachToDom</a>   - % Add name
%   <a href="matlab:help classes\@ltpda_vector\cast">classes\@ltpda_vector\cast</a>          -  - converts the numeric values in a ltpda_vector object to a new data type.
%   <a href="matlab:help classes\@ltpda_vector\char">classes\@ltpda_vector\char</a>          -  convert a ltpda_vector object into a string.
%   <a href="matlab:help classes\@ltpda_vector\copy">classes\@ltpda_vector\copy</a>          -  copies all fields of the ltpda_vector class to the new object.
%   <a href="matlab:help classes\@ltpda_vector\disp">classes\@ltpda_vector\disp</a>          -  overloads display functionality for ltpda_vector objects.
%   <a href="matlab:help classes\@ltpda_vector\fromDom">classes\@ltpda_vector\fromDom</a>       - %%%%%%%%%% Call super-class
%   <a href="matlab:help classes\@ltpda_vector\fromStruct">classes\@ltpda_vector\fromStruct</a>    -  sets all properties which are defined in the ltpda_vector class from the structure to the input object.
%   <a href="matlab:help classes\@ltpda_vector\getData">classes\@ltpda_vector\getData</a>       - GETY Get the property 'data'.
%   <a href="matlab:help classes\@ltpda_vector\getDdata">classes\@ltpda_vector\getDdata</a>      - GETDY Get the property 'ddata'.
%   <a href="matlab:help classes\@ltpda_vector\getName">classes\@ltpda_vector\getName</a>       - GETY Get the property 'name'.
%   <a href="matlab:help classes\@ltpda_vector\loadobj">classes\@ltpda_vector\loadobj</a>       -  is called by the load function for user objects.
%   <a href="matlab:help classes\@ltpda_vector\ltpda_vector">classes\@ltpda_vector\ltpda_vector</a>  -  encapsulates the details of a data vector.
%   <a href="matlab:help classes\@ltpda_vector\setData">classes\@ltpda_vector\setData</a>       -  Set the property 'data'.
%   <a href="matlab:help classes\@ltpda_vector\setDdata">classes\@ltpda_vector\setDdata</a>      -  Set the property 'ddata'.
%   <a href="matlab:help classes\@ltpda_vector\setName">classes\@ltpda_vector\setName</a>       -  Set the property 'name'.
%   <a href="matlab:help classes\@ltpda_vector\setUnits">classes\@ltpda_vector\setUnits</a>      -  Set the property 'units'.
%   <a href="matlab:help classes\@ltpda_vector\simplifyUnits">classes\@ltpda_vector\simplifyUnits</a> -  simplify the 'units' property of the object.
%   <a href="matlab:help classes\@ltpda_vector\update_struct">classes\@ltpda_vector\update_struct</a> -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@matrix   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@matrix\attachToDom">classes\@matrix\attachToDom</a>              - % Create empty matrix node with the attribute 'shape'
%   <a href="matlab:help classes\@matrix\char">classes\@matrix\char</a>                     -  convert a matrix object into a string.
%   <a href="matlab:help classes\@matrix\clearObjHistories">classes\@matrix\clearObjHistories</a>        -  Clear the history of the inside objects.
%   <a href="matlab:help classes\@matrix\cohere">classes\@matrix\cohere</a>                   -  estimates the coherence between elements of the vector.
%   <a href="matlab:help classes\@matrix\copy">classes\@matrix\copy</a>                     -  makes a (deep) copy of the input matrix objects.
%   <a href="matlab:help classes\@matrix\cpsd">classes\@matrix\cpsd</a>                     -  estimates the cross-spectral density between elements of the vector.
%   <a href="matlab:help classes\@matrix\crb">classes\@matrix\crb</a>                      -  computes the inverse of the Fisher Matrix
%   <a href="matlab:help classes\@matrix\cross">classes\@matrix\cross</a>                    -  implements cross operator for matrix objects.
%   <a href="matlab:help classes\@matrix\ctranspose">classes\@matrix\ctranspose</a>               -  implements conjugate transpose operator for matrix objects.
%   <a href="matlab:help classes\@matrix\delay">classes\@matrix\delay</a>                    -  overloads ao/delay for matrix objects.
%   <a href="matlab:help classes\@matrix\det">classes\@matrix\det</a>                      -  evaluates the determinant for matrix object.
%   <a href="matlab:help classes\@matrix\disp">classes\@matrix\disp</a>                     -  overloads display functionality for matrix objects.
%   <a href="matlab:help classes\@matrix\dispersion">classes\@matrix\dispersion</a>               -  computes the dispersion function
%   <a href="matlab:help classes\@matrix\dispersionLoop">classes\@matrix\dispersionLoop</a>           -  computes the dispersion function
%   <a href="matlab:help classes\@matrix\double">classes\@matrix\double</a>                   -  - converts a matrix of objects into matrix of numbers
%   <a href="matlab:help classes\@matrix\elementOp">classes\@matrix\elementOp</a>                -  applies the given operator to the input matrices.
%   <a href="matlab:help classes\@matrix\fftfilt">classes\@matrix\fftfilt</a>                  -  fft filter for matrix objects
%   <a href="matlab:help classes\@matrix\filter">classes\@matrix\filter</a>                   -  implements N-dim filter operator for matrix objects.
%   <a href="matlab:help classes\@matrix\filtfilt">classes\@matrix\filtfilt</a>                 -  overrides the filtfilt function for matrices of analysis objects.
%   <a href="matlab:help classes\@matrix\fisher">classes\@matrix\fisher</a>                   -  Fisher matrix calculation for MATRIX models.
%   <a href="matlab:help classes\@matrix\flscovSegments">classes\@matrix\flscovSegments</a>           -  - Tool to perform a least square fit in frequency domain
%   <a href="matlab:help classes\@matrix\fromDom">classes\@matrix\fromDom</a>                  - % Get shape
%   <a href="matlab:help classes\@matrix\fromInput">classes\@matrix\fromInput</a>                - Construct a matrix object from ltpda_uoh objects.
%   <a href="matlab:help classes\@matrix\fromStruct">classes\@matrix\fromStruct</a>               -  creates from a structure a MATRIX object.
%   <a href="matlab:help classes\@matrix\fromValues">classes\@matrix\fromValues</a>               - Construct a matrix object with multiple AOs built from input values.
%   <a href="matlab:help classes\@matrix\generateConstructorPlist">classes\@matrix\generateConstructorPlist</a> -  generates a PLIST from the properties which can rebuild the object.
%   <a href="matlab:help classes\@matrix\getObjectAtIndex">classes\@matrix\getObjectAtIndex</a>         -  index into the inner objects of one matrix object.
%   <a href="matlab:help classes\@matrix\inv">classes\@matrix\inv</a>                      -  evaluates the inverse for matrix object.
%   <a href="matlab:help classes\@matrix\iplot">classes\@matrix\iplot</a>                    -  calls ao/iplot on all inner ao objects.
%   <a href="matlab:help classes\@matrix\lcohere">classes\@matrix\lcohere</a>                  -  estimates the coherence between elements of the vector using
%   <a href="matlab:help classes\@matrix\lcpsd">classes\@matrix\lcpsd</a>                    -  estimates the coherence between elements of the vector using a
%   <a href="matlab:help classes\@matrix\lincom">classes\@matrix\lincom</a>                   -  make a linear combination of analysis objects
%   <a href="matlab:help classes\@matrix\linearize">classes\@matrix\linearize</a>                -  output the derivatives of the model relative to the parameters.
%   <a href="matlab:help classes\@matrix\linfitsvd">classes\@matrix\linfitsvd</a>                -  Linear fit with singular value decomposition
%   <a href="matlab:help classes\@matrix\linlsqsvd">classes\@matrix\linlsqsvd</a>                -  Linear least squares with singular value decomposition
%   <a href="matlab:help classes\@matrix\loadobj">classes\@matrix\loadobj</a>                  -  is called by the load function for user objects.
%   <a href="matlab:help classes\@matrix\loglikelihood">classes\@matrix\loglikelihood</a>            - LOGLIKELIHOOD: Compute log-likelihood for MATRIX objects
%   <a href="matlab:help classes\@matrix\loglikelihood_core">classes\@matrix\loglikelihood_core</a>       - loglikelihood: Compute log-likelihood for MATRIX objects
%   <a href="matlab:help classes\@matrix\lscov">classes\@matrix\lscov</a>                    -  is a wrapper for MATLAB's lscov function.
%   <a href="matlab:help classes\@matrix\ltfe">classes\@matrix\ltfe</a>                     -  estimates the transfer function between elements of the vector using
%   <a href="matlab:help classes\@matrix\matrix">classes\@matrix\matrix</a>                   -  constructor for matrix class.
%   <a href="matlab:help classes\@matrix\mchNoisegen">classes\@matrix\mchNoisegen</a>              -  Generates multichannel noise data series given a model
%   <a href="matlab:help classes\@matrix\mchNoisegenFilter">classes\@matrix\mchNoisegenFilter</a>        -  Construct a matrix filter from cross-spectral density matrix
%   <a href="matlab:help classes\@matrix\mcmc">classes\@matrix\mcmc</a>                     -  estimates paramters using a Monte Carlo Markov Chain.
%   <a href="matlab:help classes\@matrix\mean">classes\@matrix\mean</a>                     -  evaluates the meanerse for matrix object.
%   <a href="matlab:help classes\@matrix\minus">classes\@matrix\minus</a>                    -  implements subtraction operator for ltpda model objects.
%   <a href="matlab:help classes\@matrix\modelSelect">classes\@matrix\modelSelect</a>              -  - method to compute the Bayes Factor using RJMCMC, LF, LM, SBIC methods
%   <a href="matlab:help classes\@matrix\mtimes">classes\@matrix\mtimes</a>                   -  implements mtimes operator for matrix objects.
%   <a href="matlab:help classes\@matrix\osize">classes\@matrix\osize</a>                    -  Returns the size of the inner object array.
%   <a href="matlab:help classes\@matrix\plot">classes\@matrix\plot</a>                     -  the matrix objects on the given axes.
%   <a href="matlab:help classes\@matrix\plus">classes\@matrix\plus</a>                     -  implements addition operator for matrix objects.
%   <a href="matlab:help classes\@matrix\power">classes\@matrix\power</a>                    - TIMES implements multiplication operator for matrix objects.
%   <a href="matlab:help classes\@matrix\rdivide">classes\@matrix\rdivide</a>                  -  implements division operator for matrix objects.
%   <a href="matlab:help classes\@matrix\rotate">classes\@matrix\rotate</a>                   -  applies rotation factor to matrix objects
%   <a href="matlab:help classes\@matrix\setObjs">classes\@matrix\setObjs</a>                  -  sets the 'objs' property of a matrix object.
%   <a href="matlab:help classes\@matrix\simplify">classes\@matrix\simplify</a>                 -  each model in the matrix.
%   <a href="matlab:help classes\@matrix\spsdSubtraction">classes\@matrix\spsdSubtraction</a>          -  makes a sPSD-weighted least-square iterative fit
%   <a href="matlab:help classes\@matrix\tdfit">classes\@matrix\tdfit</a>                    -  fit a MATRIX of transfer function SMODELs to a matrix of input and output signals.
%   <a href="matlab:help classes\@matrix\tfe">classes\@matrix\tfe</a>                      -  estimates the transfer functions between elements of the vector.
%   <a href="matlab:help classes\@matrix\times">classes\@matrix\times</a>                    -  implements multiplication operator for matrix objects.
%   <a href="matlab:help classes\@matrix\toArray">classes\@matrix\toArray</a>                  -  unpacks the objects in a matrix and places them into a MATLAB
%   <a href="matlab:help classes\@matrix\transpose">classes\@matrix\transpose</a>                -  implements transpose operator for matrix objects.
%   <a href="matlab:help classes\@matrix\unpack">classes\@matrix\unpack</a>                   -  unpacks the objects in a matrix and sets them to the given output
%   <a href="matlab:help classes\@matrix\update_struct">classes\@matrix\update_struct</a>            -  update the input structure to the current ltpda version
%   <a href="matlab:help classes\@matrix\wrapperEval">classes\@matrix\wrapperEval</a>              - % loop over inner objects
%   <a href="matlab:help classes\@matrix\xspec">classes\@matrix\xspec</a>                    - MATRIX/XSPEC applies the given cross-spectral density method to the vecor
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@mfh   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@mfh\attachToDom">classes\@mfh\attachToDom</a>                    - % create empty mfir node with the attribute 'shape'
%   <a href="matlab:help classes\@mfh\char">classes\@mfh\char</a>                           -  convert a mfh object into a string.
%   <a href="matlab:help classes\@mfh\copy">classes\@mfh\copy</a>                           -  makes a (deep) copy of the input mfh objects.
%   <a href="matlab:help classes\@mfh\declare_objects">classes\@mfh\declare_objects</a>                -  declares all constants and sub-functions in the workspace
%   <a href="matlab:help classes\@mfh\disp">classes\@mfh\disp</a>                           -  overloads display functionality for mfh objects.
%   <a href="matlab:help classes\@mfh\elementOp">classes\@mfh\elementOp</a>                      -  applies the given operator to the models.
%   <a href="matlab:help classes\@mfh\eval">classes\@mfh\eval</a>                           - % Check inputs
%   <a href="matlab:help classes\@mfh\fisher">classes\@mfh\fisher</a>                         -  Calculation of the Fisher Information Matrix/Covariance
%   <a href="matlab:help classes\@mfh\flscov">classes\@mfh\flscov</a>                         -  - Tool to perform a least square fit in frequency domain.
%   <a href="matlab:help classes\@mfh\fminsearch">classes\@mfh\fminsearch</a>                     -  uses a simplex search to minimise the given function handle.
%   <a href="matlab:help classes\@mfh\fminsearchbnd">classes\@mfh\fminsearchbnd</a>                  -  uses a simplex search to minimise the given function handle
%   <a href="matlab:help classes\@mfh\fromDom">classes\@mfh\fromDom</a>                        - % Get shape
%   <a href="matlab:help classes\@mfh\fromStruct">classes\@mfh\fromStruct</a>                     -  creates from a structure a COLLECTION object.
%   <a href="matlab:help classes\@mfh\function_handle">classes\@mfh\function_handle</a>                -  returns a MATLAB function handle version of the function.
%   <a href="matlab:help classes\@mfh\generateConstructorPlist">classes\@mfh\generateConstructorPlist</a>       -  generates a PLIST from the properties which can rebuild the object.
%   <a href="matlab:help classes\@mfh\getFitErrors">classes\@mfh\getFitErrors</a>                   -  calculates fisher matrix approximation of fit parameters
%   <a href="matlab:help classes\@mfh\getHessian">classes\@mfh\getHessian</a>                     -  calculate Hessian matrix for a given function.
%   <a href="matlab:help classes\@mfh\getJacobian">classes\@mfh\getJacobian</a>                    -  calculate Jacobian matrix for a given function.
%   <a href="matlab:help classes\@mfh\lincom">classes\@mfh\lincom</a>                         -  make a linear combination of supplied models objects
%   <a href="matlab:help classes\@mfh\loadobj">classes\@mfh\loadobj</a>                        -  is called by the load function for user objects.
%   <a href="matlab:help classes\@mfh\loglikelihood">classes\@mfh\loglikelihood</a>                  - LOGLIKELIHOOD: Compute log-likelihood for MFH objects
%   <a href="matlab:help classes\@mfh\loglikelihood_ao_td">classes\@mfh\loglikelihood_ao_td</a>            - loglikelihood_core_td: Compute log-likelihood for MFH objects
%   <a href="matlab:help classes\@mfh\loglikelihood_core">classes\@mfh\loglikelihood_core</a>             - loglikelihood_core: Compute log-likelihood for MFH objects
%   <a href="matlab:help classes\@mfh\loglikelihood_core_log">classes\@mfh\loglikelihood_core_log</a>         - loglikelihood_core_log: Compute log-likelihood for MFH objects
%   <a href="matlab:help classes\@mfh\loglikelihood_core_noiseFit_v1">classes\@mfh\loglikelihood_core_noiseFit_v1</a> - loglikelihood_core_noiseFit_v1: Compute log-likelihood for MFH objects
%   <a href="matlab:help classes\@mfh\loglikelihood_core_student">classes\@mfh\loglikelihood_core_student</a>     - loglikelihood_core_student: Compute log-likelihood for MFH objects
%   <a href="matlab:help classes\@mfh\loglikelihood_core_td">classes\@mfh\loglikelihood_core_td</a>          - loglikelihood_core_td: Compute log-likelihood for MFH objects
%   <a href="matlab:help classes\@mfh\loglikelihood_core_whittle">classes\@mfh\loglikelihood_core_whittle</a>     - loglikelihood_core_whittle: Compute log-likelihood for MFH objects
%   <a href="matlab:help classes\@mfh\loglikelihood_hyper">classes\@mfh\loglikelihood_hyper</a>            - loglikelihood_core: Compute log-likelihood for MFH objects
%   <a href="matlab:help classes\@mfh\mfh">classes\@mfh\mfh</a>                            -  function handle class constructor.
%   <a href="matlab:help classes\@mfh\minus">classes\@mfh\minus</a>                          -  implements subtraction operator for mfh objects.
%   <a href="matlab:help classes\@mfh\multinest">classes\@mfh\multinest</a>                      - (No help available)
%   <a href="matlab:help classes\@mfh\num2cell">classes\@mfh\num2cell</a>                       -  Convert numeric array into cell array.
%   <a href="matlab:help classes\@mfh\paramCovMat">classes\@mfh\paramCovMat</a>                    -  calculate the covariace matrix for the parameters.
%   <a href="matlab:help classes\@mfh\plus">classes\@mfh\plus</a>                           -  implements addition operator for mfh objects.
%   <a href="matlab:help classes\@mfh\rdivide">classes\@mfh\rdivide</a>                        -  implements division operator for mfh objects.
%   <a href="matlab:help classes\@mfh\setConstObjects">classes\@mfh\setConstObjects</a>                -  sets the 'constObjects' property of a mfh object.
%   <a href="matlab:help classes\@mfh\setInputObjects">classes\@mfh\setInputObjects</a>                -  sets the 'inputObjects' property of a mfh object.
%   <a href="matlab:help classes\@mfh\setNumeric">classes\@mfh\setNumeric</a>                     -  sets the 'numeric' property of a mfh object.
%   <a href="matlab:help classes\@mfh\setParamsToConst">classes\@mfh\setParamsToConst</a>               -  set the given parameters to be constant in the model.
%   <a href="matlab:help classes\@mfh\setSubfuncs">classes\@mfh\setSubfuncs</a>                    -  sets the 'subfuncs' property of a mfh object.
%   <a href="matlab:help classes\@mfh\subsref">classes\@mfh\subsref</a>                        - % if we didn't return already, call the built-in MATLAB subsref
%   <a href="matlab:help classes\@mfh\testHessianMatrix">classes\@mfh\testHessianMatrix</a>              -  Performs a random study of the n-dimensional error ellipsoide for a given confidence level.
%   <a href="matlab:help classes\@mfh\times">classes\@mfh\times</a>                          -  implements multiplication operator for mfh objects.
%   <a href="matlab:help classes\@mfh\update_struct">classes\@mfh\update_struct</a>                  -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@mfir   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@mfir\attachToDom">classes\@mfir\attachToDom</a>              - % create empty mfir node with the attribute 'shape'
%   <a href="matlab:help classes\@mfir\char">classes\@mfir\char</a>                     -  convert a mfir object into a string.
%   <a href="matlab:help classes\@mfir\copy">classes\@mfir\copy</a>                     -  makes a (deep) copy of the input mfir objects.
%   <a href="matlab:help classes\@mfir\disp">classes\@mfir\disp</a>                     -  overloads display functionality for mfir objects.
%   <a href="matlab:help classes\@mfir\fromA">classes\@mfir\fromA</a>                    - Construct an mfir from coefficients
%   <a href="matlab:help classes\@mfir\fromAO">classes\@mfir\fromAO</a>                   - create FIR filter from magnitude of input AO/fsdata
%   <a href="matlab:help classes\@mfir\fromDom">classes\@mfir\fromDom</a>                  - % Get shape
%   <a href="matlab:help classes\@mfir\fromPzmodel">classes\@mfir\fromPzmodel</a>              - Construct an mfir from a pzmodel
%   <a href="matlab:help classes\@mfir\fromStandard">classes\@mfir\fromStandard</a>             - Construct an mfir from a standard types
%   <a href="matlab:help classes\@mfir\fromStruct">classes\@mfir\fromStruct</a>               -  creates from a structure a MIIR object.
%   <a href="matlab:help classes\@mfir\generateConstructorPlist">classes\@mfir\generateConstructorPlist</a> -  generates a PLIST from the properties which can rebuild the object.
%   <a href="matlab:help classes\@mfir\loadobj">classes\@mfir\loadobj</a>                  -  is called by the load function for user objects.
%   <a href="matlab:help classes\@mfir\mfir">classes\@mfir\mfir</a>                     -  FIR filter object class constructor.
%   <a href="matlab:help classes\@mfir\mkbandpass">classes\@mfir\mkbandpass</a>               -  return a bandpass filter mfir(). A Cheby filter is used.
%   <a href="matlab:help classes\@mfir\mkbandreject">classes\@mfir\mkbandreject</a>             -  return a low pass filter mfir(). A Butterworth filter is used.
%   <a href="matlab:help classes\@mfir\mkhighpass">classes\@mfir\mkhighpass</a>               -  return a high pass filter mfir(). A Butterworth filter is used.
%   <a href="matlab:help classes\@mfir\mklowpass">classes\@mfir\mklowpass</a>                -  return a low pass filter mfir().
%   <a href="matlab:help classes\@mfir\parseFilterParams">classes\@mfir\parseFilterParams</a>        -  parses the input plist and returns a full plist for designing a standard FIR filter.
%   <a href="matlab:help classes\@mfir\redesign">classes\@mfir\redesign</a>                 -  redesign the input filter to work for the given sample rate.
%   <a href="matlab:help classes\@mfir\setGd">classes\@mfir\setGd</a>                    -  Set the property 'gd'
%   <a href="matlab:help classes\@mfir\update_struct">classes\@mfir\update_struct</a>            -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@miir   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@miir\attachToDom">classes\@miir\attachToDom</a>              - % Create empty miir node with the attribute 'shape'
%   <a href="matlab:help classes\@miir\char">classes\@miir\char</a>                     -  convert a miir object into a string.
%   <a href="matlab:help classes\@miir\copy">classes\@miir\copy</a>                     -  makes a (deep) copy of the input miir objects.
%   <a href="matlab:help classes\@miir\disp">classes\@miir\disp</a>                     -  overloads display functionality for miir objects.
%   <a href="matlab:help classes\@miir\filload">classes\@miir\filload</a>                  - % Load a LISO *_iir.fil file to get the filter taps and return a
%   <a href="matlab:help classes\@miir\fromAB">classes\@miir\fromAB</a>                   - Construct an miir from coefficients
%   <a href="matlab:help classes\@miir\fromAllpass">classes\@miir\fromAllpass</a>              - Construct an miir allpass filter
%   <a href="matlab:help classes\@miir\fromDom">classes\@miir\fromDom</a>                  - % Get shape
%   <a href="matlab:help classes\@miir\fromLISO">classes\@miir\fromLISO</a>                 -  Construct a miir filter from a LISO file
%   <a href="matlab:help classes\@miir\fromParfrac">classes\@miir\fromParfrac</a>              - Construct an miir from a parfrac
%   <a href="matlab:help classes\@miir\fromPzmodel">classes\@miir\fromPzmodel</a>              - Construct an miir from a pzmodel
%   <a href="matlab:help classes\@miir\fromStandard">classes\@miir\fromStandard</a>             - Construct an miir from a standard types
%   <a href="matlab:help classes\@miir\fromStruct">classes\@miir\fromStruct</a>               -  creates from a structure a MIIR object.
%   <a href="matlab:help classes\@miir\generateConstructorPlist">classes\@miir\generateConstructorPlist</a> -  generates a PLIST from the properties which can rebuild the object.
%   <a href="matlab:help classes\@miir\loadobj">classes\@miir\loadobj</a>                  -  is called by the load function for user objects.
%   <a href="matlab:help classes\@miir\miir">classes\@miir\miir</a>                     -  IIR filter object class constructor.
%   <a href="matlab:help classes\@miir\mkallpass">classes\@miir\mkallpass</a>                -  returns an allpass filter miir(). 
%   <a href="matlab:help classes\@miir\mkbandpass">classes\@miir\mkbandpass</a>               -  return a bandpass filter miir(). A Cheby filter is used.
%   <a href="matlab:help classes\@miir\mkbandreject">classes\@miir\mkbandreject</a>             -  return a low pass filter miir(). A Butterworth filter is used.
%   <a href="matlab:help classes\@miir\mkhighpass">classes\@miir\mkhighpass</a>               -  return a high pass filter miir(). A Butterworth filter is used.
%   <a href="matlab:help classes\@miir\mklowpass">classes\@miir\mklowpass</a>                -  return a low pass filter miir(). A Butterworth filter is used.
%   <a href="matlab:help classes\@miir\parseFilterParams">classes\@miir\parseFilterParams</a>        -  parses the input plist and returns a full plist for designing a standard IIR filter.
%   <a href="matlab:help classes\@miir\redesign">classes\@miir\redesign</a>                 -  redesign the input filter to work for the given sample rate.
%   <a href="matlab:help classes\@miir\setB">classes\@miir\setB</a>                     -  Set the property 'b'
%   <a href="matlab:help classes\@miir\setHistin">classes\@miir\setHistin</a>                -  Set the property 'histin'
%   <a href="matlab:help classes\@miir\update_struct">classes\@miir\update_struct</a>            -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@minfo   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@minfo\addChildren">classes\@minfo\addChildren</a>          -  Add children to this minfo.
%   <a href="matlab:help classes\@minfo\addSupportedNumTypes">classes\@minfo\addSupportedNumTypes</a> -  Add a value to the property 'supportedNumTypes'.
%   <a href="matlab:help classes\@minfo\attachToDom">classes\@minfo\attachToDom</a>          - % Create empty minfo node with the attribute 'shape'
%   <a href="matlab:help classes\@minfo\char">classes\@minfo\char</a>                 -  convert an minfo object into a string.
%   <a href="matlab:help classes\@minfo\clearSets">classes\@minfo\clearSets</a>            -  Clear the sets and plists of the input minfo objects.
%   <a href="matlab:help classes\@minfo\copy">classes\@minfo\copy</a>                 -  makes a (deep) copy of the input minfo objects.
%   <a href="matlab:help classes\@minfo\disp">classes\@minfo\disp</a>                 -  display an minfo object.
%   <a href="matlab:help classes\@minfo\fromDom">classes\@minfo\fromDom</a>              - % there exist some possibilities.
%   <a href="matlab:help classes\@minfo\fromStruct">classes\@minfo\fromStruct</a>           -  creates from a structure a MINFO object.
%   <a href="matlab:help classes\@minfo\getEncodedString">classes\@minfo\getEncodedString</a>     - % Make some plausibility checks
%   <a href="matlab:help classes\@minfo\getInfoAxis">classes\@minfo\getInfoAxis</a>          - % Build info object
%   <a href="matlab:help classes\@minfo\isequal">classes\@minfo\isequal</a>              -  overloads the isequal operator for ltpda minfo objects.
%   <a href="matlab:help classes\@minfo\loadobj">classes\@minfo\loadobj</a>              -  is called by the load function for user objects.
%   <a href="matlab:help classes\@minfo\minfo">classes\@minfo\minfo</a>                -  a helper class for LTPDA methods.
%   <a href="matlab:help classes\@minfo\modelOverview">classes\@minfo\modelOverview</a>        -  prepares an html overview of a built-in model
%   <a href="matlab:help classes\@minfo\setArgsmax">classes\@minfo\setArgsmax</a>           -  Set the property 'argsmax'.
%   <a href="matlab:help classes\@minfo\setArgsmin">classes\@minfo\setArgsmin</a>           -  Set the property 'argsmin'.
%   <a href="matlab:help classes\@minfo\setDescription">classes\@minfo\setDescription</a>       -  Set the property 'description'.
%   <a href="matlab:help classes\@minfo\setFromEncodedInfo">classes\@minfo\setFromEncodedInfo</a>   - % info{1} is empty
%   <a href="matlab:help classes\@minfo\setMclass">classes\@minfo\setMclass</a>            -  Set the property 'mclass'.
%   <a href="matlab:help classes\@minfo\setModifier">classes\@minfo\setModifier</a>          -  Set the property 'modifier'.
%   <a href="matlab:help classes\@minfo\setMpackage">classes\@minfo\setMpackage</a>          -  Set the property 'mpackage'.
%   <a href="matlab:help classes\@minfo\setMversion">classes\@minfo\setMversion</a>          -  Set the property 'mversion'.
%   <a href="matlab:help classes\@minfo\setOutmax">classes\@minfo\setOutmax</a>            -  Set the property 'outmax'.
%   <a href="matlab:help classes\@minfo\setOutmin">classes\@minfo\setOutmin</a>            -  Set the property 'outmin'.
%   <a href="matlab:help classes\@minfo\setPlists">classes\@minfo\setPlists</a>            -  Sets the property 'plists'.
%   <a href="matlab:help classes\@minfo\setSets">classes\@minfo\setSets</a>              -  Sets the property 'sets'.
%   <a href="matlab:help classes\@minfo\setSupportedNumTypes">classes\@minfo\setSupportedNumTypes</a> -  Set the property 'supportedNumTypes'.
%   <a href="matlab:help classes\@minfo\string">classes\@minfo\string</a>               -  writes a command string that can be used to recreate the input minfo object.
%   <a href="matlab:help classes\@minfo\tohtml">classes\@minfo\tohtml</a>               -  convert an minfo object to an html document
%   <a href="matlab:help classes\@minfo\tohtmlTable">classes\@minfo\tohtmlTable</a>          -  convert an minfo object to a html table without <HTML>, <BODY>, ... tags
%   <a href="matlab:help classes\@minfo\update_struct">classes\@minfo\update_struct</a>        -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@msym   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@msym\char">classes\@msym\char</a>    -  converts a msym object to a denotable string.
%   <a href="matlab:help classes\@msym\copy">classes\@msym\copy</a>    -  makes a (deep) copy of the input msym objects.
%   <a href="matlab:help classes\@msym\disp">classes\@msym\disp</a>    -  display an msym object.
%   <a href="matlab:help classes\@msym\double">classes\@msym\double</a>  -  tries to evaluate a msym to a double.
%   <a href="matlab:help classes\@msym\loadobj">classes\@msym\loadobj</a> -  is called by the load function for user objects.
%   <a href="matlab:help classes\@msym\msym">classes\@msym\msym</a>    -  LTPDA symbolic class class constructor.
%   <a href="matlab:help classes\@msym\subs">classes\@msym\subs</a>    -  Symbolic substitution.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@param   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@param\addAlternativeKey">classes\@param\addAlternativeKey</a> -  adds a key to the list of keys
%   <a href="matlab:help classes\@param\attachToDom">classes\@param\attachToDom</a>       - % Create empty param node with the attribute 'shape'
%   <a href="matlab:help classes\@param\char">classes\@param\char</a>              -  convert a param object into a string.
%   <a href="matlab:help classes\@param\copy">classes\@param\copy</a>              -  makes a (deep) copy of the input param objects.
%   <a href="matlab:help classes\@param\copyWithDefault">classes\@param\copyWithDefault</a>   -  makes a (deep) copy of the input param objects.
%   <a href="matlab:help classes\@param\disp">classes\@param\disp</a>              -  display a parameter
%   <a href="matlab:help classes\@param\fromDom">classes\@param\fromDom</a>           - % Get shape
%   <a href="matlab:help classes\@param\fromStruct">classes\@param\fromStruct</a>        -  creates from a structure a PARAM object.
%   <a href="matlab:help classes\@param\getDefaultVal">classes\@param\getDefaultVal</a>     -  retrurns the default value for this parameter
%   <a href="matlab:help classes\@param\getOptions">classes\@param\getOptions</a>        -  returns the array of options for the param
%   <a href="matlab:help classes\@param\getProperties">classes\@param\getProperties</a>     -  return all properties from a parameter.
%   <a href="matlab:help classes\@param\getProperty">classes\@param\getProperty</a>       -  get a property from a parameter.
%   <a href="matlab:help classes\@param\getVal">classes\@param\getVal</a>            -  returns the default value of a param.
%   <a href="matlab:help classes\@param\isequal">classes\@param\isequal</a>           -  overloads the isequal operator for ltpda param objects.
%   <a href="matlab:help classes\@param\loadobj">classes\@param\loadobj</a>           -  is called by the load function for user objects.
%   <a href="matlab:help classes\@param\param">classes\@param\param</a>             -  Parameter object class constructor.
%   <a href="matlab:help classes\@param\setDefaultIndex">classes\@param\setDefaultIndex</a>   -  Sets the index which points to the default value to the input.
%   <a href="matlab:help classes\@param\setDefaultOption">classes\@param\setDefaultOption</a>  -  Sets the default option of the a param object.
%   <a href="matlab:help classes\@param\setDesc">classes\@param\setDesc</a>           -  Set the property 'desc'.
%   <a href="matlab:help classes\@param\setKey">classes\@param\setKey</a>            -  Set the property 'key'.
%   <a href="matlab:help classes\@param\setKeyVal">classes\@param\setKeyVal</a>         -  Set the properties 'key' and 'val'
%   <a href="matlab:help classes\@param\setOrigin">classes\@param\setOrigin</a>         -  Set the property 'origin'.
%   <a href="matlab:help classes\@param\setProperty">classes\@param\setProperty</a>       -  set a property to a parameter.
%   <a href="matlab:help classes\@param\setReadonly">classes\@param\setReadonly</a>       -  sets the readonly flag of the param object and (if existing)
%   <a href="matlab:help classes\@param\setVal">classes\@param\setVal</a>            -  Set the property 'val'.
%   <a href="matlab:help classes\@param\string">classes\@param\string</a>            -  writes a command string that can be used to recreate the input param object.
%   <a href="matlab:help classes\@param\update_struct">classes\@param\update_struct</a>     -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@paramValue   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@paramValue\char">classes\@paramValue\char</a>                  -  convert a paramValue object into a string.
%   <a href="matlab:help classes\@paramValue\copy">classes\@paramValue\copy</a>                  -  makes a (deep) copy of the input paramValue objects.
%   <a href="matlab:help classes\@paramValue\disp">classes\@paramValue\disp</a>                  -  display a parameter value
%   <a href="matlab:help classes\@paramValue\fromStruct">classes\@paramValue\fromStruct</a>            -  creates from a structure a PARAMVALUE object.
%   <a href="matlab:help classes\@paramValue\getOptions">classes\@paramValue\getOptions</a>            -  returns the options array for this param value.
%   <a href="matlab:help classes\@paramValue\getProperty">classes\@paramValue\getProperty</a>           -  get a property to a paramValue
%   <a href="matlab:help classes\@paramValue\getVal">classes\@paramValue\getVal</a>                -  returns the default value for this param value
%   <a href="matlab:help classes\@paramValue\loadobj">classes\@paramValue\loadobj</a>               -  is called by the load function for user objects.
%   <a href="matlab:help classes\@paramValue\paramValue">classes\@paramValue\paramValue</a>            -  object class constructor.
%   <a href="matlab:help classes\@paramValue\setOptions">classes\@paramValue\setOptions</a>            -  Sets the property 'options'.
%   <a href="matlab:help classes\@paramValue\setProperty">classes\@paramValue\setProperty</a>           -  set a property to a paramValue
%   <a href="matlab:help classes\@paramValue\setReadonly">classes\@paramValue\setReadonly</a>           -  sets the readonly flag of the paramValue object.
%   <a href="matlab:help classes\@paramValue\setSelection">classes\@paramValue\setSelection</a>          -  Sets the property 'selection'.
%   <a href="matlab:help classes\@paramValue\setValIndex">classes\@paramValue\setValIndex</a>           -  Sets the property 'valIndex'.
%   <a href="matlab:help classes\@paramValue\setValIndexAndOptions">classes\@paramValue\setValIndexAndOptions</a> -  Sets the property 'valIndex' and 'options'.
%   <a href="matlab:help classes\@paramValue\update_struct">classes\@paramValue\update_struct</a>         -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@parfrac   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@parfrac\attachToDom">classes\@parfrac\attachToDom</a>              - % Create empty parfrac node with the attribute 'shape'
%   <a href="matlab:help classes\@parfrac\char">classes\@parfrac\char</a>                     -  convert a parfrac object into a string.
%   <a href="matlab:help classes\@parfrac\copy">classes\@parfrac\copy</a>                     -  makes a (deep) copy of the input parfrac objects.
%   <a href="matlab:help classes\@parfrac\disp">classes\@parfrac\disp</a>                     -  overloads display functionality for parfrac objects.
%   <a href="matlab:help classes\@parfrac\fromDom">classes\@parfrac\fromDom</a>                  - % Get shape
%   <a href="matlab:help classes\@parfrac\fromPzmodel">classes\@parfrac\fromPzmodel</a>              - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@parfrac\fromRational">classes\@parfrac\fromRational</a>             - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@parfrac\fromResidualsPolesDirect">classes\@parfrac\fromResidualsPolesDirect</a> - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@parfrac\fromStruct">classes\@parfrac\fromStruct</a>               -  creates from a structure a PARFRAC object.
%   <a href="matlab:help classes\@parfrac\generateConstructorPlist">classes\@parfrac\generateConstructorPlist</a> -  generates a PLIST from the properties which can rebuild the object.
%   <a href="matlab:help classes\@parfrac\getlowerFreq">classes\@parfrac\getlowerFreq</a>             -  gets the frequency of the lowest pole in the model.
%   <a href="matlab:help classes\@parfrac\getupperFreq">classes\@parfrac\getupperFreq</a>             -  gets the frequency of the highest pole in the model.
%   <a href="matlab:help classes\@parfrac\loadobj">classes\@parfrac\loadobj</a>                  -  is called by the load function for user objects.
%   <a href="matlab:help classes\@parfrac\parfrac">classes\@parfrac\parfrac</a>                  -  partial fraction representation of a transfer function.
%   <a href="matlab:help classes\@parfrac\respCore">classes\@parfrac\respCore</a>                 -  returns the complex response of one parfrac object.
%   <a href="matlab:help classes\@parfrac\update_struct">classes\@parfrac\update_struct</a>            -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@pest   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@pest\attachToDom">classes\@pest\attachToDom</a>              - % Create empty pest node with the attribute 'shape'
%   <a href="matlab:help classes\@pest\char">classes\@pest\char</a>                     -  convert a pest object into a string.
%   <a href="matlab:help classes\@pest\combine">classes\@pest\combine</a>                  -  combines multiple pest objects.
%   <a href="matlab:help classes\@pest\combineExps">classes\@pest\combineExps</a>              -  combine the results of different parameter estimation
%   <a href="matlab:help classes\@pest\computePdf">classes\@pest\computePdf</a>               - computes Probability Density Function from a pest object
%   <a href="matlab:help classes\@pest\copy">classes\@pest\copy</a>                     -  makes a (deep) copy of the input pest objects.
%   <a href="matlab:help classes\@pest\disp">classes\@pest\disp</a>                     -  overloads display functionality for pest objects.
%   <a href="matlab:help classes\@pest\double">classes\@pest\double</a>                   -  overloads double() function for pest objects.
%   <a href="matlab:help classes\@pest\eval">classes\@pest\eval</a>                     -  evaluate a pest object
%   <a href="matlab:help classes\@pest\find">classes\@pest\find</a>                     -  Creates analysis objects from the selected parameter(s).
%   <a href="matlab:help classes\@pest\fromAOs">classes\@pest\fromAOs</a>                  -  construct a pest object from different values.
%   <a href="matlab:help classes\@pest\fromDom">classes\@pest\fromDom</a>                  - % Get shape
%   <a href="matlab:help classes\@pest\fromStruct">classes\@pest\fromStruct</a>               -  creates from a structure a PEST object.
%   <a href="matlab:help classes\@pest\fromValues">classes\@pest\fromValues</a>               -  construct a pest object from different values.
%   <a href="matlab:help classes\@pest\generateConstructorPlist">classes\@pest\generateConstructorPlist</a> -  generates a PLIST from the properties which can rebuild the object.
%   <a href="matlab:help classes\@pest\genericSet">classes\@pest\genericSet</a>               -  sets values to a pest property.
%   <a href="matlab:help classes\@pest\getY">classes\@pest\getY</a>                     -  Get the data property 'y'.
%   <a href="matlab:help classes\@pest\jtable">classes\@pest\jtable</a>                   -  display the parameters from PEST objects in a java table.
%   <a href="matlab:help classes\@pest\loadobj">classes\@pest\loadobj</a>                  -  is called by the load function for user objects.
%   <a href="matlab:help classes\@pest\mcmcPlot">classes\@pest\mcmcPlot</a>                 -  - Tool to visualise results of a MCMC sampling.
%   <a href="matlab:help classes\@pest\mve">classes\@pest\mve</a>                      - MVE: Minimum Volume Ellipsoid estimator
%   <a href="matlab:help classes\@pest\pest">classes\@pest\pest</a>                     -  constructor for parameter estimates (pest) class.
%   <a href="matlab:help classes\@pest\plot">classes\@pest\plot</a>                     -  the pest objects on the given axes.
%   <a href="matlab:help classes\@pest\removeParameters">classes\@pest\removeParameters</a>         -  removes the named parameters from the pests.
%   <a href="matlab:help classes\@pest\setChain">classes\@pest\setChain</a>                 - SETCHI2 Set the property 'chain'
%   <a href="matlab:help classes\@pest\setChi2">classes\@pest\setChi2</a>                  -  Set the property 'chi2'
%   <a href="matlab:help classes\@pest\setCorr">classes\@pest\setCorr</a>                  -  Set the property 'corr'
%   <a href="matlab:help classes\@pest\setCov">classes\@pest\setCov</a>                   -  Set the property 'cov'
%   <a href="matlab:help classes\@pest\setDof">classes\@pest\setDof</a>                   -  Set the property 'dof'
%   <a href="matlab:help classes\@pest\setDy">classes\@pest\setDy</a>                    -  Set the property 'dy'
%   <a href="matlab:help classes\@pest\setDyForParameter">classes\@pest\setDyForParameter</a>        -  Sets the according dy-error for the specified parameter.
%   <a href="matlab:help classes\@pest\setModels">classes\@pest\setModels</a>                -  Set the property 'models'
%   <a href="matlab:help classes\@pest\setNames">classes\@pest\setNames</a>                 -  Set the property 'names'
%   <a href="matlab:help classes\@pest\setPdf">classes\@pest\setPdf</a>                   -  Set the property 'pdf'
%   <a href="matlab:help classes\@pest\setXvals">classes\@pest\setXvals</a>                 -  sets the 'xvals' property of the underlying smodel object.
%   <a href="matlab:help classes\@pest\setY">classes\@pest\setY</a>                     -  Set the property 'y'
%   <a href="matlab:help classes\@pest\setYforParameter">classes\@pest\setYforParameter</a>         -  Sets the according y-value for the specified parameter.
%   <a href="matlab:help classes\@pest\setYunits">classes\@pest\setYunits</a>                -  Set the property 'yunits'
%   <a href="matlab:help classes\@pest\setYunitsForParameter">classes\@pest\setYunitsForParameter</a>    -  Sets the according y-unit for the specified parameter.
%   <a href="matlab:help classes\@pest\simplifyYunits">classes\@pest\simplifyYunits</a>           -  simplifies the units of parameters in a pest
%   <a href="matlab:help classes\@pest\subset">classes\@pest\subset</a>                   -  Extract a subset of parameters from a pest.
%   <a href="matlab:help classes\@pest\table">classes\@pest\table</a>                    -  display the parameters from PEST objects in a java table.
%   <a href="matlab:help classes\@pest\tdChi2">classes\@pest\tdChi2</a>                   -  computes the chi-square for a parameter estimate.
%   <a href="matlab:help classes\@pest\toLaTeX">classes\@pest\toLaTeX</a>                  -  display the parameters from PEST objects in a LaTeX table.
%   <a href="matlab:help classes\@pest\update_struct">classes\@pest\update_struct</a>            -  update the input structure to the current ltpda version
%   <a href="matlab:help classes\@pest\viewResults">classes\@pest\viewResults</a>              -  displays the content of the pest object as an html report.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@plist   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@plist\addAlternativeKeys">classes\@plist\addAlternativeKeys</a>      -  adds some alternative key names to an existing key.
%   <a href="matlab:help classes\@plist\append">classes\@plist\append</a>                  -  append a param-object, plist-object or a key/value pair to the parameter list.
%   <a href="matlab:help classes\@plist\applyDefaults">classes\@plist\applyDefaults</a>           -  apply the default plist to the input plists
%   <a href="matlab:help classes\@plist\attachToDom">classes\@plist\attachToDom</a>             - % Create empty plist node with the attribute 'shape'
%   <a href="matlab:help classes\@plist\char">classes\@plist\char</a>                    -  convert a parameter list into a string.
%   <a href="matlab:help classes\@plist\combine">classes\@plist\combine</a>                 -  multiple parameter lists (plist objects) into a single plist.
%   classes\@plist\compressPlist           - (No help available)
%   <a href="matlab:help classes\@plist\copy">classes\@plist\copy</a>                    -  makes a (deep) copy of the input plist objects.
%   <a href="matlab:help classes\@plist\copyWithDefault">classes\@plist\copyWithDefault</a>         -  makes a (deep) copy of the input plist objects.
%   <a href="matlab:help classes\@plist\disp">classes\@plist\disp</a>                    -  display plist object.
%   <a href="matlab:help classes\@plist\find">classes\@plist\find</a>                    -  overloads find routine for a parameter list.
%   classes\@plist\find_core               - (No help available)
%   <a href="matlab:help classes\@plist\fromDom">classes\@plist\fromDom</a>                 - % There exist two possibilities.
%   <a href="matlab:help classes\@plist\fromStruct">classes\@plist\fromStruct</a>              -  creates from a structure a PLIST object.
%   <a href="matlab:help classes\@plist\getAllKeys">classes\@plist\getAllKeys</a>              -  Return all keys (even the alternative key names) of the parameter list.
%   <a href="matlab:help classes\@plist\getDefaultAxisPlist">classes\@plist\getDefaultAxisPlist</a>     -  returns the default plist for the axis key based on
%   <a href="matlab:help classes\@plist\getDescriptionForParam">classes\@plist\getDescriptionForParam</a>  -  Returns the description for the specified parameter key.
%   <a href="matlab:help classes\@plist\getIndexForKey">classes\@plist\getIndexForKey</a>          -  returns the index of a parameter with the given key.
%   <a href="matlab:help classes\@plist\getKeys">classes\@plist\getKeys</a>                 -  Return all the default keys of the parameter list.
%   <a href="matlab:help classes\@plist\getOptionsForParam">classes\@plist\getOptionsForParam</a>      -  Returns the options for the specified parameter key.
%   <a href="matlab:help classes\@plist\getParamValueForParam">classes\@plist\getParamValueForParam</a>   -  Returns the paramValue for the specified parameter key.
%   <a href="matlab:help classes\@plist\getPropertyForKey">classes\@plist\getPropertyForKey</a>       -  get a property from a specified parameter.
%   <a href="matlab:help classes\@plist\getSelectionForParam">classes\@plist\getSelectionForParam</a>    -  Returns the selection mode for the specified parameter key.
%   <a href="matlab:help classes\@plist\getSetRandState">classes\@plist\getSetRandState</a>         -  gets or sets the random state of the MATLAB functions 'rand' and 'randn'
%   <a href="matlab:help classes\@plist\isparam">classes\@plist\isparam</a>                 -  look for a given key in the parameter lists.
%   classes\@plist\isparam_core            - (No help available)
%   <a href="matlab:help classes\@plist\loadobj">classes\@plist\loadobj</a>                 -  is called by the load function for user objects.
%   <a href="matlab:help classes\@plist\ltp_parameters">classes\@plist\ltp_parameters</a>          - LTP/LPF Parameter plist
%   <a href="matlab:help classes\@plist\matchKey">classes\@plist\matchKey</a>                -  returns a logical array with the same size of the parametes with a 1 if the input key matches to the key name(s) and a 0 if not.
%   <a href="matlab:help classes\@plist\matchKeyWithRegexp">classes\@plist\matchKeyWithRegexp</a>      -  returns a logical array with the same size of the parametes with a 1 if the input string matches to the key name(s) and a 0 if not.
%   <a href="matlab:help classes\@plist\matchKey_core">classes\@plist\matchKey_core</a>           - % Get value we want
%   <a href="matlab:help classes\@plist\matchKeys">classes\@plist\matchKeys</a>               -  returns a logical array with the same size of the parametes with a 1 if one of the input key(s) matches to the key name(s) and a 0 if not.
%   <a href="matlab:help classes\@plist\matchKeys_core">classes\@plist\matchKeys_core</a>          - % The command cellstr doesn't work here because it is possible that the
%   <a href="matlab:help classes\@plist\merge">classes\@plist\merge</a>                   -  the values for the same key of multiple parameter lists together.
%   <a href="matlab:help classes\@plist\mfind">classes\@plist\mfind</a>                   -  multiple-arguments find routine for a parameter list.
%   <a href="matlab:help classes\@plist\nparams">classes\@plist\nparams</a>                 -  returns the number of param objects in the list.
%   <a href="matlab:help classes\@plist\parse">classes\@plist\parse</a>                   -  a plist for strings which can be converted into numbers
%   <a href="matlab:help classes\@plist\plist">classes\@plist\plist</a>                   -  Plist class object constructor.
%   <a href="matlab:help classes\@plist\plist2cmds">classes\@plist\plist2cmds</a>              -  convert a plist to a set of commands.
%   <a href="matlab:help classes\@plist\processForHistory">classes\@plist\processForHistory</a>       -  process the plist ready for adding to the history tree.
%   <a href="matlab:help classes\@plist\processSetterValues">classes\@plist\processSetterValues</a>     - (No help available)
%   <a href="matlab:help classes\@plist\propertiesForParam">classes\@plist\propertiesForParam</a>      -  returns the properties structure for a given parameter.
%   <a href="matlab:help classes\@plist\propertyForParam">classes\@plist\propertyForParam</a>        -  returns the value of the specified property for a given parameter.
%   <a href="matlab:help classes\@plist\psdSegments">classes\@plist\psdSegments</a>             -  returns the time-series segments from a PSD plist.
%   <a href="matlab:help classes\@plist\pset">classes\@plist\pset</a>                    -  set or add a key/value pairor a param-object into the parameter list.
%   <a href="matlab:help classes\@plist\pset_core">classes\@plist\pset_core</a>               - % does the key exist?
%   <a href="matlab:help classes\@plist\recreatePlot">classes\@plist\recreatePlot</a>            -  given a 'script' plist resulting from a call to
%   <a href="matlab:help classes\@plist\regexp">classes\@plist\regexp</a>                  -  performs a regular expression search on the input plists.
%   <a href="matlab:help classes\@plist\remove">classes\@plist\remove</a>                  -  remove a parameter from the parameter list.
%   <a href="matlab:help classes\@plist\removeKeys">classes\@plist\removeKeys</a>              -  removes keys from a PLIST.
%   <a href="matlab:help classes\@plist\search">classes\@plist\search</a>                  -  returns a subset of a parameter list.
%   <a href="matlab:help classes\@plist\setDefaultForParam">classes\@plist\setDefaultForParam</a>      -  Sets the default value of the param object in dependencies of the 'key'
%   classes\@plist\setDefaultForParam_core - (No help available)
%   <a href="matlab:help classes\@plist\setDescriptionForParam">classes\@plist\setDescriptionForParam</a>  -  Sets the property 'desc' of the param object in dependencies of the 'key'
%   <a href="matlab:help classes\@plist\setOptionsForParam">classes\@plist\setOptionsForParam</a>      -  Sets the options of the param object in dependencies of the 'key'
%   <a href="matlab:help classes\@plist\setPropertyForKey">classes\@plist\setPropertyForKey</a>       -  set a property from a specified parameter to a given value.
%   <a href="matlab:help classes\@plist\setSelectionForParam">classes\@plist\setSelectionForParam</a>    -  Sets the selection mode of the param object in dependencies of the 'key'
%   <a href="matlab:help classes\@plist\shouldIgnore">classes\@plist\shouldIgnore</a>            -  True for plists which have the key 'ignore' with the value true.
%   <a href="matlab:help classes\@plist\simplify">classes\@plist\simplify</a>                -  simplifies a plist.
%   <a href="matlab:help classes\@plist\string">classes\@plist\string</a>                  -  converts a plist object to a command string which will recreate the plist object.
%   <a href="matlab:help classes\@plist\subset">classes\@plist\subset</a>                  -  returns a subset of a parameter list.
%   <a href="matlab:help classes\@plist\tohtml">classes\@plist\tohtml</a>                  -  produces an html table from the plist.
%   <a href="matlab:help classes\@plist\type">classes\@plist\type</a>                    -  converts the input plist to MATLAB functions.
%   <a href="matlab:help classes\@plist\update_struct">classes\@plist\update_struct</a>           -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@plotinfo   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@plotinfo\attachToDom">classes\@plotinfo\attachToDom</a>   - % Create empty plotinfo node
%   <a href="matlab:help classes\@plotinfo\char">classes\@plotinfo\char</a>          -  convert a plotinfo object into a string.
%   <a href="matlab:help classes\@plotinfo\combine">classes\@plotinfo\combine</a>       -  combines multiple plotinfo objects into one.
%   <a href="matlab:help classes\@plotinfo\copy">classes\@plotinfo\copy</a>          -  makes a (deep) copy of the input plotinfo objects.
%   <a href="matlab:help classes\@plotinfo\disp">classes\@plotinfo\disp</a>          -  display a plotinfo
%   <a href="matlab:help classes\@plotinfo\fromDom">classes\@plotinfo\fromDom</a>       - % Get shape
%   <a href="matlab:help classes\@plotinfo\fromStruct">classes\@plotinfo\fromStruct</a>    -  creates from a structure a plotinfo object.
%   <a href="matlab:help classes\@plotinfo\isequal">classes\@plotinfo\isequal</a>       -  overloads the isequal operator for ltpda plotinfo objects.
%   <a href="matlab:help classes\@plotinfo\loadobj">classes\@plotinfo\loadobj</a>       -  is called by the load function for user objects.
%   <a href="matlab:help classes\@plotinfo\plotinfo">classes\@plotinfo\plotinfo</a>      -  Encapsulates plot information.
%   <a href="matlab:help classes\@plotinfo\string">classes\@plotinfo\string</a>        -  writes a command string that can be used to recreate the input plotinfo object.
%   <a href="matlab:help classes\@plotinfo\update_struct">classes\@plotinfo\update_struct</a> -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@provenance   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@provenance\attachToDom">classes\@provenance\attachToDom</a>        - % Create empty provenance node with the attribute 'shape'
%   <a href="matlab:help classes\@provenance\char">classes\@provenance\char</a>               -  convert a provenance object into a string.
%   <a href="matlab:help classes\@provenance\copy">classes\@provenance\copy</a>               -  makes a (deep) copy of the input provenance objects.
%   <a href="matlab:help classes\@provenance\disp">classes\@provenance\disp</a>               -  overload terminal display for provenance objects.
%   <a href="matlab:help classes\@provenance\fromDom">classes\@provenance\fromDom</a>            - % Get shape
%   <a href="matlab:help classes\@provenance\fromStruct">classes\@provenance\fromStruct</a>         -  creates from a structure a PROVENANCE object.
%   <a href="matlab:help classes\@provenance\getEncodedString">classes\@provenance\getEncodedString</a>   - info = [info sep 'dummy']; % version dummy. We have to keep it for backwards compatibility.
%   <a href="matlab:help classes\@provenance\loadobj">classes\@provenance\loadobj</a>            -  is called by the load function for user objects.
%   <a href="matlab:help classes\@provenance\provenance">classes\@provenance\provenance</a>         -  constructors for provenance class.
%   <a href="matlab:help classes\@provenance\setFromEncodedInfo">classes\@provenance\setFromEncodedInfo</a> - % info{1} is empty
%   <a href="matlab:help classes\@provenance\string">classes\@provenance\string</a>             -  writes a command string that can be used to recreate the input provenance object.
%   <a href="matlab:help classes\@provenance\update_struct">classes\@provenance\update_struct</a>      -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@pz   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@pz\attachToDom">classes\@pz\attachToDom</a>         - % Create empty pz node with the attribute 'shape'
%   <a href="matlab:help classes\@pz\char">classes\@pz\char</a>                -  convert a pz object into a string.
%   <a href="matlab:help classes\@pz\copy">classes\@pz\copy</a>                -  makes a (deep) copy of the input pz objects.
%   <a href="matlab:help classes\@pz\cp2iir">classes\@pz\cp2iir</a>              -  Return a,b IIR filter coefficients for a complex pole designed using the bilinear transform.
%   <a href="matlab:help classes\@pz\cz2iir">classes\@pz\cz2iir</a>              -  return a,b IIR filter coefficients for a complex zero designed using the bilinear transform.
%   <a href="matlab:help classes\@pz\disp">classes\@pz\disp</a>                -  display a pz object.
%   <a href="matlab:help classes\@pz\fq2ri">classes\@pz\fq2ri</a>               -  Convert frequency/Q pole/zero representation
%   <a href="matlab:help classes\@pz\fromDom">classes\@pz\fromDom</a>             - % Get shape
%   <a href="matlab:help classes\@pz\fromStruct">classes\@pz\fromStruct</a>          -  creates from a structure a PZ object.
%   <a href="matlab:help classes\@pz\loadobj">classes\@pz\loadobj</a>             -  is called by the load function for user objects.
%   <a href="matlab:help classes\@pz\pz">classes\@pz\pz</a>                  -  is the ltpda class that provides a common definition of poles and zeros.
%   <a href="matlab:help classes\@pz\resp">classes\@pz\resp</a>                -  returns the complex response of the pz object.
%   <a href="matlab:help classes\@pz\resp_add_delay_core">classes\@pz\resp_add_delay_core</a> -  Simple core method to add a pure delay in frequency domain
%   <a href="matlab:help classes\@pz\resp_pz_Q_core">classes\@pz\resp_pz_Q_core</a>      -  Simple core method to compute the response of a pz model (with Q>=0.5)
%   <a href="matlab:help classes\@pz\resp_pz_noQ_core">classes\@pz\resp_pz_noQ_core</a>    - resp_pz_Q_core Simple core method to compute the response of a pz model (with Q<0.5)
%   <a href="matlab:help classes\@pz\ri2fq">classes\@pz\ri2fq</a>               -  Convert comlpex pole/zero into frequency/Q pole/zero representation.
%   <a href="matlab:help classes\@pz\rp2iir">classes\@pz\rp2iir</a>              -  Return a,b coefficients for a real pole designed using the bilinear transform.
%   <a href="matlab:help classes\@pz\rz2iir">classes\@pz\rz2iir</a>              -  Return a,b IIR filter coefficients for a real zero designed using the bilinear transform.
%   <a href="matlab:help classes\@pz\setF">classes\@pz\setF</a>                -  Set the property 'f'
%   <a href="matlab:help classes\@pz\setQ">classes\@pz\setQ</a>                -  Set the property 'q'
%   <a href="matlab:help classes\@pz\setRI">classes\@pz\setRI</a>               -  Set the property 'ri' and computes 'f' and 'q'
%   <a href="matlab:help classes\@pz\string">classes\@pz\string</a>              -  writes a command string that can be used to recreate the input pz object.
%   <a href="matlab:help classes\@pz\update_struct">classes\@pz\update_struct</a>       -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@pzmodel   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@pzmodel\abcascade">classes\@pzmodel\abcascade</a>                -  Cascade two filters together to get a new filter.
%   <a href="matlab:help classes\@pzmodel\attachToDom">classes\@pzmodel\attachToDom</a>              - % Create empty pzmodel node with the attribute 'shape'
%   <a href="matlab:help classes\@pzmodel\char">classes\@pzmodel\char</a>                     -  convert a pzmodel object into a string.
%   <a href="matlab:help classes\@pzmodel\conj">classes\@pzmodel\conj</a>                     -  overloads conjugate functionality for pzmodel objects.
%   <a href="matlab:help classes\@pzmodel\copy">classes\@pzmodel\copy</a>                     -  makes a (deep) copy of the input pzmodel objects.
%   <a href="matlab:help classes\@pzmodel\disp">classes\@pzmodel\disp</a>                     -  overloads display functionality for pzmodel objects.
%   <a href="matlab:help classes\@pzmodel\fngen">classes\@pzmodel\fngen</a>                    -  creates an arbitrarily long time-series based on the input pzmodel.
%   <a href="matlab:help classes\@pzmodel\fromDom">classes\@pzmodel\fromDom</a>                  - % Get shape
%   <a href="matlab:help classes\@pzmodel\fromLISO">classes\@pzmodel\fromLISO</a>                 -  Construct a pzmodel from a LISO file
%   <a href="matlab:help classes\@pzmodel\fromParfrac">classes\@pzmodel\fromParfrac</a>              - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@pzmodel\fromPolesAndZeros">classes\@pzmodel\fromPolesAndZeros</a>        - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@pzmodel\fromRational">classes\@pzmodel\fromRational</a>             - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@pzmodel\fromStruct">classes\@pzmodel\fromStruct</a>               -  creates from a structure a PZMODEL object.
%   <a href="matlab:help classes\@pzmodel\generateConstructorPlist">classes\@pzmodel\generateConstructorPlist</a> -  generates a PLIST from the properties which can rebuild the object.
%   <a href="matlab:help classes\@pzmodel\getlowerFreq">classes\@pzmodel\getlowerFreq</a>             -  gets the frequency of the lowest pole or zero in the model.
%   <a href="matlab:help classes\@pzmodel\getupperFreq">classes\@pzmodel\getupperFreq</a>             -  gets the frequency of the highest pole or zero in the model.
%   <a href="matlab:help classes\@pzmodel\loadobj">classes\@pzmodel\loadobj</a>                  -  is called by the load function for user objects.
%   <a href="matlab:help classes\@pzmodel\mrdivide">classes\@pzmodel\mrdivide</a>                 -  overloads the division operator for pzmodels.
%   <a href="matlab:help classes\@pzmodel\mtimes">classes\@pzmodel\mtimes</a>                   -  overloads the multiplication operator for pzmodels.
%   <a href="matlab:help classes\@pzmodel\pzm2ab">classes\@pzmodel\pzm2ab</a>                   -  convert pzmodel to IIR filter coefficients using bilinear transform.
%   <a href="matlab:help classes\@pzmodel\pzmodel">classes\@pzmodel\pzmodel</a>                  -  constructor for pzmodel class.
%   <a href="matlab:help classes\@pzmodel\rdivide">classes\@pzmodel\rdivide</a>                  -  overloads the division operator for pzmodels.
%   <a href="matlab:help classes\@pzmodel\respCore">classes\@pzmodel\respCore</a>                 -  returns the complex response of one pzmodel object.
%   <a href="matlab:help classes\@pzmodel\setDelay">classes\@pzmodel\setDelay</a>                 -  sets the 'delay' property of the pzmodel object.
%   <a href="matlab:help classes\@pzmodel\setGain">classes\@pzmodel\setGain</a>                  -  sets the 'gain' property of the pzmodel object.
%   <a href="matlab:help classes\@pzmodel\setPoles">classes\@pzmodel\setPoles</a>                 -  Set the property 'poles' of a pole/zero model.
%   <a href="matlab:help classes\@pzmodel\setZeros">classes\@pzmodel\setZeros</a>                 -  Set the property 'zeros' of a pole/zero model.
%   <a href="matlab:help classes\@pzmodel\simplify">classes\@pzmodel\simplify</a>                 -  simplifies pzmodels by cancelling like poles with like zeros.
%   <a href="matlab:help classes\@pzmodel\times">classes\@pzmodel\times</a>                    -  overloads the multiplication operator for pzmodels.
%   <a href="matlab:help classes\@pzmodel\tomfir">classes\@pzmodel\tomfir</a>                   -  approximates a pole/zero model with an FIR filter.
%   <a href="matlab:help classes\@pzmodel\tomiir">classes\@pzmodel\tomiir</a>                   -  converts a pzmodel to an IIR filter using a bilinear transform.
%   <a href="matlab:help classes\@pzmodel\update_struct">classes\@pzmodel\update_struct</a>            -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@rational   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@rational\attachToDom">classes\@rational\attachToDom</a>              - % Create empty rational node with the attribute 'shape'
%   <a href="matlab:help classes\@rational\char">classes\@rational\char</a>                     -  convert a rational object into a string.
%   <a href="matlab:help classes\@rational\copy">classes\@rational\copy</a>                     -  makes a (deep) copy of the input rational objects.
%   <a href="matlab:help classes\@rational\disp">classes\@rational\disp</a>                     -  overloads display functionality for rational objects.
%   <a href="matlab:help classes\@rational\fromCoefficients">classes\@rational\fromCoefficients</a>         - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@rational\fromDom">classes\@rational\fromDom</a>                  - % Get shape
%   <a href="matlab:help classes\@rational\fromParfrac">classes\@rational\fromParfrac</a>              - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@rational\fromPzmodel">classes\@rational\fromPzmodel</a>              - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@rational\fromStruct">classes\@rational\fromStruct</a>               -  creates from a structure a RATIONAL object.
%   <a href="matlab:help classes\@rational\generateConstructorPlist">classes\@rational\generateConstructorPlist</a> -  generates a PLIST from the properties which can rebuild the object.
%   <a href="matlab:help classes\@rational\getlowerFreq">classes\@rational\getlowerFreq</a>             -  gets the frequency of the lowest pole in the model.
%   <a href="matlab:help classes\@rational\getupperFreq">classes\@rational\getupperFreq</a>             -  gets the frequency of the highest pole in the model.
%   <a href="matlab:help classes\@rational\loadobj">classes\@rational\loadobj</a>                  -  is called by the load function for user objects.
%   <a href="matlab:help classes\@rational\rational">classes\@rational\rational</a>                 -  rational representation of a transfer function.
%   <a href="matlab:help classes\@rational\respCore">classes\@rational\respCore</a>                 -  returns the complex response of one rational object.
%   <a href="matlab:help classes\@rational\update_struct">classes\@rational\update_struct</a>            -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@smodel   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@smodel\addAliases">classes\@smodel\addAliases</a>               -  Add the key-value pairs to the alias-names and alias-values
%   <a href="matlab:help classes\@smodel\addParameters">classes\@smodel\addParameters</a>            -  Add some parameters to the symbolic model (smodel) object
%   <a href="matlab:help classes\@smodel\assignalias">classes\@smodel\assignalias</a>              -  assign values to smodel alias
%   <a href="matlab:help classes\@smodel\attachToDom">classes\@smodel\attachToDom</a>              - % Create empty smodel node with the attribute 'shape'
%   <a href="matlab:help classes\@smodel\char">classes\@smodel\char</a>                     -  convert a smodel object into a string.
%   <a href="matlab:help classes\@smodel\clearAliases">classes\@smodel\clearAliases</a>             -  Clear the aliases.
%   <a href="matlab:help classes\@smodel\conj">classes\@smodel\conj</a>                     -  gives the complex conjugate of the input smodels
%   <a href="matlab:help classes\@smodel\convol_integral">classes\@smodel\convol_integral</a>          -  implements the convolution integral for smodel objects.
%   <a href="matlab:help classes\@smodel\copy">classes\@smodel\copy</a>                     -  makes a (deep) copy of the input smodel objects.
%   <a href="matlab:help classes\@smodel\det">classes\@smodel\det</a>                      -  evaluates the determinant of smodel objects.
%   <a href="matlab:help classes\@smodel\diff">classes\@smodel\diff</a>                     -  implements differentiation operator for smodel objects.
%   <a href="matlab:help classes\@smodel\disp">classes\@smodel\disp</a>                     -  overloads display functionality for smodel objects.
%   <a href="matlab:help classes\@smodel\double">classes\@smodel\double</a>                   -  Returns the numeric result of the model.
%   <a href="matlab:help classes\@smodel\elementOp">classes\@smodel\elementOp</a>                -  applies the given operator to the input smodels.
%   <a href="matlab:help classes\@smodel\eval">classes\@smodel\eval</a>                     -  evaluates the symbolic model and returns an AO containing the numeric data.
%   <a href="matlab:help classes\@smodel\fitfunc">classes\@smodel\fitfunc</a>                  -  Returns a function handle which sets the 'values' and 'xvals' to a ltpda model.
%   <a href="matlab:help classes\@smodel\fourier">classes\@smodel\fourier</a>                  -  implements continuous f-domain Fourier transform for smodel objects.
%   <a href="matlab:help classes\@smodel\fromDatafile">classes\@smodel\fromDatafile</a>             -  Construct smodel object from filename AND parameter list
%   <a href="matlab:help classes\@smodel\fromDom">classes\@smodel\fromDom</a>                  - % Get shape
%   <a href="matlab:help classes\@smodel\fromExpression">classes\@smodel\fromExpression</a>           - (No help available)
%   <a href="matlab:help classes\@smodel\fromStruct">classes\@smodel\fromStruct</a>               -  creates from a structure a SMODEL object.
%   <a href="matlab:help classes\@smodel\generateConstructorPlist">classes\@smodel\generateConstructorPlist</a> -  generates a PLIST from the properties which can rebuild the object.
%   <a href="matlab:help classes\@smodel\hessian">classes\@smodel\hessian</a>                  -  compute the hessian matrix for a symbolic model.
%   <a href="matlab:help classes\@smodel\ifourier">classes\@smodel\ifourier</a>                 -  implements continuous f-domain inverse Fourier transform for smodel objects.
%   <a href="matlab:help classes\@smodel\ilaplace">classes\@smodel\ilaplace</a>                 -  implements continuous s-domain inverse Laplace transform for smodel objects.
%   <a href="matlab:help classes\@smodel\inv">classes\@smodel\inv</a>                      -  evaluates the inverse of smodel objects.
%   <a href="matlab:help classes\@smodel\iztrans">classes\@smodel\iztrans</a>                  -  implements continuous z-domain inverse Z-transform for smodel objects.
%   <a href="matlab:help classes\@smodel\laplace">classes\@smodel\laplace</a>                  -  implements continuous s-domain Laplace transform for smodel objects.
%   <a href="matlab:help classes\@smodel\linearize">classes\@smodel\linearize</a>                -  output the derivatives of the model relative to the parameters.
%   <a href="matlab:help classes\@smodel\loadobj">classes\@smodel\loadobj</a>                  -  is called by the load function for user objects.
%   <a href="matlab:help classes\@smodel\mergeFields">classes\@smodel\mergeFields</a>              -  merges properties (name/values) of smodels
%   <a href="matlab:help classes\@smodel\minus">classes\@smodel\minus</a>                    -  implements subtraction operator for smodel objects.
%   <a href="matlab:help classes\@smodel\mrdivide">classes\@smodel\mrdivide</a>                 -  implements mrdivide operator for smodel objects.
%   <a href="matlab:help classes\@smodel\mtimes">classes\@smodel\mtimes</a>                   -  implements mtimes operator for smodel objects.
%   <a href="matlab:help classes\@smodel\op">classes\@smodel\op</a>                       -  Add a operation around the model expression
%   <a href="matlab:help classes\@smodel\plus">classes\@smodel\plus</a>                     -  implements addition operator for smodel objects.
%   <a href="matlab:help classes\@smodel\rdivide">classes\@smodel\rdivide</a>                  -  implements division operator for smodel objects.
%   <a href="matlab:help classes\@smodel\setAliasNames">classes\@smodel\setAliasNames</a>            -  Set the property 'aliasNames'
%   <a href="matlab:help classes\@smodel\setAliasValues">classes\@smodel\setAliasValues</a>           -  Set the property 'aliasValues'
%   <a href="matlab:help classes\@smodel\setAliases">classes\@smodel\setAliases</a>               -  Set the key-value pairs to the alias-names and alias-values
%   <a href="matlab:help classes\@smodel\setExpr">classes\@smodel\setExpr</a>                  -  sets the 'expr' property of the smodel object.
%   <a href="matlab:help classes\@smodel\setParameters">classes\@smodel\setParameters</a>            -  Set some parameters to the symbolic model (smodel) object
%   <a href="matlab:help classes\@smodel\setParams">classes\@smodel\setParams</a>                -  Set the property 'params' AND 'values'
%   <a href="matlab:help classes\@smodel\setTrans">classes\@smodel\setTrans</a>                 -  sets the 'trans' property of the smodel object.
%   <a href="matlab:help classes\@smodel\setValues">classes\@smodel\setValues</a>                -  Set the property 'values'
%   <a href="matlab:help classes\@smodel\setXunits">classes\@smodel\setXunits</a>                -  sets the 'xunits' property of the smodel object.
%   <a href="matlab:help classes\@smodel\setXvals">classes\@smodel\setXvals</a>                 -  sets the 'xvals' property of the smodel object.
%   <a href="matlab:help classes\@smodel\setXvar">classes\@smodel\setXvar</a>                  -  sets the 'xvar' property of the smodel object.
%   <a href="matlab:help classes\@smodel\setYunits">classes\@smodel\setYunits</a>                -  sets the 'yunits' property of the smodel object.
%   <a href="matlab:help classes\@smodel\simplify">classes\@smodel\simplify</a>                 -  implements simplify operator for smodel objects.
%   <a href="matlab:help classes\@smodel\simplifyUnits">classes\@smodel\simplifyUnits</a>            -  simplify the x and/or y units of the model.
%   <a href="matlab:help classes\@smodel\smodel">classes\@smodel\smodel</a>                   -  constructor for smodel class.
%   <a href="matlab:help classes\@smodel\sop">classes\@smodel\sop</a>                      -  apply a symbolic operation to the expression.
%   <a href="matlab:help classes\@smodel\subs">classes\@smodel\subs</a>                     -  substitutes symbolic parameters with the given values.
%   <a href="matlab:help classes\@smodel\sum">classes\@smodel\sum</a>                      -  adds all the elements of smodel objects arrays.
%   <a href="matlab:help classes\@smodel\times">classes\@smodel\times</a>                    -  implements multiplication operator for smodel objects.
%   <a href="matlab:help classes\@smodel\update_struct">classes\@smodel\update_struct</a>            -  update the input structure to the current ltpda version
%   <a href="matlab:help classes\@smodel\ztrans">classes\@smodel\ztrans</a>                   -  implements continuous z-domain Z-transform for smodel objects.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@specwin   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@specwin\attachToDom">classes\@specwin\attachToDom</a>         - % Create empty specwin node with the attribute 'shape'
%   <a href="matlab:help classes\@specwin\char">classes\@specwin\char</a>                -  convert a specwin object into a string.
%   <a href="matlab:help classes\@specwin\copy">classes\@specwin\copy</a>                -  makes a (deep) copy of the input specwin objects.
%   <a href="matlab:help classes\@specwin\disp">classes\@specwin\disp</a>                -  overloads display functionality for specwin objects.
%   <a href="matlab:help classes\@specwin\fromDom">classes\@specwin\fromDom</a>             - % Get shape
%   <a href="matlab:help classes\@specwin\fromStruct">classes\@specwin\fromStruct</a>          -  creates from a structure a SPECWIN object.
%   <a href="matlab:help classes\@specwin\get_window">classes\@specwin\get_window</a>          -  returns the required window function as a structure.
%   <a href="matlab:help classes\@specwin\kaiser_alpha">classes\@specwin\kaiser_alpha</a>        -  returns the alpha parameter that gives the required input
%   <a href="matlab:help classes\@specwin\kaiser_flatness">classes\@specwin\kaiser_flatness</a>     -  returns the flatness in dB of the central bin of a kaiser 
%   <a href="matlab:help classes\@specwin\kaiser_nenbw">classes\@specwin\kaiser_nenbw</a>        -  returns the normalized noise-equivalent bandwidth for a
%   <a href="matlab:help classes\@specwin\kaiser_rov">classes\@specwin\kaiser_rov</a>          -  returns the recommended overlap for a Kaiser window with
%   <a href="matlab:help classes\@specwin\kaiser_w3db">classes\@specwin\kaiser_w3db</a>         -  returns the 3dB bandwidth in bins of a kaiser window with
%   <a href="matlab:help classes\@specwin\loadobj">classes\@specwin\loadobj</a>             -  is called by the load function for user objects.
%   <a href="matlab:help classes\@specwin\plot">classes\@specwin\plot</a>                -  plots a specwin object.
%   <a href="matlab:help classes\@specwin\specwin">classes\@specwin\specwin</a>             -  spectral window object class constructor.
%   <a href="matlab:help classes\@specwin\string">classes\@specwin\string</a>              -  writes a command string that can be used to recreate the input window object.
%   <a href="matlab:help classes\@specwin\toPlist">classes\@specwin\toPlist</a>             -  creates a plist representing the specwin object.
%   <a href="matlab:help classes\@specwin\update_struct">classes\@specwin\update_struct</a>       -  update the input structure to the current ltpda version
%   <a href="matlab:help classes\@specwin\win_bartlett">classes\@specwin\win_bartlett</a>        -  returns Bartlett window, with N points.
%   <a href="matlab:help classes\@specwin\win_bh92">classes\@specwin\win_bh92</a>            -  returns BH92 window, with N points.
%   <a href="matlab:help classes\@specwin\win_fthp">classes\@specwin\win_fthp</a>            -  returns FTHP window, with N points.
%   <a href="matlab:help classes\@specwin\win_ftni">classes\@specwin\win_ftni</a>            -  returns FTNI window, with N points.
%   <a href="matlab:help classes\@specwin\win_ftsrs">classes\@specwin\win_ftsrs</a>           -  returns FTSRS window, with N points.
%   <a href="matlab:help classes\@specwin\win_hamming">classes\@specwin\win_hamming</a>         -  returns Hamming window, with N points.
%   <a href="matlab:help classes\@specwin\win_hanning">classes\@specwin\win_hanning</a>         -  returns Hanning window, with N points.
%   <a href="matlab:help classes\@specwin\win_hft116d">classes\@specwin\win_hft116d</a>         -  returns HFT116D window, with N points.
%   <a href="matlab:help classes\@specwin\win_hft144d">classes\@specwin\win_hft144d</a>         -  returns HFT144D window, with N points.
%   <a href="matlab:help classes\@specwin\win_hft169d">classes\@specwin\win_hft169d</a>         -  returns HFT169D window, with N points.
%   <a href="matlab:help classes\@specwin\win_hft196d">classes\@specwin\win_hft196d</a>         -  returns HFT196D window, with N points.
%   <a href="matlab:help classes\@specwin\win_hft223d">classes\@specwin\win_hft223d</a>         -  returns HFT223D window, with N points.
%   <a href="matlab:help classes\@specwin\win_hft248d">classes\@specwin\win_hft248d</a>         -  returns HFT248D window, with N points.
%   <a href="matlab:help classes\@specwin\win_hft70">classes\@specwin\win_hft70</a>           -  returns HFT70 window, with N points.
%   <a href="matlab:help classes\@specwin\win_hft90d">classes\@specwin\win_hft90d</a>          -  returns HFT90D window, with N points.
%   <a href="matlab:help classes\@specwin\win_hft95">classes\@specwin\win_hft95</a>           -  returns HFT95 window, with N points.
%   <a href="matlab:help classes\@specwin\win_kaiser">classes\@specwin\win_kaiser</a>          -  returns Kaiser window, with N points and psll peak sidelobe level.
%   <a href="matlab:help classes\@specwin\win_levelledhanning">classes\@specwin\win_levelledhanning</a> -  returns Hanning window, with N points and levelCoef levelling order
%   <a href="matlab:help classes\@specwin\win_nuttall3">classes\@specwin\win_nuttall3</a>        -  returns Nuttall3 window, with N points.
%   <a href="matlab:help classes\@specwin\win_nuttall3a">classes\@specwin\win_nuttall3a</a>       -  returns Nuttall3a window, with N points.
%   <a href="matlab:help classes\@specwin\win_nuttall3b">classes\@specwin\win_nuttall3b</a>       -  returns Nuttall3b window, with N points.
%   <a href="matlab:help classes\@specwin\win_nuttall4">classes\@specwin\win_nuttall4</a>        -  returns Nuttall4 window, with N points.
%   <a href="matlab:help classes\@specwin\win_nuttall4a">classes\@specwin\win_nuttall4a</a>       -  returns Nuttall4a window, with N points.
%   <a href="matlab:help classes\@specwin\win_nuttall4b">classes\@specwin\win_nuttall4b</a>       -  returns Nuttall4b window, with N points.
%   <a href="matlab:help classes\@specwin\win_nuttall4c">classes\@specwin\win_nuttall4c</a>       -  returns Nuttall4c window, with N points.
%   <a href="matlab:help classes\@specwin\win_rectangular">classes\@specwin\win_rectangular</a>     -  returns rectangular window, with N points.
%   <a href="matlab:help classes\@specwin\win_sft3f">classes\@specwin\win_sft3f</a>           -  returns SFT3F window, with N points.
%   <a href="matlab:help classes\@specwin\win_sft3m">classes\@specwin\win_sft3m</a>           -  returns SFT3M window, with N points.
%   <a href="matlab:help classes\@specwin\win_sft4f">classes\@specwin\win_sft4f</a>           -  returns SFT4F window, with N points.
%   <a href="matlab:help classes\@specwin\win_sft4m">classes\@specwin\win_sft4m</a>           -  returns SFT4M window, with N points.
%   <a href="matlab:help classes\@specwin\win_sft5f">classes\@specwin\win_sft5f</a>           -  returns SFT5F window, with N points.
%   <a href="matlab:help classes\@specwin\win_sft5m">classes\@specwin\win_sft5m</a>           -  returns SFT5M window, with N points.
%   <a href="matlab:help classes\@specwin\win_welch">classes\@specwin\win_welch</a>           -  returns Welch window, with N points.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@specwinViewer   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@specwinViewer\buildMainfig">classes\@specwinViewer\buildMainfig</a>    -  build the main constructor window
%   <a href="matlab:help classes\@specwinViewer\cb_mainfigClose">classes\@specwinViewer\cb_mainfigClose</a> -  close callback for LTPDA Specwin Viewer.
%   classes\@specwinViewer\cb_plot         - (No help available)
%   classes\@specwinViewer\cb_plotFreq     - (No help available)
%   classes\@specwinViewer\cb_plotTime     - (No help available)
%   classes\@specwinViewer\cb_selectWindow - (No help available)
%   <a href="matlab:help classes\@specwinViewer\plotWindow">classes\@specwinViewer\plotWindow</a>      - % get window type
%   <a href="matlab:help classes\@specwinViewer\specwinViewer">classes\@specwinViewer\specwinViewer</a>   -  is a graphical user interface for viewing specwin objects.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@ssm   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@ssm\addParameters">classes\@ssm\addParameters</a>                 -  Adds the parameters to the model.
%   <a href="matlab:help classes\@ssm\append">classes\@ssm\append</a>                        - appends embedded subsytems, with exogenous inputs
%   <a href="matlab:help classes\@ssm\assemble">classes\@ssm\assemble</a>                      - assembles embedded subsytems, with exogenous inputs
%   <a href="matlab:help classes\@ssm\attachToDom">classes\@ssm\attachToDom</a>                   - % Create empty ssm node with the attribute 'shape'
%   <a href="matlab:help classes\@ssm\blockMatAdd">classes\@ssm\blockMatAdd</a>                   - adds corresponding matrices of same sizes or empty inside cell array
%   <a href="matlab:help classes\@ssm\blockMatFillDiag">classes\@ssm\blockMatFillDiag</a>              - adds corresponding matrices of same sizes or empty inside cell array
%   <a href="matlab:help classes\@ssm\blockMatFusion">classes\@ssm\blockMatFusion</a>                - fusions a block defined matrix stored inside cell array into one matrix
%   <a href="matlab:help classes\@ssm\blockMatIndex">classes\@ssm\blockMatIndex</a>                 - adds corresponding matrices of same sizes or empty inside cell array
%   <a href="matlab:help classes\@ssm\blockMatMult">classes\@ssm\blockMatMult</a>                  - multiplies block defined matrix stored inside cell array
%   <a href="matlab:help classes\@ssm\blockMatPrune">classes\@ssm\blockMatPrune</a>                 -  selects lines and columns of a block defined matrices stored in a cell array
%   <a href="matlab:help classes\@ssm\blockMatRecut">classes\@ssm\blockMatRecut</a>                 - cuts a matrix into blocks stored inside cell array
%   <a href="matlab:help classes\@ssm\bode">classes\@ssm\bode</a>                          -  makes a bode plot from the given inputs to outputs.
%   <a href="matlab:help classes\@ssm\bodecst">classes\@ssm\bodecst</a>                       -  makes a bodecst plot from the given inputs to outputs.
%   <a href="matlab:help classes\@ssm\buildParamPlist">classes\@ssm\buildParamPlist</a>               -  builds paramerter plists for the ssm params field.
%   <a href="matlab:help classes\@ssm\c2d">classes\@ssm\c2d</a>                           -  performs actions on ao objects.
%   <a href="matlab:help classes\@ssm\char">classes\@ssm\char</a>                          -  convert a ssm object into a string.
%   <a href="matlab:help classes\@ssm\copy">classes\@ssm\copy</a>                          -  makes a (deep) copy of the input ssm objects.
%   <a href="matlab:help classes\@ssm\cpsd">classes\@ssm\cpsd</a>                          -  computes the output theoretical CPSD shape with given inputs.
%   <a href="matlab:help classes\@ssm\cpsdForCorrelatedInputs">classes\@ssm\cpsdForCorrelatedInputs</a>       -  computes the output theoretical CPSD shape with given inputs.
%   <a href="matlab:help classes\@ssm\cpsdForIndependentInputs">classes\@ssm\cpsdForIndependentInputs</a>      -  computes the output theoretical CPSD shape with given inputs.
%   <a href="matlab:help classes\@ssm\d2c">classes\@ssm\d2c</a>                           -  performs actions on ao objects.
%   <a href="matlab:help classes\@ssm\d2d">classes\@ssm\d2d</a>                           -  performs actions on ao objects.
%   <a href="matlab:help classes\@ssm\diffStepFish">classes\@ssm\diffStepFish</a>                  -  Search for a differantiation step
%   <a href="matlab:help classes\@ssm\disp">classes\@ssm\disp</a>                          -  display ssm object.
%   <a href="matlab:help classes\@ssm\displayProperties">classes\@ssm\displayProperties</a>             - DISPAYPROPERTIES displays the ssm model porperties.
%   <a href="matlab:help classes\@ssm\doBode">classes\@ssm\doBode</a>                        -  makes a bode computation from the given inputs to outputs.
%   <a href="matlab:help classes\@ssm\doSetParameters">classes\@ssm\doSetParameters</a>               -  Sets the values of the given parameters.
%   <a href="matlab:help classes\@ssm\doSimplify">classes\@ssm\doSimplify</a>                    -  enables to do model simplification. It is a private function
%   <a href="matlab:help classes\@ssm\doSimulate">classes\@ssm\doSimulate</a>                    -  simulates a discrete ssm with given inputs
%   <a href="matlab:help classes\@ssm\doSubsParameters">classes\@ssm\doSubsParameters</a>              -  enables to substitute symbollic patameters
%   <a href="matlab:help classes\@ssm\dotview">classes\@ssm\dotview</a>                       -   view an ssm object via the DOT interpreter.
%   <a href="matlab:help classes\@ssm\double">classes\@ssm\double</a>                        - Convert a statespace model object to double arrays for given i/o
%   <a href="matlab:help classes\@ssm\duplicateInput">classes\@ssm\duplicateInput</a>                -  copies the specified input blocks.
%   <a href="matlab:help classes\@ssm\findParameters">classes\@ssm\findParameters</a>                -  returns parameter names matching the given pattern.
%   <a href="matlab:help classes\@ssm\fisher">classes\@ssm\fisher</a>                        -  Fisher matrix calculation for SSMs.
%   <a href="matlab:help classes\@ssm\fromDom">classes\@ssm\fromDom</a>                       - % Get shape
%   <a href="matlab:help classes\@ssm\fromStruct">classes\@ssm\fromStruct</a>                    -  creates from a structure an SSM object.
%   <a href="matlab:help classes\@ssm\generateConstructorPlist">classes\@ssm\generateConstructorPlist</a>      -  generates a PLIST from the properties which can rebuild the object.
%   <a href="matlab:help classes\@ssm\getParameters">classes\@ssm\getParameters</a>                 -  returns parameter values for the given names.
%   <a href="matlab:help classes\@ssm\getParams">classes\@ssm\getParams</a>                     -  returns the parameter list for this SSM model.
%   <a href="matlab:help classes\@ssm\getPortNamesForBlocks">classes\@ssm\getPortNamesForBlocks</a>         -  returns a list of port names for the given block.
%   <a href="matlab:help classes\@ssm\isStable">classes\@ssm\isStable</a>                      -  tells if ssm is numerically stable
%   <a href="matlab:help classes\@ssm\kalman">classes\@ssm\kalman</a>                        -  applies Kalman filtering to a discrete ssm with given i/o
%   <a href="matlab:help classes\@ssm\loadobj">classes\@ssm\loadobj</a>                       -  is called by the load function for user objects.
%   <a href="matlab:help classes\@ssm\loglikelihood">classes\@ssm\loglikelihood</a>                 - LOGLIKELIHOOD: Compute log-likelihood for SSM objects
%   <a href="matlab:help classes\@ssm\loglikelihood_core">classes\@ssm\loglikelihood_core</a>            - LOGLIKELIHOOD: Compute log-likelihood for SSM objects
%   <a href="matlab:help classes\@ssm\modelHelper_checkParameters">classes\@ssm\modelHelper_checkParameters</a>   -  compare the user requested parameter names to
%   <a href="matlab:help classes\@ssm\modelHelper_declareParameters">classes\@ssm\modelHelper_declareParameters</a> -  builds parameters plists for the ssm params field.
%   <a href="matlab:help classes\@ssm\modelHelper_processInputPlist">classes\@ssm\modelHelper_processInputPlist</a> -  processes the input parameters plists for
%   <a href="matlab:help classes\@ssm\modifyTimeStep">classes\@ssm\modifyTimeStep</a>                -  modifies the timestep of a ssm object
%   <a href="matlab:help classes\@ssm\optimiseForFitting">classes\@ssm\optimiseForFitting</a>            -  reduces the system matrices to doubles and strings.
%   <a href="matlab:help classes\@ssm\parameterDiff">classes\@ssm\parameterDiff</a>                 -  Makes a ssm that produces the output and state derivatives.
%   <a href="matlab:help classes\@ssm\projectNoise">classes\@ssm\projectNoise</a>                  -  performs actions on ao objects.
%   <a href="matlab:help classes\@ssm\psd">classes\@ssm\psd</a>                           -  computes the output theoretical PSD shape with given inputs.
%   <a href="matlab:help classes\@ssm\removeEmptyBlocks">classes\@ssm\removeEmptyBlocks</a>             -  enables to do model simplification
%   <a href="matlab:help classes\@ssm\reorganize">classes\@ssm\reorganize</a>                    - REOGANIZE rearranges a ssm object for fast input to BODE, SIMULATE, PSD.
%   <a href="matlab:help classes\@ssm\reshuffle">classes\@ssm\reshuffle</a>                     -  rearragnes a ssm object using the given inputs and outputs.
%   <a href="matlab:help classes\@ssm\reshuffleSym">classes\@ssm\reshuffleSym</a>                  -  rearragnes a ssm object using the given inputs and outputs.
%   <a href="matlab:help classes\@ssm\resp">classes\@ssm\resp</a>                          -  gives the timewise impulse response of a statespace model.
%   <a href="matlab:help classes\@ssm\respcst">classes\@ssm\respcst</a>                       -  gives the timewise impulse response of a statespace model.
%   <a href="matlab:help classes\@ssm\sMinReal">classes\@ssm\sMinReal</a>                      -  gives a minimal realization of a ssm object by deleting unreached states
%   <a href="matlab:help classes\@ssm\setA">classes\@ssm\setA</a>                          -  sets the A matrices to be the given cell array.
%   <a href="matlab:help classes\@ssm\setB">classes\@ssm\setB</a>                          -  sets the B matrices to be the given cell array.
%   <a href="matlab:help classes\@ssm\setBlockProperties">classes\@ssm\setBlockProperties</a>            -  Sets the specified properties of the specified SSM blocks.
%   <a href="matlab:help classes\@ssm\setC">classes\@ssm\setC</a>                          -  sets the C matrices to be the given cell array.
%   <a href="matlab:help classes\@ssm\setD">classes\@ssm\setD</a>                          -  sets the D matrices to be the given cell array.
%   <a href="matlab:help classes\@ssm\setParameters">classes\@ssm\setParameters</a>                 -  Sets the values of the given parameters.
%   <a href="matlab:help classes\@ssm\setParams">classes\@ssm\setParams</a>                     -  Sets the parameters of the model to the given plist.
%   <a href="matlab:help classes\@ssm\setPortProperties">classes\@ssm\setPortProperties</a>             -  Sets names of the specified SSM ports.
%   <a href="matlab:help classes\@ssm\settlingTime">classes\@ssm\settlingTime</a>                  -  retunrns 1% the settling time of the system.
%   <a href="matlab:help classes\@ssm\simplify">classes\@ssm\simplify</a>                      -  enables to do model simplification
%   <a href="matlab:help classes\@ssm\simulate">classes\@ssm\simulate</a>                      -  simulates a discrete ssm with given inputs
%   <a href="matlab:help classes\@ssm\ssm">classes\@ssm\ssm</a>                           -  statespace model class constructor.
%   <a href="matlab:help classes\@ssm\ssm2dot">classes\@ssm\ssm2dot</a>                       -  converts a statespace model object a DOT file.
%   <a href="matlab:help classes\@ssm\ssm2miir">classes\@ssm\ssm2miir</a>                      -  converts a statespace model object to a miir object
%   <a href="matlab:help classes\@ssm\ssm2pzmodel">classes\@ssm\ssm2pzmodel</a>                   -  converts a time-continuous statespace model object to a pzmodel
%   <a href="matlab:help classes\@ssm\ssm2rational">classes\@ssm\ssm2rational</a>                  -  converts a statespace model object to a rational frac. object
%   <a href="matlab:help classes\@ssm\ssm2ss">classes\@ssm\ssm2ss</a>                        -  converts a statespace model object to a MATLAB statespace object.
%   <a href="matlab:help classes\@ssm\ssmFromDescription">classes\@ssm\ssmFromDescription</a>            - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@ssm\ssmFromMiir">classes\@ssm\ssmFromMiir</a>                   - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@ssm\ssmFromParfrac">classes\@ssm\ssmFromParfrac</a>                - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@ssm\ssmFromPzmodel">classes\@ssm\ssmFromPzmodel</a>                - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@ssm\ssmFromRational">classes\@ssm\ssmFromRational</a>               - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@ssm\ssmFromss">classes\@ssm\ssmFromss</a>                     - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@ssm\steadyState">classes\@ssm\steadyState</a>                   -  returns a possible value for the steady state of an ssm.
%   <a href="matlab:help classes\@ssm\subsParameters">classes\@ssm\subsParameters</a>                -  enables to substitute symbolic patameters
%   <a href="matlab:help classes\@ssm\update_struct">classes\@ssm\update_struct</a>                 -  update the input structure to the current ltpda version
%   <a href="matlab:help classes\@ssm\validate">classes\@ssm\validate</a>                      -  Completes and checks the content a ssm object
%   <a href="matlab:help classes\@ssm\viewDetails">classes\@ssm\viewDetails</a>                   -  performs actions on ssm objects.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@ssmblock   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@ssmblock\addPorts">classes\@ssmblock\addPorts</a>          -  adds the given ssm ports to the list of ports.
%   <a href="matlab:help classes\@ssmblock\attachToDom">classes\@ssmblock\attachToDom</a>       - % Create empty ssmblock node with the attribute 'shape'
%   <a href="matlab:help classes\@ssmblock\char">classes\@ssmblock\char</a>              -  convert a ssmblock object into a string.
%   <a href="matlab:help classes\@ssmblock\containsPort">classes\@ssmblock\containsPort</a>      -  returns true if the inputs block(s) contain the given port.
%   <a href="matlab:help classes\@ssmblock\copy">classes\@ssmblock\copy</a>              -  makes a (deep) copy of the input ssmblock objects.
%   <a href="matlab:help classes\@ssmblock\disp">classes\@ssmblock\disp</a>              -  display an ssmblock object.
%   <a href="matlab:help classes\@ssmblock\findPorts">classes\@ssmblock\findPorts</a>         - MAKEPORTINDEX gives indexes of selected in a series of list in a cell array
%   <a href="matlab:help classes\@ssmblock\fromDom">classes\@ssmblock\fromDom</a>           - % Get shape
%   <a href="matlab:help classes\@ssmblock\fromStruct">classes\@ssmblock\fromStruct</a>        -  creates from a structure a SSMBLOCK object.
%   <a href="matlab:help classes\@ssmblock\getPortsAtIndices">classes\@ssmblock\getPortsAtIndices</a> -  get all ports at the given indices.
%   <a href="matlab:help classes\@ssmblock\getPortsWithName">classes\@ssmblock\getPortsWithName</a>  -  get all ports with the matching name.
%   <a href="matlab:help classes\@ssmblock\loadobj">classes\@ssmblock\loadobj</a>           -  is called by the load function for user objects.
%   <a href="matlab:help classes\@ssmblock\makePortIndex">classes\@ssmblock\makePortIndex</a>     -  gives indexes of selected in a series of list in a cell array
%   <a href="matlab:help classes\@ssmblock\ssmblock">classes\@ssmblock\ssmblock</a>          -  a helper class for the SSM class.
%   <a href="matlab:help classes\@ssmblock\string">classes\@ssmblock\string</a>            -  converts a ssmblock object to a command string which will recreate the object.
%   <a href="matlab:help classes\@ssmblock\tohtml">classes\@ssmblock\tohtml</a>            -  creates an html representation of the ssmblock
%   <a href="matlab:help classes\@ssmblock\update_struct">classes\@ssmblock\update_struct</a>     -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@ssmport   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@ssmport\attachToDom">classes\@ssmport\attachToDom</a>   - % Create empty ssmport node with the attribute 'shape'
%   <a href="matlab:help classes\@ssmport\char">classes\@ssmport\char</a>          -  convert a ssmport object into a string.
%   <a href="matlab:help classes\@ssmport\copy">classes\@ssmport\copy</a>          -  makes a (deep) copy of the input ssmport objects.
%   <a href="matlab:help classes\@ssmport\disp">classes\@ssmport\disp</a>          -  display an ssmport object.
%   <a href="matlab:help classes\@ssmport\fromDom">classes\@ssmport\fromDom</a>       - % Get shape
%   <a href="matlab:help classes\@ssmport\fromStruct">classes\@ssmport\fromStruct</a>    -  creates from a structure a SSMPORT object.
%   <a href="matlab:help classes\@ssmport\loadobj">classes\@ssmport\loadobj</a>       -  is called by the load function for user objects.
%   <a href="matlab:help classes\@ssmport\ssmport">classes\@ssmport\ssmport</a>       -  a helper class for the SSM class.
%   <a href="matlab:help classes\@ssmport\string">classes\@ssmport\string</a>        -  converts a ssmport object to a command string which will recreate the object.
%   <a href="matlab:help classes\@ssmport\update_struct">classes\@ssmport\update_struct</a> -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@tfmap   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@tfmap\attachToDom">classes\@tfmap\attachToDom</a>   - % Create empty tfdata node with the attribute 'shape'
%   <a href="matlab:help classes\@tfmap\char">classes\@tfmap\char</a>          -  convert a tfmap into a string.
%   <a href="matlab:help classes\@tfmap\copy">classes\@tfmap\copy</a>          -  makes a (deep) copy of the input tfmap objects.
%   <a href="matlab:help classes\@tfmap\disp">classes\@tfmap\disp</a>          -  overloads display functionality for tfmap objects.
%   <a href="matlab:help classes\@tfmap\fromDom">classes\@tfmap\fromDom</a>       - % Get shape
%   <a href="matlab:help classes\@tfmap\fromStruct">classes\@tfmap\fromStruct</a>    -  creates from a structure a tfmap object.
%   <a href="matlab:help classes\@tfmap\getX">classes\@tfmap\getX</a>          -  Get the property 'x'.
%   <a href="matlab:help classes\@tfmap\loadobj">classes\@tfmap\loadobj</a>       -  is called by the load function for user objects.
%   <a href="matlab:help classes\@tfmap\plot">classes\@tfmap\plot</a>          -  plots the given tfmap on the given axes
%   <a href="matlab:help classes\@tfmap\tfmap">classes\@tfmap\tfmap</a>         -  time-frequency data object class constructor.
%   <a href="matlab:help classes\@tfmap\update_struct">classes\@tfmap\update_struct</a> -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@time   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@time\attachToDom">classes\@time\attachToDom</a>      - % Create empty time node with the attribute 'shape'
%   <a href="matlab:help classes\@time\calendarweek">classes\@time\calendarweek</a>     -  returns the ISO week of the year for the given time.
%   <a href="matlab:help classes\@time\char">classes\@time\char</a>             -  Convert a time object into a string
%   <a href="matlab:help classes\@time\copy">classes\@time\copy</a>             -  makes a (deep) copy of the input time objects.
%   <a href="matlab:help classes\@time\datenum">classes\@time\datenum</a>          -  Converts a time object into MATLAB serial date representation
%   <a href="matlab:help classes\@time\dayofyear">classes\@time\dayofyear</a>        -  returns the day of year for the given time.
%   <a href="matlab:help classes\@time\disp">classes\@time\disp</a>             -  display functionality for time objects.
%   <a href="matlab:help classes\@time\double">classes\@time\double</a>           -  Converts a time object into a double
%   <a href="matlab:help classes\@time\format">classes\@time\format</a>           -  Formats a time object into a string
%   <a href="matlab:help classes\@time\fromDom">classes\@time\fromDom</a>          - % Get shape
%   <a href="matlab:help classes\@time\fromStruct">classes\@time\fromStruct</a>       -  creates from a structure a TIME object.
%   <a href="matlab:help classes\@time\ge">classes\@time\ge</a>               -  overloads >= operator for time objects
%   <a href="matlab:help classes\@time\getTimezones">classes\@time\getTimezones</a>     -  Get all possible timezones.
%   <a href="matlab:help classes\@time\getdateform">classes\@time\getdateform</a>      - taken verbatim from 'datestr.m' in MATLAB R2008b
%   <a href="matlab:help classes\@time\gt">classes\@time\gt</a>               -  overloads > operator for time objects
%   <a href="matlab:help classes\@time\le">classes\@time\le</a>               -  overloads <= operator for time objects
%   <a href="matlab:help classes\@time\loadobj">classes\@time\loadobj</a>          -  is called by the load function for user objects.
%   <a href="matlab:help classes\@time\lt">classes\@time\lt</a>               -  overloads < operator for time objects
%   <a href="matlab:help classes\@time\matfrmt2javafrmt">classes\@time\matfrmt2javafrmt</a> - convert MATLAB time formatting specification string into a Java one
%   <a href="matlab:help classes\@time\max">classes\@time\max</a>              -  return the latest time of an input time-object array.
%   <a href="matlab:help classes\@time\mean">classes\@time\mean</a>             -  return the mean time of an input time-object array.
%   <a href="matlab:help classes\@time\min">classes\@time\min</a>              -  return the earliest time of an input time-object array.
%   <a href="matlab:help classes\@time\minus">classes\@time\minus</a>            -  Implements subtraction operator for time objects.
%   <a href="matlab:help classes\@time\mode">classes\@time\mode</a>             -  return the mode time of an input time-object array.
%   <a href="matlab:help classes\@time\parse">classes\@time\parse</a>            - % second and third arguments are optional
%   <a href="matlab:help classes\@time\plus">classes\@time\plus</a>             -  Implements addition operator for time objects.
%   <a href="matlab:help classes\@time\strftime">classes\@time\strftime</a>         -  Formats a time expressed as msec since the epoch into a string
%   <a href="matlab:help classes\@time\string">classes\@time\string</a>           -  writes a command string that can be used to recreate the input time object.
%   <a href="matlab:help classes\@time\time">classes\@time\time</a>             -  Time object class constructor.
%   <a href="matlab:help classes\@time\toGPS">classes\@time\toGPS</a>            -  returns the gps seconds corresponding to this time object.
%   <a href="matlab:help classes\@time\update_struct">classes\@time\update_struct</a>    -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@timespan   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@timespan\attachToDom">classes\@timespan\attachToDom</a>              - % Create empty timespan node with the attribute 'shape'
%   <a href="matlab:help classes\@timespan\char">classes\@timespan\char</a>                     -  convert a timespan object into a string.
%   <a href="matlab:help classes\@timespan\computeInterval">classes\@timespan\computeInterval</a>          -  compute the interval of the time span.
%   <a href="matlab:help classes\@timespan\copy">classes\@timespan\copy</a>                     -  makes a (deep) copy of the input TIMESPAN objects.
%   <a href="matlab:help classes\@timespan\disp">classes\@timespan\disp</a>                     -  overloads display functionality for timespan objects.
%   <a href="matlab:help classes\@timespan\double">classes\@timespan\double</a>                   -  overloads double() function for timespan objects.
%   <a href="matlab:help classes\@timespan\fromAOs">classes\@timespan\fromAOs</a>                  - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@timespan\fromDom">classes\@timespan\fromDom</a>                  - % Get shape
%   <a href="matlab:help classes\@timespan\fromStruct">classes\@timespan\fromStruct</a>               -  creates from a structure a TIMESPAN object.
%   <a href="matlab:help classes\@timespan\fromTimespanDef">classes\@timespan\fromTimespanDef</a>          - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   <a href="matlab:help classes\@timespan\ge">classes\@timespan\ge</a>                       -  overloads >= operator for timespan objects
%   <a href="matlab:help classes\@timespan\generateConstructorPlist">classes\@timespan\generateConstructorPlist</a> -  generates a PLIST from the properties which can rebuild the object.
%   <a href="matlab:help classes\@timespan\getEndT">classes\@timespan\getEndT</a>                  -  Get the timespan property 'endT'.
%   <a href="matlab:help classes\@timespan\getNsecs">classes\@timespan\getNsecs</a>                 -  Get the timespan property 'nsecs'.
%   <a href="matlab:help classes\@timespan\getStartT">classes\@timespan\getStartT</a>                -  Get the timespan property 'startT'.
%   <a href="matlab:help classes\@timespan\gt">classes\@timespan\gt</a>                       -  overloads > operator for timespan objects
%   <a href="matlab:help classes\@timespan\human">classes\@timespan\human</a>                    -  returns a human readable string representing the time range.
%   <a href="matlab:help classes\@timespan\inTimespan">classes\@timespan\inTimespan</a>               -  checks if an input time is inbetween a timespan.
%   <a href="matlab:help classes\@timespan\le">classes\@timespan\le</a>                       -  overloads <= operator for timespan objects
%   <a href="matlab:help classes\@timespan\loadobj">classes\@timespan\loadobj</a>                  -  is called by the load function for user objects.
%   <a href="matlab:help classes\@timespan\lt">classes\@timespan\lt</a>                       -  overloads < operator for timespan objects
%   <a href="matlab:help classes\@timespan\merge">classes\@timespan\merge</a>                    -  the input timespan objects into one output timespan object.
%   <a href="matlab:help classes\@timespan\minus">classes\@timespan\minus</a>                    -  Implements subtraction operator for timespan objects.
%   <a href="matlab:help classes\@timespan\plot">classes\@timespan\plot</a>                     -  the timespan objects on the given axes.
%   <a href="matlab:help classes\@timespan\plus">classes\@timespan\plus</a>                     -  Implements addition operator for timespan objects.
%   <a href="matlab:help classes\@timespan\setEndT">classes\@timespan\setEndT</a>                  -  sets the 'endT' property of the timespan objects.
%   <a href="matlab:help classes\@timespan\setStartT">classes\@timespan\setStartT</a>                -  sets the 'startT' property of the timespan objects.
%   <a href="matlab:help classes\@timespan\setTimespan">classes\@timespan\setTimespan</a>              -  setting the 'timespan' property for timespan-objects is not allowed.
%   <a href="matlab:help classes\@timespan\table">classes\@timespan\table</a>                    -  display the an array of timespan objects in a table.
%   <a href="matlab:help classes\@timespan\timespan">classes\@timespan\timespan</a>                 -  timespan object class constructor.
%   <a href="matlab:help classes\@timespan\tohtml">classes\@timespan\tohtml</a>                   -  produces an html table from the input timespans.
%   <a href="matlab:help classes\@timespan\update_struct">classes\@timespan\update_struct</a>            -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@tsdata   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@tsdata\attachToDom">classes\@tsdata\attachToDom</a>      - % Create empty tsdata node with the attribute 'shape'
%   <a href="matlab:help classes\@tsdata\char">classes\@tsdata\char</a>             -  convert a tsdata object into a string.
%   <a href="matlab:help classes\@tsdata\collapseX">classes\@tsdata\collapseX</a>        -  Checks whether the x vector is evenly sampled and then removes it
%   <a href="matlab:help classes\@tsdata\copy">classes\@tsdata\copy</a>             -  makes a (deep) copy of the input tsdata objects.
%   <a href="matlab:help classes\@tsdata\createTimeVector">classes\@tsdata\createTimeVector</a> -  Creates the time-series vector from the given 'fs' and 'nsecs'
%   <a href="matlab:help classes\@tsdata\disp">classes\@tsdata\disp</a>             -  overloads display functionality for tsdata objects.
%   <a href="matlab:help classes\@tsdata\evenly">classes\@tsdata\evenly</a>           -  defines if the data is evenly sampled or not
%   <a href="matlab:help classes\@tsdata\fitfs">classes\@tsdata\fitfs</a>            -  estimates the sample rate of the input tsdata object.
%   <a href="matlab:help classes\@tsdata\fixNsecs">classes\@tsdata\fixNsecs</a>         -  fixes the numer of seconds.
%   <a href="matlab:help classes\@tsdata\fromDom">classes\@tsdata\fromDom</a>          - % Get shape
%   <a href="matlab:help classes\@tsdata\fromStruct">classes\@tsdata\fromStruct</a>       -  creates from a structure a TSDATA object.
%   <a href="matlab:help classes\@tsdata\getX">classes\@tsdata\getX</a>             -  Get the property 'x'.
%   <a href="matlab:help classes\@tsdata\growT">classes\@tsdata\growT</a>            -  grows the time (x) vector if it is empty.
%   <a href="matlab:help classes\@tsdata\loadobj">classes\@tsdata\loadobj</a>          -  is called by the load function for user objects.
%   <a href="matlab:help classes\@tsdata\plot">classes\@tsdata\plot</a>             -  plots the given cdata on the given axes
%   <a href="matlab:help classes\@tsdata\saveobj">classes\@tsdata\saveobj</a>          -  is called by MATLABs save function for user objects.
%   <a href="matlab:help classes\@tsdata\setFs">classes\@tsdata\setFs</a>            -  Set the property 'fs'.
%   <a href="matlab:help classes\@tsdata\setNsecs">classes\@tsdata\setNsecs</a>         -  Set the property 'nsecs'.
%   <a href="matlab:help classes\@tsdata\setT0">classes\@tsdata\setT0</a>            -  Set the property 't0'.
%   <a href="matlab:help classes\@tsdata\setToffset">classes\@tsdata\setToffset</a>       -  Set the property 'toffset'.
%   <a href="matlab:help classes\@tsdata\setX">classes\@tsdata\setX</a>             -  Set the property 'x'.
%   <a href="matlab:help classes\@tsdata\tsdata">classes\@tsdata\tsdata</a>           -  time-series object class constructor.
%   <a href="matlab:help classes\@tsdata\update_struct">classes\@tsdata\update_struct</a>    -  update the input structure to the current ltpda version
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@unit   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@unit\HzToS">classes\@unit\HzToS</a>         -  convert any 'Hz' units to 's'
%   <a href="matlab:help classes\@unit\atan2">classes\@unit\atan2</a>         -  implements atan2 operator for two unit objects
%   <a href="matlab:help classes\@unit\attachToDom">classes\@unit\attachToDom</a>   - % Create empty unit node with the attribute 'shape'
%   <a href="matlab:help classes\@unit\char">classes\@unit\char</a>          -  convert a unit object into a string.
%   <a href="matlab:help classes\@unit\copy">classes\@unit\copy</a>          -  makes a (deep) copy of the input unit objects.
%   <a href="matlab:help classes\@unit\disp">classes\@unit\disp</a>          -  display an unit object.
%   <a href="matlab:help classes\@unit\factor">classes\@unit\factor</a>        -  factorises units in to numerator and denominator units.
%   <a href="matlab:help classes\@unit\fromDom">classes\@unit\fromDom</a>       - % There exist two possibilities.
%   <a href="matlab:help classes\@unit\fromStruct">classes\@unit\fromStruct</a>    -  creates from a structure a UNIT object.
%   <a href="matlab:help classes\@unit\isemptyunit">classes\@unit\isemptyunit</a>   -  overloads the isequal operator for ltpda unit objects.
%   <a href="matlab:help classes\@unit\isequal">classes\@unit\isequal</a>       -  overloads the isequal operator for ltpda unit objects.
%   <a href="matlab:help classes\@unit\loadobj">classes\@unit\loadobj</a>       -  is called by the load function for user objects.
%   <a href="matlab:help classes\@unit\mpower">classes\@unit\mpower</a>        -  implements mpower operator for unit objects.
%   <a href="matlab:help classes\@unit\mrdivide">classes\@unit\mrdivide</a>      -  implements mrdivide operator for unit objects.
%   <a href="matlab:help classes\@unit\mtimes">classes\@unit\mtimes</a>        -  implements mtimes operator for unit objects.
%   <a href="matlab:help classes\@unit\plus">classes\@unit\plus</a>          -  implements addition operator for unit objects.
%   <a href="matlab:help classes\@unit\power">classes\@unit\power</a>         -  implements power operator for unit objects.
%   <a href="matlab:help classes\@unit\rdivide">classes\@unit\rdivide</a>       -  implements rdivide operator for unit objects.
%   <a href="matlab:help classes\@unit\sToHz">classes\@unit\sToHz</a>         -  convert any 's' units to 'Hz'
%   <a href="matlab:help classes\@unit\setVals">classes\@unit\setVals</a>       -  set the vals field of the unit
%   <a href="matlab:help classes\@unit\simplify">classes\@unit\simplify</a>      -  the units.
%   <a href="matlab:help classes\@unit\split">classes\@unit\split</a>         -  split a unit into a set of single units.
%   <a href="matlab:help classes\@unit\sqrt">classes\@unit\sqrt</a>          -  computes the square root of an unit object.
%   <a href="matlab:help classes\@unit\string">classes\@unit\string</a>        -  converts a unit object to a command string which will recreate the unit object.
%   <a href="matlab:help classes\@unit\times">classes\@unit\times</a>         -  implements times operator for unit objects.
%   <a href="matlab:help classes\@unit\toSI">classes\@unit\toSI</a>          -  converts the units to SI.
%   <a href="matlab:help classes\@unit\tolabel">classes\@unit\tolabel</a>       -  converts a unit object to LaTeX string suitable for use as axis labels.
%   <a href="matlab:help classes\@unit\unit">classes\@unit\unit</a>          -  a helper class for implementing units in LTPDA.
%   <a href="matlab:help classes\@unit\update_struct">classes\@unit\update_struct</a> -  update the input structure to the current ltpda version
%   <a href="matlab:help classes\@unit\xlabel">classes\@unit\xlabel</a>        -  place a xlabel on the given axes taking into account the units and
%   <a href="matlab:help classes\@unit\ylabel">classes\@unit\ylabel</a>        -  place a ylabel on the given axes taking into account the units and
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@xydata   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@xydata\attachToDom">classes\@xydata\attachToDom</a>   - % Create empty xydata node with the attribute 'shape'
%   <a href="matlab:help classes\@xydata\copy">classes\@xydata\copy</a>          -  makes a (deep) copy of the input xydata objects.
%   <a href="matlab:help classes\@xydata\disp">classes\@xydata\disp</a>          -  overloads display functionality for xydata objects.
%   <a href="matlab:help classes\@xydata\fromDom">classes\@xydata\fromDom</a>       - % Get shape
%   <a href="matlab:help classes\@xydata\fromStruct">classes\@xydata\fromStruct</a>    -  creates from a structure a XYDATA object.
%   <a href="matlab:help classes\@xydata\loadobj">classes\@xydata\loadobj</a>       -  is called by the load function for user objects.
%   <a href="matlab:help classes\@xydata\update_struct">classes\@xydata\update_struct</a> -  update the input structure to the current ltpda version
%   <a href="matlab:help classes\@xydata\xydata">classes\@xydata\xydata</a>        -  X-Y data object class constructor.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\@xyzdata   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\@xyzdata\attachToDom">classes\@xyzdata\attachToDom</a>   - % Create empty xyzdata node with the attribute 'shape'
%   <a href="matlab:help classes\@xyzdata\copy">classes\@xyzdata\copy</a>          -  makes a (deep) copy of the input xyzdata objects.
%   <a href="matlab:help classes\@xyzdata\disp">classes\@xyzdata\disp</a>          -  overloads display functionality for xyzdata objects.
%   <a href="matlab:help classes\@xyzdata\fromDom">classes\@xyzdata\fromDom</a>       - % Get shape
%   <a href="matlab:help classes\@xyzdata\fromStruct">classes\@xyzdata\fromStruct</a>    -  creates from a structure a XYZDATA object.
%   <a href="matlab:help classes\@xyzdata\loadobj">classes\@xyzdata\loadobj</a>       -  is called by the load function for user objects.
%   <a href="matlab:help classes\@xyzdata\update_struct">classes\@xyzdata\update_struct</a> -  update the input structure to the current ltpda version
%   <a href="matlab:help classes\@xyzdata\xyzdata">classes\@xyzdata\xyzdata</a>       - XZYDATA X-Y-Z data object class constructor.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\@Assert   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\@Assert\Assert">classes\tests\@Assert\Assert</a>                    -  A set of assert methods.
%   <a href="matlab:help classes\tests\@Assert\doubleEquals">classes\tests\@Assert\doubleEquals</a>              -  Assert that two doubles are equal.
%   <a href="matlab:help classes\tests\@Assert\doubleEqualsWithAccuracy">classes\tests\@Assert\doubleEqualsWithAccuracy</a>  -  Assert that two doubles are equal within some tolerance.
%   classes\tests\@Assert\doubleNotEquals           - (No help available)
%   classes\tests\@Assert\empty                     - (No help available)
%   <a href="matlab:help classes\tests\@Assert\fail">classes\tests\@Assert\fail</a>                      -  throws an AssertionFailed exception with the given message.
%   classes\tests\@Assert\false                     - (No help available)
%   classes\tests\@Assert\notEmpty                  - (No help available)
%   classes\tests\@Assert\notSame                   - (No help available)
%   <a href="matlab:help classes\tests\@Assert\objectEquals">classes\tests\@Assert\objectEquals</a>              -  Assert that two ltpda_obj objects are equal.
%   <a href="matlab:help classes\tests\@Assert\objectEqualsWithException">classes\tests\@Assert\objectEqualsWithException</a> -  Assert that two ltpda_obj objects are equal with an exception list.
%   classes\tests\@Assert\same                      - (No help available)
%   <a href="matlab:help classes\tests\@Assert\stringEquals">classes\tests\@Assert\stringEquals</a>              -  Assert that two strings are equal.
%   classes\tests\@Assert\stringNotEquals           - (No help available)
%   classes\tests\@Assert\throwsException           - (No help available)
%   <a href="matlab:help classes\tests\@Assert\true">classes\tests\@Assert\true</a>                      -  Assert that a condition is true.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\@AssertionFailed   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\@AssertionFailed\AssertionFailed">classes\tests\@AssertionFailed\AssertionFailed</a> -  sub-class of MException
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\@TestDescription   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\@TestDescription\TestDescription">classes\tests\@TestDescription\TestDescription</a> -  This class collects all information about a test.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\@ltpda_obj_tests   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\@ltpda_obj_tests\ltpda_obj_tests">classes\tests\@ltpda_obj_tests\ltpda_obj_tests</a> -  is the base class for all ltpda_obj object tests.
%   <a href="matlab:help classes\tests\@ltpda_obj_tests\test_char">classes\tests\@ltpda_obj_tests\test_char</a>       -  the char() method returns a non-empty string.
%   <a href="matlab:help classes\tests\@ltpda_obj_tests\test_copy">classes\tests\@ltpda_obj_tests\test_copy</a>       -  the copy() method works.
%   <a href="matlab:help classes\tests\@ltpda_obj_tests\test_display">classes\tests\@ltpda_obj_tests\test_display</a>    -  the display() method returns a non-empty string.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\@ltpda_test_runner   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\@ltpda_test_runner\get_builtin_model_tests">classes\tests\@ltpda_test_runner\get_builtin_model_tests</a> -  returns an array of test structures.
%   <a href="matlab:help classes\tests\@ltpda_test_runner\get_class_tests">classes\tests\@ltpda_test_runner\get_class_tests</a>         -  returns an array of test structures.
%   <a href="matlab:help classes\tests\@ltpda_test_runner\get_tests_for_class">classes\tests\@ltpda_test_runner\get_tests_for_class</a>     -  returns an array of test structures for a particular
%   <a href="matlab:help classes\tests\@ltpda_test_runner\get_tests_in_dir">classes\tests\@ltpda_test_runner\get_tests_in_dir</a>        -  returns an array of test structures for the test classes
%   <a href="matlab:help classes\tests\@ltpda_test_runner\ltpda_test_runner">classes\tests\@ltpda_test_runner\ltpda_test_runner</a>       -  can be used to run unit tests for LTPDA.
%   <a href="matlab:help classes\tests\@ltpda_test_runner\run_test_list">classes\tests\@ltpda_test_runner\run_test_list</a>           - GET_CLASS_TESTS runs all the tests specified in the array of test structures.
%   <a href="matlab:help classes\tests\@ltpda_test_runner\run_tests">classes\tests\@ltpda_test_runner\run_tests</a>               -  runs different configurations of units tests.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\@ltpda_uo_tests   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\@ltpda_uo_tests\ltpda_uo_tests">classes\tests\@ltpda_uo_tests\ltpda_uo_tests</a>      - LTPDA_OBJ_TESTS is the base class for all ltpda_obj objects.
%   <a href="matlab:help classes\tests\@ltpda_uo_tests\test_description">classes\tests\@ltpda_uo_tests\test_description</a>    -  the description is '' by default.
%   <a href="matlab:help classes\tests\@ltpda_uo_tests\test_name">classes\tests\@ltpda_uo_tests\test_name</a>           -  the name is 'None' by default.
%   <a href="matlab:help classes\tests\@ltpda_uo_tests\test_save_load">classes\tests\@ltpda_uo_tests\test_save_load</a>      -  the save and load methods work.
%   <a href="matlab:help classes\tests\@ltpda_uo_tests\test_setDescription">classes\tests\@ltpda_uo_tests\test_setDescription</a> -  the setting the description works.
%   <a href="matlab:help classes\tests\@ltpda_uo_tests\test_setName">classes\tests\@ltpda_uo_tests\test_setName</a>        -  the setting the name works.
%   <a href="matlab:help classes\tests\@ltpda_uo_tests\test_setUUID">classes\tests\@ltpda_uo_tests\test_setUUID</a>        -  the setting the UUID works.
%   <a href="matlab:help classes\tests\@ltpda_uo_tests\test_string">classes\tests\@ltpda_uo_tests\test_string</a>         -  the string method works.
%   <a href="matlab:help classes\tests\@ltpda_uo_tests\test_uuid">classes\tests\@ltpda_uo_tests\test_uuid</a>           -  the UUID is a non-empty string.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\@ltpda_uoh_method_tests   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\@ltpda_uoh_method_tests\ltpda_uoh_method_tests">classes\tests\@ltpda_uoh_method_tests\ltpda_uoh_method_tests</a>  -  a series of tests for methods of ltpda_uoh
%   <a href="matlab:help classes\tests\@ltpda_uoh_method_tests\test_displayMethodInfo">classes\tests\@ltpda_uoh_method_tests\test_displayMethodInfo</a>  -  tests the method has a displayMethodInfo in the help.
%   <a href="matlab:help classes\tests\@ltpda_uoh_method_tests\test_getInfo">classes\tests\@ltpda_uoh_method_tests\test_getInfo</a>            -  tests getting the method info from the method.
%   <a href="matlab:help classes\tests\@ltpda_uoh_method_tests\test_history">classes\tests\@ltpda_uoh_method_tests\test_history</a>            -  tests the method correctly adds history.
%   <a href="matlab:help classes\tests\@ltpda_uoh_method_tests\test_preserves_plotinfo">classes\tests\@ltpda_uoh_method_tests\test_preserves_plotinfo</a> -  tests this method doesn't delete the plot info.
%   <a href="matlab:help classes\tests\@ltpda_uoh_method_tests\test_rebuild">classes\tests\@ltpda_uoh_method_tests\test_rebuild</a>            -  tests the output of the method can be rebuilt.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\@ltpda_uoh_tests   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\@ltpda_uoh_tests\ltpda_uoh_tests">classes\tests\@ltpda_uoh_tests\ltpda_uoh_tests</a>                -  is the base class for all ltpda_uoh objects.
%   <a href="matlab:help classes\tests\@ltpda_uoh_tests\test_history_empty_constructor">classes\tests\@ltpda_uoh_tests\test_history_empty_constructor</a> - Tests on the history field.
%   <a href="matlab:help classes\tests\@ltpda_uoh_tests\test_history_setName">classes\tests\@ltpda_uoh_tests\test_history_setName</a>           - Tests on the history field when doing an operation like setName.
%   <a href="matlab:help classes\tests\@ltpda_uoh_tests\test_plotinfo">classes\tests\@ltpda_uoh_tests\test_plotinfo</a>                  -  the plotinfo is [] by default.
%   <a href="matlab:help classes\tests\@ltpda_uoh_tests\test_procinfo">classes\tests\@ltpda_uoh_tests\test_procinfo</a>                  -  the procinfo is [] by default.
%   <a href="matlab:help classes\tests\@ltpda_uoh_tests\test_setPlotinfo">classes\tests\@ltpda_uoh_tests\test_setPlotinfo</a>               -  the setting the plotinfo works.
%   <a href="matlab:help classes\tests\@ltpda_uoh_tests\test_setProcinfo">classes\tests\@ltpda_uoh_tests\test_setProcinfo</a>               -  the setting the procinfo works.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\@ltpda_utp   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\@ltpda_utp\char">classes\tests\@ltpda_utp\char</a>        -  convert a ltpda_utp object into a string.
%   <a href="matlab:help classes\tests\@ltpda_utp\copy">classes\tests\@ltpda_utp\copy</a>        -  makes a (deep) copy of the input ltpda_utp objects.
%   <a href="matlab:help classes\tests\@ltpda_utp\display">classes\tests\@ltpda_utp\display</a>     -  overloads display functionality for ltpda_utp objects.
%   <a href="matlab:help classes\tests\@ltpda_utp\getTestData">classes\tests\@ltpda_utp\getTestData</a> -  returns the testData array or an empty object of the correct
%   <a href="matlab:help classes\tests\@ltpda_utp\init">classes\tests\@ltpda_utp\init</a>        -  initialize the unit test class.
%   <a href="matlab:help classes\tests\@ltpda_utp\ltpda_utp">classes\tests\@ltpda_utp\ltpda_utp</a>   -  is the base class for ltpda unit test plan classes.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\@ut_result   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\@ut_result\ut_result">classes\tests\@ut_result\ut_result</a> -  encapsulates the result of running a single ltpda unit test.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\@ut_result_printer   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\@ut_result_printer\dump">classes\tests\@ut_result_printer\dump</a>                -  prints out tests results to the terminal.
%   <a href="matlab:help classes\tests\@ut_result_printer\printFailuresString">classes\tests\@ut_result_printer\printFailuresString</a> -  returns a string describing the test failures.
%   <a href="matlab:help classes\tests\@ut_result_printer\printRuntimeString">classes\tests\@ut_result_printer\printRuntimeString</a>  -  returns a string listing the run time of the tests.
%   <a href="matlab:help classes\tests\@ut_result_printer\printSummaryString">classes\tests\@ut_result_printer\printSummaryString</a>  -  returns a string summarising the tests.
%   <a href="matlab:help classes\tests\@ut_result_printer\ut_result_printer">classes\tests\@ut_result_printer\ut_result_printer</a>   -  displays results from an ltpda_test_runner.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ao\@ltpda_vector_utp   %%%%%%%%%%%%%%%%%%%%
%
%   classes\tests\ao\@ltpda_vector_utp\ltpda_vector_utp  - (No help available)
%   <a href="matlab:help classes\tests\ao\@ltpda_vector_utp\test_vector_input">classes\tests\ao\@ltpda_vector_utp\test_vector_input</a> -  a method with a vector of input objects
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ao\@test_ao_abs   %%%%%%%%%%%%%%%%%%%%
%
%   classes\tests\ao\@test_ao_abs\test_ao_abs       - (No help available)
%   <a href="matlab:help classes\tests\ao\@test_ao_abs\test_vector_input">classes\tests\ao\@test_ao_abs\test_vector_input</a> - % set test data
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ao\@test_ao_ao   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ao\@test_ao_ao\test_ao_ao">classes\tests\ao\@test_ao_ao\test_ao_ao</a>     -  run tests on the AO constructor and associated methods.
%   <a href="matlab:help classes\tests\ao\@test_ao_ao\test_copy">classes\tests\ao\@test_ao_ao\test_copy</a>      -  the copy() method works for AOs.
%   <a href="matlab:help classes\tests\ao\@test_ao_ao\test_save_load">classes\tests\ao\@test_ao_ao\test_save_load</a> -  the save and load methods work for the AO class.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ao\@test_ao_ao_table   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ao\@test_ao_ao_table\test_ao_ao_table">classes\tests\ao\@test_ao_ao_table\test_ao_ao_table</a> - % cdata
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ao\@test_ao_cdata_table   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ao\@test_ao_cdata_table\test_ao_cdata_table">classes\tests\ao\@test_ao_cdata_table\test_ao_cdata_table</a> - % Only cdata objects
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ao\@test_ao_detectOutliers   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ao\@test_ao_detectOutliers\test_ao_detectOutliers">classes\tests\ao\@test_ao_detectOutliers\test_ao_detectOutliers</a> -  runs tests for the ao method detectOutliers.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ao\@test_ao_fsdata_table   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ao\@test_ao_fsdata_table\test_ao_fsdata_table">classes\tests\ao\@test_ao_fsdata_table\test_ao_fsdata_table</a> - % Only fsdata objects
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ao\@test_ao_objmeta_table   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ao\@test_ao_objmeta_table\test_ao_objmeta_table">classes\tests\ao\@test_ao_objmeta_table\test_ao_objmeta_table</a> - % cdata
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ao\@test_ao_powerFit   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ao\@test_ao_powerFit\test_ao_powerFit">classes\tests\ao\@test_ao_powerFit\test_ao_powerFit</a> -  runs tests for the ao method powerFit.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ao\@test_ao_subsData   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ao\@test_ao_subsData\test_ao_subsData">classes\tests\ao\@test_ao_subsData\test_ao_subsData</a> -  runs tests for the ao method subsData.
%   <a href="matlab:help classes\tests\ao\@test_ao_subsData\test_getInfo">classes\tests\ao\@test_ao_subsData\test_getInfo</a>     - Override getInfo test which is failing
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ao\@test_ao_tsdata_table   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ao\@test_ao_tsdata_table\test_ao_tsdata_table">classes\tests\ao\@test_ao_tsdata_table\test_ao_tsdata_table</a> - % Only tsdata objects
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ao\@test_ao_xydata_table   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ao\@test_ao_xydata_table\test_ao_xydata_table">classes\tests\ao\@test_ao_xydata_table\test_ao_xydata_table</a> - % Only xydata objects
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\database\@ltpda_ao_table   %%%%%%%%%%%%%%%%%%%%
%
%   classes\tests\database\@ltpda_ao_table\ltpda_ao_table      - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_ao_table\test_ao_data_id">classes\tests\database\@ltpda_ao_table\test_ao_data_id</a>     - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_ao_table\test_ao_data_type">classes\tests\database\@ltpda_ao_table\test_ao_data_type</a>   - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_ao_table\test_ao_description">classes\tests\database\@ltpda_ao_table\test_ao_description</a> - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_ao_table\test_ao_mfilename">classes\tests\database\@ltpda_ao_table\test_ao_mfilename</a>   - (No help available)
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\database\@ltpda_cdata_table   %%%%%%%%%%%%%%%%%%%%
%
%   classes\tests\database\@ltpda_cdata_table\ltpda_cdata_table - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_cdata_table\test_cdata_xunits">classes\tests\database\@ltpda_cdata_table\test_cdata_xunits</a> - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_cdata_table\test_cdata_yunits">classes\tests\database\@ltpda_cdata_table\test_cdata_yunits</a> - (No help available)
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\database\@ltpda_database   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\database\@ltpda_database\executeQuery">classes\tests\database\@ltpda_database\executeQuery</a>          - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_database\getTableEntry">classes\tests\database\@ltpda_database\getTableEntry</a>         - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_database\getTableIdFromTestObj">classes\tests\database\@ltpda_database\getTableIdFromTestObj</a> - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_database\init">classes\tests\database\@ltpda_database\init</a>                  -  initialize the unit test class.
%   <a href="matlab:help classes\tests\database\@ltpda_database\ltpda_database">classes\tests\database\@ltpda_database\ltpda_database</a>        - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\database\@ltpda_fsdata_table   %%%%%%%%%%%%%%%%%%%%
%
%   classes\tests\database\@ltpda_fsdata_table\ltpda_fsdata_table - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_fsdata_table\test_fsdata_fs">classes\tests\database\@ltpda_fsdata_table\test_fsdata_fs</a>     - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_fsdata_table\test_fsdata_xunits">classes\tests\database\@ltpda_fsdata_table\test_fsdata_xunits</a> - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_fsdata_table\test_fsdata_yunits">classes\tests\database\@ltpda_fsdata_table\test_fsdata_yunits</a> - (No help available)
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\database\@ltpda_objmeta_table   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\init">classes\tests\database\@ltpda_objmeta_table\init</a>                             -  initialize the unit test class.
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\ltpda_objmeta_table">classes\tests\database\@ltpda_objmeta_table\ltpda_objmeta_table</a>              - s.experiment_title       = sprintf('%s with a struct - %s', experiment_title, tStr);
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_additional_authors">classes\tests\database\@ltpda_objmeta_table\test_objmeta_additional_authors</a>  - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_additional_comments">classes\tests\database\@ltpda_objmeta_table\test_objmeta_additional_comments</a> - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_analysis_desc">classes\tests\database\@ltpda_objmeta_table\test_objmeta_analysis_desc</a>       - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_author">classes\tests\database\@ltpda_objmeta_table\test_objmeta_author</a>              - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_created">classes\tests\database\@ltpda_objmeta_table\test_objmeta_created</a>             - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_experiment_desc">classes\tests\database\@ltpda_objmeta_table\test_objmeta_experiment_desc</a>     - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_experiment_title">classes\tests\database\@ltpda_objmeta_table\test_objmeta_experiment_title</a>    - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_hostname">classes\tests\database\@ltpda_objmeta_table\test_objmeta_hostname</a>            - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_ip">classes\tests\database\@ltpda_objmeta_table\test_objmeta_ip</a>                  - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_keywords">classes\tests\database\@ltpda_objmeta_table\test_objmeta_keywords</a>            - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_name">classes\tests\database\@ltpda_objmeta_table\test_objmeta_name</a>                - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_obj_type">classes\tests\database\@ltpda_objmeta_table\test_objmeta_obj_type</a>            - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_os">classes\tests\database\@ltpda_objmeta_table\test_objmeta_os</a>                  - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_quantity">classes\tests\database\@ltpda_objmeta_table\test_objmeta_quantity</a>            - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_reference_ids">classes\tests\database\@ltpda_objmeta_table\test_objmeta_reference_ids</a>       - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_submitted">classes\tests\database\@ltpda_objmeta_table\test_objmeta_submitted</a>           - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_validated">classes\tests\database\@ltpda_objmeta_table\test_objmeta_validated</a>           - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_vdate">classes\tests\database\@ltpda_objmeta_table\test_objmeta_vdate</a>               - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_objmeta_table\test_objmeta_version">classes\tests\database\@ltpda_objmeta_table\test_objmeta_version</a>             - (No help available)
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\database\@ltpda_tsdata_table   %%%%%%%%%%%%%%%%%%%%
%
%   classes\tests\database\@ltpda_tsdata_table\ltpda_tsdata_table - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_tsdata_table\test_tsdata_fs">classes\tests\database\@ltpda_tsdata_table\test_tsdata_fs</a>     - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_tsdata_table\test_tsdata_nsecs">classes\tests\database\@ltpda_tsdata_table\test_tsdata_nsecs</a>  - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_tsdata_table\test_tsdata_t0">classes\tests\database\@ltpda_tsdata_table\test_tsdata_t0</a>     - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_tsdata_table\test_tsdata_xunits">classes\tests\database\@ltpda_tsdata_table\test_tsdata_xunits</a> - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_tsdata_table\test_tsdata_yunits">classes\tests\database\@ltpda_tsdata_table\test_tsdata_yunits</a> - (No help available)
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\database\@ltpda_xydata_table   %%%%%%%%%%%%%%%%%%%%
%
%   classes\tests\database\@ltpda_xydata_table\ltpda_xydata_table - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_xydata_table\test_xydata_xunits">classes\tests\database\@ltpda_xydata_table\test_xydata_xunits</a> - (No help available)
%   <a href="matlab:help classes\tests\database\@ltpda_xydata_table\test_xydata_yunits">classes\tests\database\@ltpda_xydata_table\test_xydata_yunits</a> - (No help available)
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ltpda_vector\@test_ltpda_vector   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ltpda_vector\@test_ltpda_vector\test_constructor">classes\tests\ltpda_vector\@test_ltpda_vector\test_constructor</a>  -  each constructor works
%   <a href="matlab:help classes\tests\ltpda_vector\@test_ltpda_vector\test_ltpda_vector">classes\tests\ltpda_vector\@test_ltpda_vector\test_ltpda_vector</a> -  run tests on the ltpda_vector constructor and associated methods.
%   <a href="matlab:help classes\tests\ltpda_vector\@test_ltpda_vector\test_xml">classes\tests\ltpda_vector\@test_ltpda_vector\test_xml</a>          -  adding to, and getting from, DOM works
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\models\@ltpda_builtin_model_utp   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\models\@ltpda_builtin_model_utp\ltpda_builtin_model_utp">classes\tests\models\@ltpda_builtin_model_utp\ltpda_builtin_model_utp</a>          -  is the base class for ltpda built-in model unit tests.
%   <a href="matlab:help classes\tests\models\@ltpda_builtin_model_utp\test_builtin_model_describe">classes\tests\models\@ltpda_builtin_model_utp\test_builtin_model_describe</a>      -  that the built-in model responds to the 'describe' call
%   <a href="matlab:help classes\tests\models\@ltpda_builtin_model_utp\test_builtin_model_doc">classes\tests\models\@ltpda_builtin_model_utp\test_builtin_model_doc</a>           -  that the built-in model responds to the 'doc' call
%   <a href="matlab:help classes\tests\models\@ltpda_builtin_model_utp\test_builtin_model_info">classes\tests\models\@ltpda_builtin_model_utp\test_builtin_model_info</a>          -  that the built-in model responds to the 'info' call
%   <a href="matlab:help classes\tests\models\@ltpda_builtin_model_utp\test_builtin_model_modelOverview">classes\tests\models\@ltpda_builtin_model_utp\test_builtin_model_modelOverview</a> -  that the built-in model works with minfo/modelOverview and that the
%   <a href="matlab:help classes\tests\models\@ltpda_builtin_model_utp\test_builtin_model_plist">classes\tests\models\@ltpda_builtin_model_utp\test_builtin_model_plist</a>         -  that the built-in model responds to the 'plist' call.
%   <a href="matlab:help classes\tests\models\@ltpda_builtin_model_utp\test_builtin_model_plist_version">classes\tests\models\@ltpda_builtin_model_utp\test_builtin_model_plist_version</a> -  that the built-in model has a default plist with a 'VERSION' key.
%   <a href="matlab:help classes\tests\models\@ltpda_builtin_model_utp\test_builtin_model_versions">classes\tests\models\@ltpda_builtin_model_utp\test_builtin_model_versions</a>      -  that all versions of the built-in model can be built, and re-built
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\models\@ltpda_builtin_models_ao_utp   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\models\@ltpda_builtin_models_ao_utp\ltpda_builtin_models_ao_utp">classes\tests\models\@ltpda_builtin_models_ao_utp\ltpda_builtin_models_ao_utp</a> -  general UTP for analysis objects (AO) models.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\models\@ltpda_builtin_models_collection_utp   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\models\@ltpda_builtin_models_collection_utp\ltpda_builtin_models_collection_utp">classes\tests\models\@ltpda_builtin_models_collection_utp\ltpda_builtin_models_collection_utp</a> -  general UTP for collection models.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\models\@ltpda_builtin_models_filterbank_utp   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\models\@ltpda_builtin_models_filterbank_utp\ltpda_builtin_models_filterbank_utp">classes\tests\models\@ltpda_builtin_models_filterbank_utp\ltpda_builtin_models_filterbank_utp</a> -  general UTP for filterbank models.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\models\@ltpda_builtin_models_matrix_utp   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\models\@ltpda_builtin_models_matrix_utp\ltpda_builtin_models_matrix_utp">classes\tests\models\@ltpda_builtin_models_matrix_utp\ltpda_builtin_models_matrix_utp</a> -  general UTP for matrix models.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\models\@ltpda_builtin_models_miir_utp   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\models\@ltpda_builtin_models_miir_utp\ltpda_builtin_models_miir_utp">classes\tests\models\@ltpda_builtin_models_miir_utp\ltpda_builtin_models_miir_utp</a> -  general UTP for miir models.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\models\@ltpda_builtin_models_smodel_utp   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\models\@ltpda_builtin_models_smodel_utp\ltpda_builtin_models_smodel_utp">classes\tests\models\@ltpda_builtin_models_smodel_utp\ltpda_builtin_models_smodel_utp</a> -  general UTP for smodel models.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\models\@ltpda_builtin_models_ssm_utp   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\models\@ltpda_builtin_models_ssm_utp\ltpda_builtin_models_ssm_utp">classes\tests\models\@ltpda_builtin_models_ssm_utp\ltpda_builtin_models_ssm_utp</a> -  general UTP for ssm models.
%   <a href="matlab:help classes\tests\models\@ltpda_builtin_models_ssm_utp\test_descriptions">classes\tests\models\@ltpda_builtin_models_ssm_utp\test_descriptions</a>            -  checks that the descriptions for the different fields
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ssm\@test_ssm_addParameters   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ssm\@test_ssm_addParameters\test_add_keyval">classes\tests\ssm\@test_ssm_addParameters\test_add_keyval</a>        -  tests adding a parameter by key/value pair.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_addParameters\test_add_plist">classes\tests\ssm\@test_ssm_addParameters\test_add_plist</a>         -  tests adding a parameter by plist.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_addParameters\test_getInfo">classes\tests\ssm\@test_ssm_addParameters\test_getInfo</a>           -  tests getting the method info from the method.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_addParameters\test_ssm_addParameters">classes\tests\ssm\@test_ssm_addParameters\test_ssm_addParameters</a> - % Make a test object
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ssm\@test_ssm_append   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ssm\@test_ssm_append\test_getInfo">classes\tests\ssm\@test_ssm_append\test_getInfo</a>            -  tests getting the method info from the method.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_append\test_preserves_plotinfo">classes\tests\ssm\@test_ssm_append\test_preserves_plotinfo</a> -  override because ssm objects don't do anything
%   <a href="matlab:help classes\tests\ssm\@test_ssm_append\test_ssm_append">classes\tests\ssm\@test_ssm_append\test_ssm_append</a>         - % Make an array of test objects
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ssm\@test_ssm_assemble   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ssm\@test_ssm_assemble\test_getInfo">classes\tests\ssm\@test_ssm_assemble\test_getInfo</a>            -  tests getting the method info from the method.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_assemble\test_preserves_plotinfo">classes\tests\ssm\@test_ssm_assemble\test_preserves_plotinfo</a> -  override because ssm objects don't do anything
%   <a href="matlab:help classes\tests\ssm\@test_ssm_assemble\test_ssm_assemble">classes\tests\ssm\@test_ssm_assemble\test_ssm_assemble</a>       - % Make an array of test objects
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ssm\@test_ssm_bode   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ssm\@test_ssm_bode\test_bode_all_inputs_outputs">classes\tests\ssm\@test_ssm_bode\test_bode_all_inputs_outputs</a> -  tests the bode method with all inputs and outputs.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_bode\test_getInfo">classes\tests\ssm\@test_ssm_bode\test_getInfo</a>                 -  tests getting the method info from the method.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_bode\test_preserves_plotinfo">classes\tests\ssm\@test_ssm_bode\test_preserves_plotinfo</a>      -  override because ssm objects don't do anything
%   <a href="matlab:help classes\tests\ssm\@test_ssm_bode\test_ssm_bode">classes\tests\ssm\@test_ssm_bode\test_ssm_bode</a>                - % Make an array of test objects
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ssm\@test_ssm_cpsd   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ssm\@test_ssm_cpsd\test_ao_input">classes\tests\ssm\@test_ssm_cpsd\test_ao_input</a>           -  tests the cpsd method with an input AOs.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_cpsd\test_covariance_input">classes\tests\ssm\@test_ssm_cpsd\test_covariance_input</a>   -  tests the cpsd method with an input covariance
%   <a href="matlab:help classes\tests\ssm\@test_ssm_cpsd\test_cpsd_input">classes\tests\ssm\@test_ssm_cpsd\test_cpsd_input</a>         -  tests the cpsd method with an input CPSD matrix.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_cpsd\test_getInfo">classes\tests\ssm\@test_ssm_cpsd\test_getInfo</a>            -  tests getting the method info from the method.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_cpsd\test_preserves_plotinfo">classes\tests\ssm\@test_ssm_cpsd\test_preserves_plotinfo</a> -  override because the output of cpsd is no longer
%   <a href="matlab:help classes\tests\ssm\@test_ssm_cpsd\test_pzmodel_ao_input">classes\tests\ssm\@test_ssm_cpsd\test_pzmodel_ao_input</a>   -  tests the cpsd method with an input AOs and pzmodels.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_cpsd\test_ssm_cpsd">classes\tests\ssm\@test_ssm_cpsd\test_ssm_cpsd</a>           - % Make a test object
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ssm\@test_ssm_cpsdForCorrelatedInputs   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ssm\@test_ssm_cpsdForCorrelatedInputs\test_ao_input">classes\tests\ssm\@test_ssm_cpsdForCorrelatedInputs\test_ao_input</a>                    -  tests the cpsdForCorrelatedInputs method with an input AOs.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_cpsdForCorrelatedInputs\test_covariance_input">classes\tests\ssm\@test_ssm_cpsdForCorrelatedInputs\test_covariance_input</a>            -  tests the cpsdForCorrelatedInputs method with an input covariance
%   <a href="matlab:help classes\tests\ssm\@test_ssm_cpsdForCorrelatedInputs\test_cpsd_input">classes\tests\ssm\@test_ssm_cpsdForCorrelatedInputs\test_cpsd_input</a>                  -  tests the cpsdForCorrelatedInputs method with an input CPSD matrix.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_cpsdForCorrelatedInputs\test_getInfo">classes\tests\ssm\@test_ssm_cpsdForCorrelatedInputs\test_getInfo</a>                     -  tests getting the method info from the method.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_cpsdForCorrelatedInputs\test_preserves_plotinfo">classes\tests\ssm\@test_ssm_cpsdForCorrelatedInputs\test_preserves_plotinfo</a>          -  override because the output of cpsdForCorrelatedInputs is no longer
%   <a href="matlab:help classes\tests\ssm\@test_ssm_cpsdForCorrelatedInputs\test_pzmodel_ao_input">classes\tests\ssm\@test_ssm_cpsdForCorrelatedInputs\test_pzmodel_ao_input</a>            -  tests the cpsdForCorrelatedInputs method with an input AOs and pzmodels.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_cpsdForCorrelatedInputs\test_ssm_cpsdForCorrelatedInputs">classes\tests\ssm\@test_ssm_cpsdForCorrelatedInputs\test_ssm_cpsdForCorrelatedInputs</a> - % Make a test object
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ssm\@test_ssm_psd   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ssm\@test_ssm_psd\test_ao_input">classes\tests\ssm\@test_ssm_psd\test_ao_input</a>           -  tests the psd method with an input AOs.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_psd\test_getInfo">classes\tests\ssm\@test_ssm_psd\test_getInfo</a>            -  tests getting the method info from the method.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_psd\test_preserves_plotinfo">classes\tests\ssm\@test_ssm_psd\test_preserves_plotinfo</a> -  override because the output of psd is no longer
%   <a href="matlab:help classes\tests\ssm\@test_ssm_psd\test_psd_input">classes\tests\ssm\@test_ssm_psd\test_psd_input</a>          -  tests the cpsd method with an input PSD matrix.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_psd\test_ssm_psd">classes\tests\ssm\@test_ssm_psd\test_ssm_psd</a>            - % Make a test object
%   <a href="matlab:help classes\tests\ssm\@test_ssm_psd\test_variance_input">classes\tests\ssm\@test_ssm_psd\test_variance_input</a>     -  tests the psd method with an input variance vector.
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ssm\@test_ssm_reorganize   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ssm\@test_ssm_reorganize\test_getInfo">classes\tests\ssm\@test_ssm_reorganize\test_getInfo</a>            -  tests getting the method info from the method.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_reorganize\test_preserves_plotinfo">classes\tests\ssm\@test_ssm_reorganize\test_preserves_plotinfo</a> -  override because ssm objects don't do anything
%   <a href="matlab:help classes\tests\ssm\@test_ssm_reorganize\test_ssm_reorganize">classes\tests\ssm\@test_ssm_reorganize\test_ssm_reorganize</a>     - % Make a test object
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ssm\@test_ssm_simulate   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ssm\@test_ssm_simulate\test_ao_input">classes\tests\ssm\@test_ssm_simulate\test_ao_input</a>           -  tests the simulate method with an input AO.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_simulate\test_covariance_input">classes\tests\ssm\@test_ssm_simulate\test_covariance_input</a>   -  tests the simulate method with an input covariance
%   <a href="matlab:help classes\tests\ssm\@test_ssm_simulate\test_cpsd_input">classes\tests\ssm\@test_ssm_simulate\test_cpsd_input</a>         -  tests the simulate method with an input cpsd
%   <a href="matlab:help classes\tests\ssm\@test_ssm_simulate\test_getInfo">classes\tests\ssm\@test_ssm_simulate\test_getInfo</a>            -  tests getting the method info from the method.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_simulate\test_preserves_plotinfo">classes\tests\ssm\@test_ssm_simulate\test_preserves_plotinfo</a> -  override because the output of simulate is no longer
%   <a href="matlab:help classes\tests\ssm\@test_ssm_simulate\test_ssm_simulate">classes\tests\ssm\@test_ssm_simulate\test_ssm_simulate</a>       - % Make a test object
%
%
%%%%%%%%%%%%%%%%%%%%   path: classes\tests\ssm\@test_ssm_subsParameters   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help classes\tests\ssm\@test_ssm_subsParameters\test_getInfo">classes\tests\ssm\@test_ssm_subsParameters\test_getInfo</a>            -  tests getting the method info from the method.
%   <a href="matlab:help classes\tests\ssm\@test_ssm_subsParameters\test_preserves_plotinfo">classes\tests\ssm\@test_ssm_subsParameters\test_preserves_plotinfo</a> -  override because ssm objects don't do anything
%   <a href="matlab:help classes\tests\ssm\@test_ssm_subsParameters\test_ssm_subsParameters">classes\tests\ssm\@test_ssm_subsParameters\test_ssm_subsParameters</a> - % Make a test object
%   <a href="matlab:help classes\tests\ssm\@test_ssm_subsParameters\test_substitute">classes\tests\ssm\@test_ssm_subsParameters\test_substitute</a>         -  tests substituting parameters.
%
%
%%%%%%%%%%%%%%%%%%%%   path: examples   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help examples\ao_class_test">examples\ao_class_test</a>           - % AO_CLASS_TEST Test analysis object class
%   <a href="matlab:help examples\example_1">examples\example_1</a>               -  A test script for the AO implementation.
%   <a href="matlab:help examples\example_2">examples\example_2</a>               -  test script for the AO implementation.
%   <a href="matlab:help examples\make_test_ascii_file">examples\make_test_ascii_file</a>    -  a test ascii file with the name 'name.txt' containing a time-series
%   <a href="matlab:help examples\run_tests">examples\run_tests</a>               -  many tests
%   <a href="matlab:help examples\test_LTPDAprefs_cl_set">examples\test_LTPDAprefs_cl_set</a>  - Check that direct setting of LTPDA preferences is working.
%   <a href="matlab:help examples\test_abs">examples\test_abs</a>                -  abs() operator for AOs.
%   <a href="matlab:help examples\test_acos">examples\test_acos</a>               -  test acos() operator for analysis objects.
%   <a href="matlab:help examples\test_ao_1">examples\test_ao_1</a>               -  functionality of analysis objects.
%   <a href="matlab:help examples\test_ao_bilinfit">examples\test_ao_bilinfit</a>        -  ao/bilinfit for:
%   <a href="matlab:help examples\test_ao_cohere">examples\test_ao_cohere</a>          -  ao.cohere functionality.
%   <a href="matlab:help examples\test_ao_consolidate">examples\test_ao_consolidate</a>     -  tests the consolidate method of the AO class.
%   <a href="matlab:help examples\test_ao_cov">examples\test_ao_cov</a>             -  test cov() operator for analysis objects.
%   <a href="matlab:help examples\test_ao_cpsd">examples\test_ao_cpsd</a>            -  ao.cpsd functionality.
%   <a href="matlab:help examples\test_ao_detrend">examples\test_ao_detrend</a>         -  tests the detrend method of the AO class.
%   <a href="matlab:help examples\test_ao_downsample">examples\test_ao_downsample</a>      -  tests downsample method of AO class.
%   <a href="matlab:help examples\test_ao_fftfilt">examples\test_ao_fftfilt</a>         -  script for ao/fftfilt
%   <a href="matlab:help examples\test_ao_find">examples\test_ao_find</a>            -  test the find function of AO class.
%   <a href="matlab:help examples\test_ao_freq_series">examples\test_ao_freq_series</a>     - % Test script for frequency series AO constructor
%   <a href="matlab:help examples\test_ao_fromVals">examples\test_ao_fromVals</a>        -  construct AOs in different ways
%   <a href="matlab:help examples\test_ao_gapfilling">examples\test_ao_gapfilling</a>      -  test script for the ao.gapfilling method
%   <a href="matlab:help examples\test_ao_heterodyne">examples\test_ao_heterodyne</a>      - Tests for ao/heterodyne
%   <a href="matlab:help examples\test_ao_hist">examples\test_ao_hist</a>            -  tests the histogram function of the AO class.
%   <a href="matlab:help examples\test_ao_interp">examples\test_ao_interp</a>          -  tests the interp method of AO class.
%   <a href="matlab:help examples\test_ao_join_ts">examples\test_ao_join_ts</a>         -  test then join method of AO class for tsdata objects.
%   <a href="matlab:help examples\test_ao_lincom">examples\test_ao_lincom</a>          -  script for ao/lincom
%   <a href="matlab:help examples\test_ao_linedetect">examples\test_ao_linedetect</a>      - Tests for ao/linedetect
%   <a href="matlab:help examples\test_ao_linfit">examples\test_ao_linfit</a>          -  tests the linfit method of the AO class.
%   <a href="matlab:help examples\test_ao_lscov">examples\test_ao_lscov</a>           -  tests the lscov method of the AO class.
%   <a href="matlab:help examples\test_ao_plot">examples\test_ao_plot</a>            -  cases for ao/plot
%   <a href="matlab:help examples\test_ao_polyfit">examples\test_ao_polyfit</a>         -  tests the polyfit method of the AO class.
%   <a href="matlab:help examples\test_ao_pwelch">examples\test_ao_pwelch</a>          -  ao.pwelch functionality.
%   <a href="matlab:help examples\test_ao_removeVal">examples\test_ao_removeVal</a>       -  ao/removeVal for:
%   <a href="matlab:help examples\test_ao_rotate">examples\test_ao_rotate</a>          - % test the rotate method
%   <a href="matlab:help examples\test_ao_select">examples\test_ao_select</a>          -  test the select function of AO class.
%   <a href="matlab:help examples\test_ao_spikecleaning">examples\test_ao_spikecleaning</a>   -  test script for the spikecleaning method
%   <a href="matlab:help examples\test_ao_split">examples\test_ao_split</a>           -  AO split method.
%   <a href="matlab:help examples\test_ao_split_frequency">examples\test_ao_split_frequency</a> -  splitting a frequency-series AO by frequency using the split method.
%   <a href="matlab:help examples\test_ao_tfe">examples\test_ao_tfe</a>             -  ao.tfe functionality.
%   <a href="matlab:help examples\test_ao_timeaverage">examples\test_ao_timeaverage</a>     - % create a tsdata ao
%   <a href="matlab:help examples\test_ao_tsfcn">examples\test_ao_tsfcn</a>           -  AO constructor for TS function
%   <a href="matlab:help examples\test_ao_upsample">examples\test_ao_upsample</a>        -  tests upsample method of AO class.
%   <a href="matlab:help examples\test_ao_waveform">examples\test_ao_waveform</a>        -  test the waveform constructor for AO class.
%   <a href="matlab:help examples\test_ao_xfit">examples\test_ao_xfit</a>            - Tests for xfit
%   <a href="matlab:help examples\test_asin">examples\test_asin</a>               -  test asin() operator for analysis objects.
%   <a href="matlab:help examples\test_atan">examples\test_atan</a>               -  test atan() operator for analysis objects.
%   <a href="matlab:help examples\test_collection_history">examples\test_collection_history</a> - %%
%   <a href="matlab:help examples\test_collection_plot">examples\test_collection_plot</a>    - %% Plot 4 AOs
%   <a href="matlab:help examples\test_conj">examples\test_conj</a>               - Tests conj() operator for AOs.
%   <a href="matlab:help examples\test_cos">examples\test_cos</a>                -  test cos() operator for analysis objects.
%   <a href="matlab:help examples\test_ctranspose">examples\test_ctranspose</a>         -  ctranspose() operator for AOs.
%   <a href="matlab:help examples\test_det">examples\test_det</a>                -  ao.det method.
%   <a href="matlab:help examples\test_diag">examples\test_diag</a>               - Tests ao.diag method.
%   <a href="matlab:help examples\test_eig">examples\test_eig</a>                - Tests ao.eig method.
%   <a href="matlab:help examples\test_exp">examples\test_exp</a>                -  test exp() operator for analysis objects.
%   <a href="matlab:help examples\test_fft">examples\test_fft</a>                -  fft() operator for AOs.
%   <a href="matlab:help examples\test_filter_edges">examples\test_filter_edges</a>       -  tests if filter function correctly stores the state
%   <a href="matlab:help examples\test_fir_filter">examples\test_fir_filter</a>         -  test FIR filtering of AO class.
%   <a href="matlab:help examples\test_iir_filtering">examples\test_iir_filtering</a>      - A test script to test some IIR filtering commands.
%   <a href="matlab:help examples\test_inv">examples\test_inv</a>                - Tests ao.inv method.
%   <a href="matlab:help examples\test_iplot">examples\test_iplot</a>              -  test some aspects of iplot.
%   <a href="matlab:help examples\test_iplot_2">examples\test_iplot_2</a>            - %% When cdata contains a matrix
%   <a href="matlab:help examples\test_iplot_3">examples\test_iplot_3</a>            - Some iplot tests using the plotinfo
%   <a href="matlab:help examples\test_isequal">examples\test_isequal</a>            - %% This script test all parts of ltpda_obj/isequal
%   <a href="matlab:help examples\test_lincom_cdata">examples\test_lincom_cdata</a>       -  script for ao.lincom.
%   <a href="matlab:help examples\test_list">examples\test_list</a>               - A list of tests for running and installing in the toolbox as examples.
%   <a href="matlab:help examples\test_log10">examples\test_log10</a>              -  test log10() operator for analysis objects.
%   <a href="matlab:help examples\test_log_ln">examples\test_log_ln</a>             -  test log() operator for analysis objects.
%   <a href="matlab:help examples\test_lpsd">examples\test_lpsd</a>               - A test script for the AO implementation of lpsd.
%   <a href="matlab:help examples\test_ltpda_cohere">examples\test_ltpda_cohere</a>       -  ao.cohere functionality.
%   <a href="matlab:help examples\test_ltpda_cpsd">examples\test_ltpda_cpsd</a>         -  ao.cpsd functionality.
%   <a href="matlab:help examples\test_ltpda_lincom">examples\test_ltpda_lincom</a>       -  script for ao.lincom.
%   <a href="matlab:help examples\test_ltpda_linedetect">examples\test_ltpda_linedetect</a>   -  test script for ao.linedetect.
%   <a href="matlab:help examples\test_ltpda_ltfe">examples\test_ltpda_ltfe</a>         -  test the ao.ltfe method.
%   <a href="matlab:help examples\test_ltpda_nfest">examples\test_ltpda_nfest</a>        -  tests the ltpda_nfest noise-floor estimator.
%   <a href="matlab:help examples\test_ltpda_polydetrend">examples\test_ltpda_polydetrend</a>  -  script for ao.detrend
%   <a href="matlab:help examples\test_ltpda_pwelch">examples\test_ltpda_pwelch</a>       -  the LTPDA wrapping of pwelch.
%   <a href="matlab:help examples\test_ltpda_tfe">examples\test_ltpda_tfe</a>          -  ao.tfe functionality.
%   <a href="matlab:help examples\test_ltpda_xcorr">examples\test_ltpda_xcorr</a>        -  tests the cross-correlation function ltpda_xcorr.
%   <a href="matlab:help examples\test_matrix_plot">examples\test_matrix_plot</a>        - %% Plot 2x1
%   <a href="matlab:help examples\test_mean">examples\test_mean</a>               -  test mean() operator for analysis objects.
%   <a href="matlab:help examples\test_median">examples\test_median</a>             -  test median() operator for analysis objects.
%   <a href="matlab:help examples\test_mfir_class">examples\test_mfir_class</a>         -  tests run on mfir class.
%   <a href="matlab:help examples\test_miir_class">examples\test_miir_class</a>         -  the constructor for miir objects.
%   <a href="matlab:help examples\test_miir_filter">examples\test_miir_filter</a>        -  the ao/filter function for the miir class.
%   <a href="matlab:help examples\test_miir_filtfilt">examples\test_miir_filtfilt</a>      -  the filtfilt function for the miir class.
%   <a href="matlab:help examples\test_miir_redesign">examples\test_miir_redesign</a>      - When the filter command is given a standard filter designed for a
%   <a href="matlab:help examples\test_minus">examples\test_minus</a>              - A test script for the AO minus.
%   <a href="matlab:help examples\test_mpower">examples\test_mpower</a>             - A test script for the AO mpower.
%   <a href="matlab:help examples\test_norm">examples\test_norm</a>               -  ao.norm method.
%   <a href="matlab:help examples\test_plist_string">examples\test_plist_string</a>       - Tests string method of plist class.
%   <a href="matlab:help examples\test_plus">examples\test_plus</a>               - A test script for the AO plus.
%   <a href="matlab:help examples\test_pzm_to_fir">examples\test_pzm_to_fir</a>         -  tests converting pzmodel into an FIR filter
%   <a href="matlab:help examples\test_pzmodel_class">examples\test_pzmodel_class</a>      -  script for pzmodel class.
%   <a href="matlab:help examples\test_rdivide">examples\test_rdivide</a>            - A test script for the AO ./ .
%   <a href="matlab:help examples\test_recreate_1">examples\test_recreate_1</a>         - Testing features of 'recreate from history'.
%   <a href="matlab:help examples\test_resample">examples\test_resample</a>           -  resample function for AOs.
%   <a href="matlab:help examples\test_simulated_data">examples\test_simulated_data</a>     -  making simulated data AOs.
%   <a href="matlab:help examples\test_sin">examples\test_sin</a>                -  test sin() operator for analysis objects.
%   <a href="matlab:help examples\test_smodel_double">examples\test_smodel_double</a>      -  tests the double method of the SMODEL class.
%   <a href="matlab:help examples\test_smodel_eval">examples\test_smodel_eval</a>        -  tests the eval method of the SMODEL class.
%   <a href="matlab:help examples\test_sqrt">examples\test_sqrt</a>               -  test sqrt() operator for analysis objects.
%   <a href="matlab:help examples\test_std">examples\test_std</a>                -  test std() operator for analysis objects.
%   <a href="matlab:help examples\test_svd">examples\test_svd</a>                -  ao.svd method.
%   <a href="matlab:help examples\test_tan">examples\test_tan</a>                -  test tan() operator for analysis objects.
%   <a href="matlab:help examples\test_times">examples\test_times</a>              - A test script for the AO times.
%   <a href="matlab:help examples\test_transpose">examples\test_transpose</a>          -  transpose() operator for AOs.
%   <a href="matlab:help examples\test_tsdata_class">examples\test_tsdata_class</a>       -  script for tsdata class
%   <a href="matlab:help examples\test_var">examples\test_var</a>                -  test var() operator for analysis objects.
%   <a href="matlab:help examples\test_xml_complex">examples\test_xml_complex</a>        -  reading and writing complex data to XML file.
%   <a href="matlab:help examples\testing_xml">examples\testing_xml</a>             -  saving AO to xml
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\ao   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\ao\ao_model_gaussian_pulse">m\built_in_models\ao\ao_model_gaussian_pulse</a>       -  constructs a Gaussian pulse-function time-series
%   <a href="matlab:help m\built_in_models\ao\ao_model_notch">m\built_in_models\ao\ao_model_notch</a>                -  constructs a sine-wave time-series
%   <a href="matlab:help m\built_in_models\ao\ao_model_oscillator_sine">m\built_in_models\ao\ao_model_oscillator_sine</a>      -  built-in model of class ao called oscillator_sine
%   <a href="matlab:help m\built_in_models\ao\ao_model_oscillator_step">m\built_in_models\ao\ao_model_oscillator_step</a>      -  built-in model of class ao called oscillator_step
%   <a href="matlab:help m\built_in_models\ao\ao_model_padded_sine">m\built_in_models\ao\ao_model_padded_sine</a>          -  built-in model of class ao called padded_sine
%   <a href="matlab:help m\built_in_models\ao\ao_model_pulsetrain">m\built_in_models\ao\ao_model_pulsetrain</a>           -  constructs a pulse-train time-series from specified
%   <a href="matlab:help m\built_in_models\ao\ao_model_retrieve_in_timespan">m\built_in_models\ao\ao_model_retrieve_in_timespan</a> -  built-in model of class ao called retrieve_in_timespan
%   <a href="matlab:help m\built_in_models\ao\ao_model_sinewave">m\built_in_models\ao\ao_model_sinewave</a>             -  constructs a sine-wave time-series
%   <a href="matlab:help m\built_in_models\ao\ao_model_squarewave">m\built_in_models\ao\ao_model_squarewave</a>           -  constructs a square-wave time-series
%   <a href="matlab:help m\built_in_models\ao\ao_model_step">m\built_in_models\ao\ao_model_step</a>                 -  constructs a step-function time-series
%   <a href="matlab:help m\built_in_models\ao\ao_model_whitenoise">m\built_in_models\ao\ao_model_whitenoise</a>           -  constructs a known white-noise time-series
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\mfh   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\mfh\mfh_model_delay_ts">m\built_in_models\mfh\mfh_model_delay_ts</a>            -  constructs differentiated time-series
%   <a href="matlab:help m\built_in_models\mfh\mfh_model_delayed_diff_ts">m\built_in_models\mfh\mfh_model_delayed_diff_ts</a>     -  constructs delayed differentiated time-series
%   <a href="matlab:help m\built_in_models\mfh\mfh_model_delayed_filtered_ts">m\built_in_models\mfh\mfh_model_delayed_filtered_ts</a> -  constructs filtered time-series
%   <a href="matlab:help m\built_in_models\mfh\mfh_model_diff_ts">m\built_in_models\mfh\mfh_model_diff_ts</a>             -  constructs differentiated time-series
%   <a href="matlab:help m\built_in_models\mfh\mfh_model_fft_signals">m\built_in_models\mfh\mfh_model_fft_signals</a>         -  constructs the FFT of time-series
%   <a href="matlab:help m\built_in_models\mfh\mfh_model_loglikelihood">m\built_in_models\mfh\mfh_model_loglikelihood</a>       -  constructs a log-likelihood function
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\plist   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\plist\plist_model_physical_constants">m\built_in_models\plist\plist_model_physical_constants</a> -  constructs a PLIST with physical constants.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\smodel   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\smodel\smodel_model_oscillator_fd_tf">m\built_in_models\smodel\smodel_model_oscillator_fd_tf</a> -  built-in model of class ao called oscillator_fd_tf
%   <a href="matlab:help m\built_in_models\smodel\smodel_model_oscillator_sine">m\built_in_models\smodel\smodel_model_oscillator_sine</a>  -  built-in model of class ao called oscillator_sine
%   <a href="matlab:help m\built_in_models\smodel\smodel_model_oscillator_step">m\built_in_models\smodel\smodel_model_oscillator_step</a>  -  built-in model of class ao called oscillator_step
%   <a href="matlab:help m\built_in_models\smodel\smodel_model_sinewave">m\built_in_models\smodel\smodel_model_sinewave</a>         -  built-in model of class ao called sinewave
%   <a href="matlab:help m\built_in_models\smodel\smodel_model_squarewave">m\built_in_models\smodel\smodel_model_squarewave</a>       -  built-in model of class ao called squarewave
%   <a href="matlab:help m\built_in_models\smodel\smodel_model_step">m\built_in_models\smodel\smodel_model_step</a>             - A built-in model of class ao called step
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\ssm   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\ssm\ssm_model_HARMONIC_OSC_1D">m\built_in_models\ssm\ssm_model_HARMONIC_OSC_1D</a> -  A statespace model of the HARMONIC OSCILLATOR 1D
%   <a href="matlab:help m\built_in_models\ssm\ssm_model_SIMPLE_PENDULUM">m\built_in_models\ssm\ssm_model_SIMPLE_PENDULUM</a> -  A statespace model of a simple pendulum.
%   <a href="matlab:help m\built_in_models\ssm\ssm_model_SMD">m\built_in_models\ssm\ssm_model_SMD</a>             -  A statespace model of the Spring-Mass-Damper system
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\ssm\tests\@test_ssm_model_HARMONIC_OSC_1D   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\ssm\tests\@test_ssm_model_HARMONIC_OSC_1D\test_ssm_model_HARMONIC_OSC_1D">m\built_in_models\ssm\tests\@test_ssm_model_HARMONIC_OSC_1D\test_ssm_model_HARMONIC_OSC_1D</a> -  runs tests for the ssm built-in model 'HARMONIC_OSC_1D'.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\ssm\tests\@test_ssm_model_SIMPLE_PENDULUM   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\ssm\tests\@test_ssm_model_SIMPLE_PENDULUM\test_ssm_model_SIMPLE_PENDULUM">m\built_in_models\ssm\tests\@test_ssm_model_SIMPLE_PENDULUM\test_ssm_model_SIMPLE_PENDULUM</a> -  runs tests for the ssm built-in model 'SIMPLE_PENDULUM'.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\ssm\tests\@test_ssm_model_SMD   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\ssm\tests\@test_ssm_model_SMD\test_ssm_model_SMD">m\built_in_models\ssm\tests\@test_ssm_model_SMD\test_ssm_model_SMD</a> -  runs tests for the ssm built-in model 'SMD'.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\test\ao\@ltpda_waveform_signals_utp   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\test\ao\@ltpda_waveform_signals_utp\ltpda_waveform_signals_utp">m\built_in_models\test\ao\@ltpda_waveform_signals_utp\ltpda_waveform_signals_utp</a> -  extends the converted built-in
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\test\ao\@test_ao_model_oscillator_sine   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\test\ao\@test_ao_model_oscillator_sine\test_ao_model_oscillator_sine">m\built_in_models\test\ao\@test_ao_model_oscillator_sine\test_ao_model_oscillator_sine</a> -  runs tests for the ao built-in model oscillator_sine.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\test\ao\@test_ao_model_oscillator_step   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\test\ao\@test_ao_model_oscillator_step\test_ao_model_oscillator_step">m\built_in_models\test\ao\@test_ao_model_oscillator_step\test_ao_model_oscillator_step</a> -  runs tests for the ao built-in model oscillator_step.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\test\ao\@test_ao_model_padded_sine   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\test\ao\@test_ao_model_padded_sine\test_ao_model_padded_sine">m\built_in_models\test\ao\@test_ao_model_padded_sine\test_ao_model_padded_sine</a> -  runs tests for the ao built-in model padded_sine.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\test\ao\@test_ao_model_retrieve_in_timespan   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\test\ao\@test_ao_model_retrieve_in_timespan\test_ao_model_retrieve_in_timespan">m\built_in_models\test\ao\@test_ao_model_retrieve_in_timespan\test_ao_model_retrieve_in_timespan</a> -  runs tests for the ao built-in model retrieve_in_timespan.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\test\ao\@test_ao_model_sinewave   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\test\ao\@test_ao_model_sinewave\test_ao_model_sinewave">m\built_in_models\test\ao\@test_ao_model_sinewave\test_ao_model_sinewave</a> -  runs tests for the AO built-in model
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\test\ao\@test_ao_model_squarewave   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\test\ao\@test_ao_model_squarewave\test_ao_model_squarewave">m\built_in_models\test\ao\@test_ao_model_squarewave\test_ao_model_squarewave</a> -  runs tests for the AO built-in model
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\test\ao\@test_ao_model_step   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\test\ao\@test_ao_model_step\test_ao_model_step">m\built_in_models\test\ao\@test_ao_model_step\test_ao_model_step</a> -  runs tests for the AO built-in model
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\test\ao\@test_ao_model_whitenoise   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\test\ao\@test_ao_model_whitenoise\test_ao_model_whitenoise">m\built_in_models\test\ao\@test_ao_model_whitenoise\test_ao_model_whitenoise</a> -  runs tests for the AO built-in model
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\test\smodel\@test_smodel_model_oscillator_fd_tf   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\test\smodel\@test_smodel_model_oscillator_fd_tf\test_smodel_model_oscillator_fd_tf">m\built_in_models\test\smodel\@test_smodel_model_oscillator_fd_tf\test_smodel_model_oscillator_fd_tf</a> -  runs tests for the smodel built-in model oscillator_fd_tf.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\test\smodel\@test_smodel_model_oscillator_sine   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\test\smodel\@test_smodel_model_oscillator_sine\test_smodel_model_oscillator_sine">m\built_in_models\test\smodel\@test_smodel_model_oscillator_sine\test_smodel_model_oscillator_sine</a> -  runs tests for the smodel built-in model oscillator_sine.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\test\smodel\@test_smodel_model_oscillator_step   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\test\smodel\@test_smodel_model_oscillator_step\test_smodel_model_oscillator_step">m\built_in_models\test\smodel\@test_smodel_model_oscillator_step\test_smodel_model_oscillator_step</a> -  runs tests for the smodel built-in model oscillator_step.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\test\smodel\@test_smodel_model_sinewave   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\test\smodel\@test_smodel_model_sinewave\test_smodel_model_sinewave">m\built_in_models\test\smodel\@test_smodel_model_sinewave\test_smodel_model_sinewave</a> -  runs tests for the smodel built-in model sinewave.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\test\smodel\@test_smodel_model_squarewave   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\test\smodel\@test_smodel_model_squarewave\test_smodel_model_squarewave">m\built_in_models\test\smodel\@test_smodel_model_squarewave\test_smodel_model_squarewave</a> -  runs tests for the smodel built-in model squarewave.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\test\smodel\@test_smodel_model_step   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\test\smodel\@test_smodel_model_step\test_smodel_model_step">m\built_in_models\test\smodel\@test_smodel_model_step\test_smodel_model_step</a> -  runs tests for the smodel built-in model step.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\test\ssm\@test_ssm_model_HARMONIC_OSC_1D   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\test\ssm\@test_ssm_model_HARMONIC_OSC_1D\test_ssm_model_HARMONIC_OSC_1D">m\built_in_models\test\ssm\@test_ssm_model_HARMONIC_OSC_1D\test_ssm_model_HARMONIC_OSC_1D</a> -  runs tests for the ao built-in model HARMONIC_OSC_1D.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\built_in_models\test\ssm\@test_ssm_model_SMD   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\built_in_models\test\ssm\@test_ssm_model_SMD\test_ssm_model_SMD">m\built_in_models\test\ssm\@test_ssm_model_SMD\test_ssm_model_SMD</a> -  runs tests for the ao built-in model SMD.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\etc   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\etc\LTPDAprintf">m\etc\LTPDAprintf</a>      - % Process the text string
%   m\etc\LTPDAstartup     - (No help available)
%   <a href="matlab:help m\etc\gitHash">m\etc\gitHash</a>          -  reads and returns the git hash for this installation of LTPDA.
%   m\etc\ltpda_finish     - (No help available)
%   <a href="matlab:help m\etc\ltpda_mode">m\etc\ltpda_mode</a>       - Returns the current operating mode of LTPDA.
%   <a href="matlab:help m\etc\ltpda_run_method">m\etc\ltpda_run_method</a> -  runs an LTPDA method inside a script environment to
%   <a href="matlab:help m\etc\ltpda_startup">m\etc\ltpda_startup</a>    - This is the startup file for ltpda. It should be run once in the MATLAB
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\etc\cprintf   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\etc\cprintf\cprintf">m\etc\cprintf\cprintf</a> -  displays styled formatted text in the Command Window
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\etc\matlabmultinest\Examples   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\etc\matlabmultinest\Examples\example_eggbox">m\etc\matlabmultinest\Examples\example_eggbox</a>                                 - example: an eggbox function
%   <a href="matlab:help m\etc\matlabmultinest\Examples\example_line">m\etc\matlabmultinest\Examples\example_line</a>                                   - example: (from hogg et al., 1008.4686)
%   <a href="matlab:help m\etc\matlabmultinest\Examples\example_line_with_outliers">m\etc\matlabmultinest\Examples\example_line_with_outliers</a>                     - example: (from hogg et al., 1008.4686)
%   <a href="matlab:help m\etc\matlabmultinest\Examples\example_line_with_outliers_and_marginalization">m\etc\matlabmultinest\Examples\example_line_with_outliers_and_marginalization</a> - example: (from hogg et al., 1008.4686)
%   <a href="matlab:help m\etc\matlabmultinest\Examples\example_sinusoid">m\etc\matlabmultinest\Examples\example_sinusoid</a>                               - example: estimate amplitude and initial phase of a
%   <a href="matlab:help m\etc\matlabmultinest\Examples\example_triangle">m\etc\matlabmultinest\Examples\example_triangle</a>                               - example: a triangular likelihood function
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\etc\matlabmultinest\NSMain   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\etc\matlabmultinest\NSMain\calc_ellipsoid">m\etc\matlabmultinest\NSMain\calc_ellipsoid</a>                   - (No help available)
%   <a href="matlab:help m\etc\matlabmultinest\NSMain\draw_from_ellipsoid">m\etc\matlabmultinest\NSMain\draw_from_ellipsoid</a>              - function pnts = draw_from_ellipsoid(B, mu, N )
%   <a href="matlab:help m\etc\matlabmultinest\NSMain\draw_mcmc">m\etc\matlabmultinest\NSMain\draw_mcmc</a>                        - function [sample, logL] = draw_mcmc(livepoints, cholmat, logLmin, ...
%   <a href="matlab:help m\etc\matlabmultinest\NSMain\draw_multinest">m\etc\matlabmultinest\NSMain\draw_multinest</a>                   - function [sample, logL] = draw_multinest(fracvol, Bs, mus, ...
%   <a href="matlab:help m\etc\matlabmultinest\NSMain\in_ellipsoids">m\etc\matlabmultinest\NSMain\in_ellipsoids</a>                    - function N = in_ellipsoids(pnt, Bs, mus)
%   <a href="matlab:help m\etc\matlabmultinest\NSMain\logplus">m\etc\matlabmultinest\NSMain\logplus</a>                          - (No help available)
%   <a href="matlab:help m\etc\matlabmultinest\NSMain\mchol">m\etc\matlabmultinest\NSMain\mchol</a>                            - (No help available)
%   <a href="matlab:help m\etc\matlabmultinest\NSMain\nest2pos">m\etc\matlabmultinest\NSMain\nest2pos</a>                         - Convert a set of nested sample chains (each containing the same
%   <a href="matlab:help m\etc\matlabmultinest\NSMain\nested_sampler">m\etc\matlabmultinest\NSMain\nested_sampler</a>                   - function [logZ, nest_samples, post_samples] = nested_sampler(data, ...
%   <a href="matlab:help m\etc\matlabmultinest\NSMain\optimal_ellipsoids">m\etc\matlabmultinest\NSMain\optimal_ellipsoids</a>               - function [Bs, mus, VEs, ns] = optimal_ellipsoids(u, VS)
%   <a href="matlab:help m\etc\matlabmultinest\NSMain\plot_2d_livepoints_with_ellipses">m\etc\matlabmultinest\NSMain\plot_2d_livepoints_with_ellipses</a> - (No help available)
%   <a href="matlab:help m\etc\matlabmultinest\NSMain\rescale_parameters">m\etc\matlabmultinest\NSMain\rescale_parameters</a>               - scaled = rescale_parameters(prior, params)
%   <a href="matlab:help m\etc\matlabmultinest\NSMain\scale_parameters">m\etc\matlabmultinest\NSMain\scale_parameters</a>                 - scaled = scale_parameters(prior, params)
%   <a href="matlab:help m\etc\matlabmultinest\NSMain\split_ellipsoid">m\etc\matlabmultinest\NSMain\split_ellipsoid</a>                  - function [u1, u2, VE1, VE2, nosplit] = split_ellipsiod(u, VS)
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\etc\matlabmultinest\Unsorted   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\etc\matlabmultinest\Unsorted\draw_from_torus">m\etc\matlabmultinest\Unsorted\draw_from_torus</a>          - function pnts = draw_from_torus(a, b,  N )
%   <a href="matlab:help m\etc\matlabmultinest\Unsorted\eggbox_model">m\etc\matlabmultinest\Unsorted\eggbox_model</a>             - An "eggbox"-like model with N dimensions
%   <a href="matlab:help m\etc\matlabmultinest\Unsorted\ellipsoid_2d">m\etc\matlabmultinest\Unsorted\ellipsoid_2d</a>             - (No help available)
%   <a href="matlab:help m\etc\matlabmultinest\Unsorted\ellipsoid_3d">m\etc\matlabmultinest\Unsorted\ellipsoid_3d</a>             - (No help available)
%   <a href="matlab:help m\etc\matlabmultinest\Unsorted\hist2">m\etc\matlabmultinest\Unsorted\hist2</a>                    - function histmat  = hist2(x, y, xedges, yedges)
%   <a href="matlab:help m\etc\matlabmultinest\Unsorted\line_model">m\etc\matlabmultinest\Unsorted\line_model</a>               - y = line_model(x, parnames, parvals)
%   <a href="matlab:help m\etc\matlabmultinest\Unsorted\logL_gaussian">m\etc\matlabmultinest\Unsorted\logL_gaussian</a>            -  = logL_gaussian(data, model, parnames, parvals)
%   <a href="matlab:help m\etc\matlabmultinest\Unsorted\logL_mixture_gaussian">m\etc\matlabmultinest\Unsorted\logL_mixture_gaussian</a>    -  = logL_mixture_gaussian(data, model, parnames, parvals)
%   <a href="matlab:help m\etc\matlabmultinest\Unsorted\logL_model_likelihood">m\etc\matlabmultinest\Unsorted\logL_model_likelihood</a>    - check whether model is a string or function handle
%   <a href="matlab:help m\etc\matlabmultinest\Unsorted\logt">m\etc\matlabmultinest\Unsorted\logt</a>                     - (No help available)
%   <a href="matlab:help m\etc\matlabmultinest\Unsorted\posteriors">m\etc\matlabmultinest\Unsorted\posteriors</a>               - function posteriors(post_samples, wp)
%   <a href="matlab:help m\etc\matlabmultinest\Unsorted\readdata_line">m\etc\matlabmultinest\Unsorted\readdata_line</a>            - (No help available)
%   <a href="matlab:help m\etc\matlabmultinest\Unsorted\sinusoid_model">m\etc\matlabmultinest\Unsorted\sinusoid_model</a>           - function y = sinusoid_model(t, parnames, parvals)
%   <a href="matlab:help m\etc\matlabmultinest\Unsorted\test_draw_from_ellipsoid">m\etc\matlabmultinest\Unsorted\test_draw_from_ellipsoid</a> - script to test draw from ellipsoid
%   <a href="matlab:help m\etc\matlabmultinest\Unsorted\test_optimal_ellipsoids">m\etc\matlabmultinest\Unsorted\test_optimal_ellipsoids</a>  - script to test optimal_ellipsoids.m program
%   <a href="matlab:help m\etc\matlabmultinest\Unsorted\triangle_model">m\etc\matlabmultinest\Unsorted\triangle_model</a>           - check that parnames and parvals have the same length
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\etc\shadedErrorBar   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\etc\shadedErrorBar\shadedErrorBar">m\etc\shadedErrorBar\shadedErrorBar</a> - function H=shadedErrorBar(x,y,errBar,lineProps,transparent)
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\gui\@jcontrol   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\gui\@jcontrol\ancestor">m\gui\@jcontrol\ancestor</a>   -  function overloaded as JCONTROL method
%   <a href="matlab:help m\gui\@jcontrol\close">m\gui\@jcontrol\close</a>      -  methods overloaded for JCONTROL objects
%   <a href="matlab:help m\gui\@jcontrol\delete">m\gui\@jcontrol\delete</a>     -  method overloaded for the JCONTROL class
%   <a href="matlab:help m\gui\@jcontrol\get">m\gui\@jcontrol\get</a>        -  method overloaded for JCONTROL class
%   <a href="matlab:help m\gui\@jcontrol\getappdata">m\gui\@jcontrol\getappdata</a> -  function overloaded for JCONTROL class
%   <a href="matlab:help m\gui\@jcontrol\isappdata">m\gui\@jcontrol\isappdata</a>  -  function oveloaded for the JCONTROL class
%   <a href="matlab:help m\gui\@jcontrol\jcontrol">m\gui\@jcontrol\jcontrol</a>   -  constructor for JCONTROL class
%   <a href="matlab:help m\gui\@jcontrol\rmappdata">m\gui\@jcontrol\rmappdata</a>  -  function oveloaded for the JCONTROL class
%   <a href="matlab:help m\gui\@jcontrol\set">m\gui\@jcontrol\set</a>        -  method overloaded for JCONTROL class
%   <a href="matlab:help m\gui\@jcontrol\setappdata">m\gui\@jcontrol\setappdata</a> -  function overloaded for JCONTROL class
%   <a href="matlab:help m\gui\@jcontrol\subsasgn">m\gui\@jcontrol\subsasgn</a>   -  method overloaded for JCONTROL class
%   <a href="matlab:help m\gui\@jcontrol\subsref">m\gui\@jcontrol\subsref</a>    -  method overloaded for jcontrol class
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\gui\@jcontrol\private   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\gui\@jcontrol\private\VisibleProperty">m\gui\@jcontrol\private\VisibleProperty</a> -  - helper function for JCONTROL methods
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\gui\pzmodel_designer   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\gui\pzmodel_designer\pzmodel_helper">m\gui\pzmodel_designer\pzmodel_helper</a> - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\gui\quicklook   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\gui\quicklook\ltpdaquicklook">m\gui\quicklook\ltpdaquicklook</a> -  allows the user to quicklook LTPDA objects.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\gui\specwin_viewer   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\gui\specwin_viewer\ltpda_specwin_viewer_build_window">m\gui\specwin_viewer\ltpda_specwin_viewer_build_window</a> - Function to build the window and display it.
%   <a href="matlab:help m\gui\specwin_viewer\ltpda_specwin_viewer_close">m\gui\specwin_viewer\ltpda_specwin_viewer_close</a>        - Callback executed when the GUI is closed
%   <a href="matlab:help m\gui\specwin_viewer\ltpda_specwin_viewer_wintype">m\gui\specwin_viewer\ltpda_specwin_viewer_wintype</a>      - Callback executed when the user selects a window
%   <a href="matlab:help m\gui\specwin_viewer\specwin_viewer">m\gui\specwin_viewer\specwin_viewer</a>                    -  allows the user to explore spectral windows.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\helper   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\helper\addHistoryStep">m\helper\addHistoryStep</a>        -  Adds a history step of a non LTPDA method to  object with history.
%   <a href="matlab:help m\helper\generateModelTechNote">m\helper\generateModelTechNote</a> - % Header
%   <a href="matlab:help m\helper\keys">m\helper\keys</a>                  -  prints parameter list keys to the terminal.
%   <a href="matlab:help m\helper\mc">m\helper\mc</a>                    - A function to properly clear MATLAB memory for LTPDA.
%
%
%%%%%%%%%%%%%%%%%%%%   path: m\sigproc\frequency_domain   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help m\sigproc\frequency_domain\ltpda_spsd">m\sigproc\frequency_domain\ltpda_spsd</a> -  smooths a spectrum.
%   <a href="matlab:help m\sigproc\frequency_domain\phasetrack">m\sigproc\frequency_domain\phasetrack</a> - % Check if this is a call for parameters, the CVS version string
%
%
%%%%%%%%%%%%%%%%%%%%   path: src   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help src\compileAll">src\compileAll</a> -  all necessary mex files.
%
%
%%%%%%%%%%%%%%%%%%%%   path: src\ltpda_dft   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help src\ltpda_dft\compile">src\ltpda_dft\compile</a>             -  package within MATLAB
%   <a href="matlab:help src\ltpda_dft\ltpda_dft">src\ltpda_dft\ltpda_dft</a>           -  computes the DFT of a signal at one frequency.
%   src\ltpda_dft\polyregz            - (No help available)
%   <a href="matlab:help src\ltpda_dft\test_ltpda_lpsd_new">src\ltpda_dft\test_ltpda_lpsd_new</a> - function test_ltpda_lpsd_new()
%
%
%%%%%%%%%%%%%%%%%%%%   path: src\ltpda_polyreg   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help src\ltpda_polyreg\compile">src\ltpda_polyreg\compile</a>            -  package within MATLAB
%   <a href="matlab:help src\ltpda_polyreg\ltpda_polyreg">src\ltpda_polyreg\ltpda_polyreg</a>      -  detrends an input vector with a given order.
%   <a href="matlab:help src\ltpda_polyreg\test_ltpda_polyreg">src\ltpda_polyreg\test_ltpda_polyreg</a> - function test_ltpda_polydetrend()
%
%
%%%%%%%%%%%%%%%%%%%%   path: src\ltpda_smoother   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help src\ltpda_smoother\compile">src\ltpda_smoother\compile</a>        -  package within MATLAB
%   <a href="matlab:help src\ltpda_smoother\ltpda_smoother">src\ltpda_smoother\ltpda_smoother</a> -  A mex file to compute a running smoothing filter.
%   <a href="matlab:help src\ltpda_smoother\test_mnfest">src\ltpda_smoother\test_mnfest</a>    - % Create test data
%
%
%%%%%%%%%%%%%%%%%%%%   path: src\ltpda_ssmsim   %%%%%%%%%%%%%%%%%%%%
%
%   <a href="matlab:help src\ltpda_ssmsim\compile">src\ltpda_ssmsim\compile</a>           -  package within MATLAB
%   src\ltpda_ssmsim\do_a_run          - (No help available)
%   src\ltpda_ssmsim\do_a_run_mat      - (No help available)
%   <a href="matlab:help src\ltpda_ssmsim\ltpda_ssmsim">src\ltpda_ssmsim\ltpda_ssmsim</a>      -  A mex file to propagate an input signal for a given SS model.
%   src\ltpda_ssmsim\mat_ssmsim        - (No help available)
%   <a href="matlab:help src\ltpda_ssmsim\test_ltpda_ssmsim">src\ltpda_ssmsim\test_ltpda_ssmsim</a> - %
%   src\ltpda_ssmsim\validate_mex      - (No help available)
%
%
