//CAL0002J JOB 1,NOTIFY=&SYSUID
//***********************************/
//**//COBRUN EXEC IGYWCL **/
//CALLED  EXEC IGYWCL
//COBOL.SYSLIB DD DSN=&SYSUID..COBOL.CPY,DISP=SHR
//COBOL.SYSIN  DD DSN=&SYSUID..CBL(SUB0002),DISP=SHR
//LKED.SYSLMOD DD DSN=&SYSUID..LOAD(SUB0002),DISP=SHR
//CALLER  EXEC IGYWCL
//COBOL.SYSLIB DD DSN=&SYSUID..COBOL.CPY,DISP=SHR
//COBOL.SYSIN  DD DSN=&SYSUID..CBL(CAL0002),DISP=SHR
//LKED.SYSLMOD DD DSN=&SYSUID..LOAD(CAL0002),DISP=SHR
//LKED.SYSLIB  DD  DSNAME=CEE.SCEELKED,DISP=SHR
//         DD  DSNAME=CEE.SCEELKEX,DISP=SHR
//         DD  DSNAME=&SYSUID..LOAD,DISP=SHR
//LKED.SYSIN DD *
  INCLUDE SYSLIB(SUB0002)
// IF RC = 0 THEN
//RUN     EXEC PGM=CAL0002
//STEPLIB   DD DSN=&SYSUID..LOAD,DISP=SHR
//COUNTRYS  DD DSN=&SYSUID..COUNTRYS,DISP=SHR
//SYSOUT    DD SYSOUT=*,OUTLIM=15000
//CEEDUMP   DD DUMMY
//SYSUDUMP  DD DUMMY
//SYSIN     DD *
CO
/*
// ELSE
// ENDIF