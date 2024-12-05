function runAllTests()
%RUNALLTESTS Run all tests in project folder tests and display results
project = matlab.project.currentProject;
results = runtests(project.RootFolder+filesep+"tests");
assertSuccess(results)
end

