(*[[
    UserURL= "ATCMFile:COPY_BOOL_TO_BYTE_STRING.htm"
]]*)

(* copies the value VALUE to the byte string BSTR at the position POS *)

FUNCTION COPY_BOOL_TO_BYTE_STRING
VAR_INPUT
    VALUE : BOOL;
END_VAR
VAR_IN_OUT
    POS : DINT;
    BSTR : BYTE_STRING;
END_VAR
        
    COPY_NUMERIC_TO_BYTE_STRING(BOOL_TO_LWORD(VALUE),1,POS,BSTR);

END_FUNCTION
