(*[[
    UserURL= "ATCMfile:DINT_TO_BOOL.htm"
]]*)

FUNCTION INT_TO_BOOL : BOOL
VAR_INPUT 
    IN : INT; 
END_VAR

inline{VMOP(WORD_TO_BOOL)}

END_FUNCTION
