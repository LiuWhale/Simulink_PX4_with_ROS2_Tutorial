function launchMulti_QuadcopterOffboard_TakeoffModel
%

%   Copyright 2021 The MathWorks, Inc.

    project = simulinkproject;
    projectRoot = project.RootFolder;
    open_system(fullfile(projectRoot,'models','NO2_Multi_QuadcopterOffboard_Takeoff.slx'));
end
