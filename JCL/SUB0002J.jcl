//SUB0002J JOB 1,NOTIFY=&SYSUID
//***************************************************/
//COBRUN  EXEC IGYWCL
//COBOL.SYSLIB DD DSN=&SYSUID..COBOL.CPY,DISP=SHR
//COBOL.SYSIN  DD DSN=&SYSUID..CBL(SUB0002),DISP=SHR
//LKED.SYSLMOD DD DSN=&SYSUID..LOAD(SUB0002),DISP=SHR