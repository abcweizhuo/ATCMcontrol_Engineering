(*[[
    UserText1= "mb_get_header_length",
    UserHelpURL= "ATCMfile:MODBUS_GET_HEADER_LENGTH.HTML",
]]*)
FUNCTION MODBUS_GET_HEADER_LENGTH : UINT
VAR_INPUT
    context : STRING; (*[context name (TCP, RTU, TCPRTU)]*)
END_VAR
INLINE {STDLIB(MODBUS_GET_HEADER_LENGTH)}
END_FUNCTION
