
include "" .. %{wks.location} .. "/Projects/BellTower"

include "glm.lua"

project "glmTest"
	
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "on"
	
    	targetdir ( c_TargetDir )
    	objdir ( c_ObjDir )

	files
	{
		"test/**.h",
		"test/**.cpp"
	}
	
	includedirs
	{
		"test",

		"%{glmIncludeDirs.glm}"
	}

	links
	{
		"glm"
	}


	filter "system:windows"
		systemversion "latest"
		

	filter "configurations:Debug"
		runtime "Debug" 
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"

	filter {}





	
