tParameters.bEnableMailAlert = true;
tParameters.strCurrentDate   = GenerateCurrentDateString;


if( tParameters.bEnableMailAlert )
    %
    setpref('Internet', 'SMTP_Server', 'mail.dei.unipd.it');
    setpref('Internet', 'E_mail', 'my.email@dei.unipd.it');
    %
end;%


if( tParameters.bEnableMailAlert )
    %
    sendmail(                                                           ...
        'my.email@dei.unipd.it',                                        ...
        'Alert Message from Matlab: simulation concluded',              ...
        sprintf('Simulation started on %s is just terminated', tParameters.strCurrentDate) );
    %
end;%
