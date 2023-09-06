glmIncludeDirs = {}	
glmIncludeDirs["glm"] = "%{wks.location}/Projects/glm/include"

	print("Hello")

project "glm"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
	staticruntime "on"
		
	
    	targetdir ( c_TargetDir )
    	objdir ( c_ObjDir )

	files
	{
		"include/**.hpp",
		"include/**.inl",
		"src/**.cpp"
	}

	includedirs
	{
		"src",
		"include"
	}	

	defines
	{
		"GLM_ENABLE_EXPERIMENTAL"
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

	






	

