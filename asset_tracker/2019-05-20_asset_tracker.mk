##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=2019-05-20_asset_tracker
ConfigurationName      :=Debug
WorkspacePath          :=/home/eduardo/Programming/cpp
ProjectPath            :=/home/eduardo/Programming/cpp/2019-05-20_asset_tracker
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Eduardo
Date                   :=28/05/19
CodeLitePath           :=/home/eduardo/.codelite
LinkerName             :=/usr/bin/clang++
SharedObjectLinkerName :=/usr/bin/clang++ -shared -fPIC
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
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="2019-05-20_asset_tracker.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)pthread $(LibrarySwitch)sqlite3 $(LibrarySwitch)OpenGL $(LibrarySwitch)sfml-graphics $(LibrarySwitch)sfml-window $(LibrarySwitch)sfml-system 
ArLibs                 :=  "pthread" "sqlite3" "OpenGL" "sfml-graphics" "sfml-window" "sfml-system" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/llvm-ar rcu
CXX      := /usr/bin/clang++
CC       := /usr/bin/clang
CXXFLAGS :=  -g -O0 -std=c++17 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -std=c++17 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/llvm-as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/classes_db_vars.cpp$(ObjectSuffix) $(IntermediateDirectory)/classes_tests.cpp$(ObjectSuffix) $(IntermediateDirectory)/gui_imgui-SFML.cpp$(ObjectSuffix) $(IntermediateDirectory)/classes_errors.cpp$(ObjectSuffix) $(IntermediateDirectory)/gui_imgui_demo.cpp$(ObjectSuffix) $(IntermediateDirectory)/gui_imgui_widgets.cpp$(ObjectSuffix) $(IntermediateDirectory)/gui_imgui_draw.cpp$(ObjectSuffix) $(IntermediateDirectory)/gui_imgui.cpp$(ObjectSuffix) 



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
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/eduardo/Programming/cpp/2019-05-20_asset_tracker/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/classes_db_vars.cpp$(ObjectSuffix): classes/db_vars.cpp $(IntermediateDirectory)/classes_db_vars.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/eduardo/Programming/cpp/2019-05-20_asset_tracker/classes/db_vars.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/classes_db_vars.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/classes_db_vars.cpp$(DependSuffix): classes/db_vars.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/classes_db_vars.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/classes_db_vars.cpp$(DependSuffix) -MM classes/db_vars.cpp

$(IntermediateDirectory)/classes_db_vars.cpp$(PreprocessSuffix): classes/db_vars.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/classes_db_vars.cpp$(PreprocessSuffix) classes/db_vars.cpp

$(IntermediateDirectory)/classes_tests.cpp$(ObjectSuffix): classes/tests.cpp $(IntermediateDirectory)/classes_tests.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/eduardo/Programming/cpp/2019-05-20_asset_tracker/classes/tests.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/classes_tests.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/classes_tests.cpp$(DependSuffix): classes/tests.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/classes_tests.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/classes_tests.cpp$(DependSuffix) -MM classes/tests.cpp

$(IntermediateDirectory)/classes_tests.cpp$(PreprocessSuffix): classes/tests.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/classes_tests.cpp$(PreprocessSuffix) classes/tests.cpp

$(IntermediateDirectory)/gui_imgui-SFML.cpp$(ObjectSuffix): gui/imgui-SFML.cpp $(IntermediateDirectory)/gui_imgui-SFML.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/eduardo/Programming/cpp/2019-05-20_asset_tracker/gui/imgui-SFML.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gui_imgui-SFML.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gui_imgui-SFML.cpp$(DependSuffix): gui/imgui-SFML.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/gui_imgui-SFML.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/gui_imgui-SFML.cpp$(DependSuffix) -MM gui/imgui-SFML.cpp

$(IntermediateDirectory)/gui_imgui-SFML.cpp$(PreprocessSuffix): gui/imgui-SFML.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gui_imgui-SFML.cpp$(PreprocessSuffix) gui/imgui-SFML.cpp

$(IntermediateDirectory)/classes_errors.cpp$(ObjectSuffix): classes/errors.cpp $(IntermediateDirectory)/classes_errors.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/eduardo/Programming/cpp/2019-05-20_asset_tracker/classes/errors.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/classes_errors.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/classes_errors.cpp$(DependSuffix): classes/errors.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/classes_errors.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/classes_errors.cpp$(DependSuffix) -MM classes/errors.cpp

$(IntermediateDirectory)/classes_errors.cpp$(PreprocessSuffix): classes/errors.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/classes_errors.cpp$(PreprocessSuffix) classes/errors.cpp

$(IntermediateDirectory)/gui_imgui_demo.cpp$(ObjectSuffix): gui/imgui_demo.cpp $(IntermediateDirectory)/gui_imgui_demo.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/eduardo/Programming/cpp/2019-05-20_asset_tracker/gui/imgui_demo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gui_imgui_demo.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gui_imgui_demo.cpp$(DependSuffix): gui/imgui_demo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/gui_imgui_demo.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/gui_imgui_demo.cpp$(DependSuffix) -MM gui/imgui_demo.cpp

$(IntermediateDirectory)/gui_imgui_demo.cpp$(PreprocessSuffix): gui/imgui_demo.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gui_imgui_demo.cpp$(PreprocessSuffix) gui/imgui_demo.cpp

$(IntermediateDirectory)/gui_imgui_widgets.cpp$(ObjectSuffix): gui/imgui_widgets.cpp $(IntermediateDirectory)/gui_imgui_widgets.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/eduardo/Programming/cpp/2019-05-20_asset_tracker/gui/imgui_widgets.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gui_imgui_widgets.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gui_imgui_widgets.cpp$(DependSuffix): gui/imgui_widgets.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/gui_imgui_widgets.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/gui_imgui_widgets.cpp$(DependSuffix) -MM gui/imgui_widgets.cpp

$(IntermediateDirectory)/gui_imgui_widgets.cpp$(PreprocessSuffix): gui/imgui_widgets.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gui_imgui_widgets.cpp$(PreprocessSuffix) gui/imgui_widgets.cpp

$(IntermediateDirectory)/gui_imgui_draw.cpp$(ObjectSuffix): gui/imgui_draw.cpp $(IntermediateDirectory)/gui_imgui_draw.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/eduardo/Programming/cpp/2019-05-20_asset_tracker/gui/imgui_draw.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gui_imgui_draw.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gui_imgui_draw.cpp$(DependSuffix): gui/imgui_draw.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/gui_imgui_draw.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/gui_imgui_draw.cpp$(DependSuffix) -MM gui/imgui_draw.cpp

$(IntermediateDirectory)/gui_imgui_draw.cpp$(PreprocessSuffix): gui/imgui_draw.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gui_imgui_draw.cpp$(PreprocessSuffix) gui/imgui_draw.cpp

$(IntermediateDirectory)/gui_imgui.cpp$(ObjectSuffix): gui/imgui.cpp $(IntermediateDirectory)/gui_imgui.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/eduardo/Programming/cpp/2019-05-20_asset_tracker/gui/imgui.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gui_imgui.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gui_imgui.cpp$(DependSuffix): gui/imgui.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/gui_imgui.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/gui_imgui.cpp$(DependSuffix) -MM gui/imgui.cpp

$(IntermediateDirectory)/gui_imgui.cpp$(PreprocessSuffix): gui/imgui.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gui_imgui.cpp$(PreprocessSuffix) gui/imgui.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


