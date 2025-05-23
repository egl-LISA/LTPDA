function conn = connect(hostname, database, username, password)
% CONNECT Opens a connection to the given database.
%
% CALL:
%
%   conn = utils.mysql.connect(hostname, database, username, password)
%
% This function returns a Java java.sql.Connection object.
%
% On authetication error an utils:mysql:connect:AccessDenied exception
% is thrown. On other errors an utils:mysql:connect:ConnectionError
% exception is thrown.

% informative message
import utils.const.*
utils.helper.msg(msg.PROC1, 'connection to mysql://%s:3306/%s username=%s', ...
    hostname, database, username);

% connection credential
uri = sprintf('jdbc:mysql://%s/%s', hostname, database);
db = javaObject('com.mysql.cj.jdbc.Driver');
option_list = javaObject('java.util.Properties');
option_list.setProperty('user', username);
option_list.setProperty('password', password);

try
    % connect
    conn = db.connect(uri, option_list);
catch ex
    % exceptions handling in matlab sucks
    if strcmp(ex.identifier, 'MATLAB:Java:GenericException')
        % extract exception class and message
        lines = regexp(ex.message, '\n', 'split');
        p = strfind(lines{2}, ': ');
        id = lines{2}(1:p(1)-1);
        message = lines{2}(p(1)+2:end);
        % some notable cases
        switch id
            case 'java.sql.SQLException'
                throwAsCaller(MException('utils:mysql:connect:AccessDenied', ...
                    '### access denied: %s', message))
            case 'java.sql.SQLSyntaxErrorException'
                throwAsCaller(MException('utils:mysql:connect:ConnectionError', ...
                    '### connection error: %s. check database name', message))
            case 'com.mysql.cj.jdbc.exceptions.CommunicationsException'
                throwAsCaller(MException('utils:mysql:connect:ConnectionError', ...
                    '### connection error: %s. check hostname', message))
        end
        % user friendlier exception
        throwAsCaller(MException('utils:mysql:connect:ConnectionError', ...
            '### connection error: %s: %s', id, message))
    end
    rethrow(ex);
end
end