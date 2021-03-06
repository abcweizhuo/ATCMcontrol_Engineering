(*[[
    GUID= "{E2284DED-50ED-40C8-A875-7814E078DBA3}",  
    ALIAS="alias",
    CREATED="created",
    MODIFIED="modified",
    USRCREATED="usrcreated",
    USRMODIFIED="usrmodified",
    URL="url",
    USERTEXT1="usertext1",
    USERTEXT2="usertext2",
    USERTEXT3="usertext3",
    KEY_001="VALUE_001",
    KEY_002="VALUE_002",
    KEY_003="VALUE_003",
]]*)

RESOURCE Resource1 ON NT

    #IMPORT    "Resource1.gvl"    
    #IMPORT    "abc.gvl"
    #IMPORT    def.gvl             
    #IMPORT    ghi.gvl
    TASK TaskCountTraffic ( ) ;
    TASK TaskControlLights (INTERVAL:=T#500ms, PRIORITY:=6);
	TASK TaskCheckForOff (INTERVAL:=T#100ms, PRIORITY:=3);
	TASK TaskSimulate (INTERVAL:=T#100ms, PRIORITY:=4);        

    TASK Task6
            (*[[
                Alias="abc",
                UserText1= "abc",
                UserText2= "def",
                UserText3= "ghi",
                UserURL= "jkl"
            ]]*)
            (INTERVAL:=T#100ms, PRIORITY:=5);

	TASK TaskCalculateSpeed	(INTERVAL:=T#1000ms, PRIORITY:=6);



    TASK Task1(INTERVAL:=T#100ms, PRIORITY:=5);
    TASK Task2(INTERVAL:=T#100ms, PRIORITY:=5);
    TASK Task3(INTERVAL:=T#100ms, PRIORITY:=5);
    TASK Task4(INTERVAL:=T#100ms, PRIORITY:=6);

    
	PROGRAM CountTraffic      WITH TaskCountTraffic: CountTraffic;    

    PROGRAM ControlLights     WITH TaskControlLights: ControlLights;
	PROGRAM retain C : CProg; 
	PROGRAM CheckForOff       WITH TaskCheckForOff: CheckForOff;
	PROGRAM Simulatea          WITH TaskSimulate: Simulate;
	PROGRAM Simulateb          WITH TASKSIMULATE: Simulate;
	PROGRAM Simulatec          WITH TaskSimulate: Simulate;
        PROGRAM Program7 
            (*[[
                Alias="abc",
                UserText1= "abc",
                UserText2= "defghi",
                UserURL= "jkl"
            ]]*)
            WITH  Task6: Program7;

 	PROGRAM CalculateSpeed    WITH  TaskCalculateSpeed: CalculateSpeed;

END_RESOURCE
