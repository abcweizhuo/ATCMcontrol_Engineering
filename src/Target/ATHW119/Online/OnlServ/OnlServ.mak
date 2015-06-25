#automatically generated by C:\ATCMControl_SDK\GenWork\GenDir.tmp\4Control_R\gentools\make.pl: Version=$Revision: 1 $

!ifndef PROJECT_ROOT
!MESSAGE check environmemt: environment variable PROJECT_ROOT not defined
!ERROR PROJECT_ROOT must point to the project base directory
!endif

STATIC_RUNTIME = 0
!include <$(PROJECT_ROOT)\gentools\global.inc>
makefirst:$(EXE_DIR)\Engineering\bin\ATHW119
$(EXE_DIR)\Engineering\bin\ATHW119:
  -md $@
doxygen: OnlServ.doxy
	$(CP) $(PROJECT_ROOT)\gentools\4C_doxy.css .\4C_doxy.css
	doxygen OnlServ.doxy
OnlServ.doxy:
	$(CP) $(PROJECT_ROOT)\gentools\Sample.doxy .\OnlServ.doxy
oleclasses: CSC_OnlineServer.h
CSC_OnlineServer.h: ..\..\..\..\TargetBase\Kernel\inc\CSC_OnlineServer.idl
	$(MIDL) $(MIDLFLAGS) -I ..\..\inc -I ..\..\res -I $(TARGET_BASE)\online\inc -I $(TARGET_BASE)\inc -I $(TARGET_BASE)\kernel\inc -I $(TARGET_BASE)\kernel\inc\opc -I $(TARGET_BASE)\kernel\CSC\opcEngine\include -D _USRDLL -D _AFXDLL -D _ATL_STATIC_REGISTRY -D INC_4C -h CSC_OnlineServer.h ..\..\..\..\TargetBase\Kernel\inc\CSC_OnlineServer.idl
clean::
	-$(RM) CSC_OnlineServer.h
oleclasses: CSC_OnlSrv.h
CSC_OnlSrv.h: CSC_OnlSrv.idl
	$(MIDL) $(MIDLFLAGS) -I ..\..\inc -I ..\..\res -I $(TARGET_BASE)\online\inc -I $(TARGET_BASE)\inc -I $(TARGET_BASE)\kernel\inc -I $(TARGET_BASE)\kernel\inc\opc -I $(TARGET_BASE)\kernel\CSC\opcEngine\include -D _USRDLL -D _AFXDLL -D _ATL_STATIC_REGISTRY -D INC_4C -h CSC_OnlSrv.h CSC_OnlSrv.idl
clean::
	-$(RM) CSC_OnlSrv.h
precompile: csc_onlineerr.h
csc_onlineerr.h: ..\..\..\..\TargetBase\Kernel\res\csc_onlineerr.mc
	$(MC) $(MCFLAGS) ..\..\..\..\TargetBase\Kernel\res\csc_onlineerr.mc
clean::
	-$(RM) csc_onlineerr.h
precompile: opcerror.h
opcerror.h: ..\..\..\..\TargetBase\Kernel\res\opcerror.mc
	$(MC) $(MCFLAGS) ..\..\..\..\TargetBase\Kernel\res\opcerror.mc
clean::
	-$(RM) opcerror.h
compile: $(OBJ)\Globals.obj
$(OBJ)\Globals.obj: Globals.cpp $(OBJ)
	@$(CXX) @<<
$(CXXFLAGS) -I..\..\inc -I..\..\res -I$(TARGET_BASE)\online\inc -I$(TARGET_BASE)\inc -I$(TARGET_BASE)\kernel\inc -I$(TARGET_BASE)\kernel\inc\opc -I$(TARGET_BASE)\kernel\CSC\opcEngine\include -D_USRDLL -D_AFXDLL -D_ATL_STATIC_REGISTRY -DINC_4C -Fo$(OBJ)\Globals.obj -c $(MAKEDIR)\Globals.cpp
<<
clean::
	-$(RM) $(OBJ)\Globals.obj
compile: $(OBJ)\OnlServ.obj
$(OBJ)\OnlServ.obj: OnlServ.cpp $(OBJ)
	@$(CXX) @<<
$(CXXFLAGS) -I..\..\inc -I..\..\res -I$(TARGET_BASE)\online\inc -I$(TARGET_BASE)\inc -I$(TARGET_BASE)\kernel\inc -I$(TARGET_BASE)\kernel\inc\opc -I$(TARGET_BASE)\kernel\CSC\opcEngine\include -D_USRDLL -D_AFXDLL -D_ATL_STATIC_REGISTRY -DINC_4C -Fo$(OBJ)\OnlServ.obj -c $(MAKEDIR)\OnlServ.cpp
<<
clean::
	-$(RM) $(OBJ)\OnlServ.obj
