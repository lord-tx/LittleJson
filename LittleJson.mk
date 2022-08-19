##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=LittleJson
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :=/home/markjordan/CProjects/ActiveCoder
ProjectPath            :=/home/markjordan/CProjects/ActiveCoder/LittleJson
IntermediateDirectory  :=$(ConfigurationName)
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Mark Jordan
Date                   :=18/08/22
CodeLitePath           :=/home/markjordan/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputDirectory        :=$(IntermediateDirectory)
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="LittleJson.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)include $(IncludeSwitch)enum 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overridden using an environment variable
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/JsonObject.cpp$(ObjectSuffix) $(IntermediateDirectory)/LittleJson.cpp$(ObjectSuffix) $(IntermediateDirectory)/InitException.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d $(ConfigurationName) || $(MakeDirCommand) $(ConfigurationName)


$(IntermediateDirectory)/.d:
	@test -d $(ConfigurationName) || $(MakeDirCommand) $(ConfigurationName)

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/markjordan/CProjects/ActiveCoder/LittleJson/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/JsonObject.cpp$(ObjectSuffix): JsonObject.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/JsonObject.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/JsonObject.cpp$(DependSuffix) -MM JsonObject.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/markjordan/CProjects/ActiveCoder/LittleJson/JsonObject.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/JsonObject.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/JsonObject.cpp$(PreprocessSuffix): JsonObject.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/JsonObject.cpp$(PreprocessSuffix) JsonObject.cpp

$(IntermediateDirectory)/LittleJson.cpp$(ObjectSuffix): LittleJson.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/LittleJson.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/LittleJson.cpp$(DependSuffix) -MM LittleJson.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/markjordan/CProjects/ActiveCoder/LittleJson/LittleJson.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/LittleJson.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/LittleJson.cpp$(PreprocessSuffix): LittleJson.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/LittleJson.cpp$(PreprocessSuffix) LittleJson.cpp

$(IntermediateDirectory)/InitException.cpp$(ObjectSuffix): InitException.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/InitException.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/InitException.cpp$(DependSuffix) -MM InitException.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/markjordan/CProjects/ActiveCoder/LittleJson/InitException.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/InitException.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/InitException.cpp$(PreprocessSuffix): InitException.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/InitException.cpp$(PreprocessSuffix) InitException.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(ConfigurationName)/


