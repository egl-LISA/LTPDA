% ISSUBMISSIONPLIST Checks if the input plist is a submission plist.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: ISSUBMISSIONPLIST Checks if the input plist is a submission
%              plist. This means that this method checks that the input
%              plist have only some of the following keys:
%              'hostname'
%              'database'
%              'username'
%              'password'
%              'experiment title'
%              'experiment description'
%              'analysis description'
%              'quantity'
%              'keywords'
%              'reference ids'
%              'additional comments'
%              'additional authors'
%              'binary'
%              'no dialog'
%
% CALL:        res = isSubmissionPlist(pl)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function res = isSubmissionPlist(pl)
  
  fields = {...
    'hostname', ...
    'database', ...
    'username', ...
    'password', ...
    'conn',     ...
    'experiment title', ...
    'experiment_title', ...
    'experiment description', ...
    'experiment_description', ...
    'analysis description', ...
    'analysis_description', ...
    'quantity', ...
    'keywords', ...
    'reference ids', ...
    'reference_ids', ...
    'additional comments', ...
    'additional_comments', ...
    'additional authors', ...
    'additional_authors', ...
    'binary', ...
    'sinfo filename', ...
    'sinfo_filename', ...
    'no dialog', ...
    'use selector'};
  
  if pl.nparams >= 1
    keys = lower(pl.getKeys());
    
    res = utils.helper.ismember(keys, fields);
    
    if all(res)
      res = true;
    else
      res = false;
    end
    
  else
    res = false;
  end
  
end
