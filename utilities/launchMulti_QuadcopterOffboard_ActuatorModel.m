function launchMulti_QuadcopterOffboard_ActuatorModel
%

%   Copyright 2021 The MathWorks, Inc.

    project = simulinkproject;
    projectRoot = project.RootFolder;
    open_system(fullfile(projectRoot,'models','NO3_Multi_QuadcopterOffboard_Actuator.slx'));
end
