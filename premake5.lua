if c_Standalone then
	include "StandAlone.lua"
else
	if c_IsTest and c_TestProjectName == "glm" then
		include "Test.lua"
	else
		include "glm.lua"
	end
end