(*[[
    UserURL= "ATCMfile:STRING_TO_UDINT.htm"
]]*)
FUNCTION STRING_TO_UDINT : UDINT
VAR_INPUT
    IN : STRING;
END_VAR

inline{ STDLIB(string_to_dword) }

END_FUNCTION