compile: $(OBJ)\StdAfx.obj
$(OBJ)\StdAfx.obj: StdAfx.cpp $(OBJ)
	@$(CXX) @<<
$(CXXFLAGS) -I..\..\inc -I..\..\res -I$(TARGET_BASE)\online\inc -I$(TARGET_BASE)\inc -I$(TARGET_BASE)\kernel\inc -I$(TARGET_BASE)\kernel\inc\opc -I$(TARGET_BASE)\kernel\CSC\opcEngine\include -D_USRDLL -D_AFXDLL -D_ATL_STATIC_REGISTRY -DINC_4C -Fo$(OBJ)\StdAfx.obj -c $(MAKEDIR)\StdAfx.cpp
<<
clean::
	-$(RM) $(OBJ)\StdAfx.obj
clean::
	-$(RM) vc60.idb vc60.pdb
compile: $(OBJ)\CSC_OnlSrv.res
$(OBJ)\CSC_OnlSrv.res: CSC_OnlSrv.rc $(OBJ)
	$(RC) $(RCFLAGS) -i ..\..\inc -i ..\..\res -i $(TARGET_BASE)\online\inc -i $(TARGET_BASE)\inc -i $(TARGET_BASE)\kernel\inc -i $(TARGET_BASE)\kernel\inc\opc -i $(TARGET_BASE)\kernel\CSC\opcEngine\include -d _USRDLL -d _AFXDLL -d _ATL_STATIC_REGISTRY -d INC_4C -fo$(OBJ)\CSC_OnlSrv.res CSC_OnlSrv.rc
clean::
	-$(RM) $(OBJ)\CSC_OnlSrv.res
link: $(EXE_DIR)\Engineering\bin\ATHW119\OnlServATHW119.exe
$(EXE_DIR)\Engineering\bin\ATHW119\OnlServATHW119.exe: $(OBJ)\Globals.obj $(OBJ)\OnlServ.obj $(OBJ)\StdAfx.obj $(OBJ)\CSC_OnlSrv.res $(TARGET_BASE)\kernel\lib\opcEngine.lib $(TARGET_BASE)\kernel\lib\fc_todebug.lib $(TARGET_BASE)\kernel\lib\fc_baselib.lib $(TARGET_BASE)\kernel\lib\fc_tools.lib $(TARGET_BASE)\lib\OnlLibServ.lib $(TARGET_BASE)\kernel\ce\lib\CEUtil_XML.lib 
	$(LNK) @<<
$(LFLAGS) -OUT:$(EXE_DIR)\Engineering\bin\ATHW119\OnlServATHW119.exe -SUBSYSTEM:WINDOWS -INCREMENTAL:NO
$(OBJ)\Globals.obj $(OBJ)\OnlServ.obj $(OBJ)\StdAfx.obj 
$(OBJ)\CSC_OnlSrv.res
$(TARGET_BASE)\kernel\lib\opcEngine.lib $(TARGET_BASE)\kernel\lib\fc_todebug.lib $(TARGET_BASE)\kernel\lib\fc_baselib.lib $(TARGET_BASE)\kernel\lib\fc_tools.lib $(TARGET_BASE)\lib\OnlLibServ.lib $(TARGET_BASE)\kernel\ce\lib\CEUtil_XML.lib kernel32.lib user32.lib gdi32.lib advapi32.lib ole32.lib oleaut32.lib uuid.lib version.lib 
<<
clean::
	-$(RM) $(EXE_DIR)\Engineering\bin\ATHW119\OnlServATHW119.exe
	-$(RM) $(EXE_DIR)\Engineering\bin\ATHW119\OnlServATHW119.pdb
link: $(EXE_DIR)\Engineering\bin\ATHW119\CSC_OnlineServer.tlb
$(EXE_DIR)\Engineering\bin\ATHW119\CSC_OnlineServer.tlb: $(TARGET_BASE)\kernel\inc\CSC_OnlineServer.tlb
	$(CP) $(TARGET_BASE)\kernel\inc\CSC_OnlineServer.tlb $(EXE_DIR)\Engineering\bin\ATHW119\CSC_OnlineServer.tlb
clean::
	-$(RM) $(EXE_DIR)\Engineering\bin\ATHW119\CSC_OnlineServer.tlb
link: $(EXE_DIR)\Engineering\bin\ATHW119\who.list
$(EXE_DIR)\Engineering\bin\ATHW119\who.list: who.list
	$(CP) who.list $(EXE_DIR)\Engineering\bin\ATHW119\who.list
clean::
	-$(RM) $(EXE_DIR)\Engineering\bin\ATHW119\who.list