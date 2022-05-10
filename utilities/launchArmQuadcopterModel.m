function launchArmQuadcopterModel
%

%   Copyright 2021 The MathWorks, Inc.

    project = simulinkproject;
    projectRoot = project.RootFolder;
    open_system(fullfile(projectRoot,'models','NO1_ArmQuadcopter.slx'));
end
