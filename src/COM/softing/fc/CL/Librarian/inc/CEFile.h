/*H>> $Header: /4CReleased/V2.20.00/COM/softing/fc/CL/Librarian/inc/CEFile.h 1     28.02.07 18:59 Ln $
 *----------------------------------------------------------------------------*
 *
 * =FILENAME            $Workfile: CEFile.h $
 *                      $Logfile: /4CReleased/V2.20.00/COM/softing/fc/CL/Librarian/inc/CEFile.h $
 *
 * =PROJECT             CAK1020 ATCMControlV2.0
 *
 * =SWKE                4CL
 *
 * =COMPONENT           CELibrarian
 *
 * =CURRENT      $Date: 28.02.07 18:59 $
 *               $Revision: 1 $
 *
 * =REFERENCES
 *
 *----------------------------------------------------------------------------*
 *





 *==
 *----------------------------------------------------------------------------*
 * =DESCRIPTION
 *    @DESCRIPTION@
 *==
 *----------------------------------------------------------------------------*
 * =MODIFICATION
 *  6/25/2001  SU      File created
 *  see history at end of file !
 *==
 *******************************************************************************
H<<*/

#ifndef __CEFILE_H_
#define __CEFILE_H_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000


//----  Aggregate Includes:   --------------------------------------*

//----  Forward Class Definitions:   -------------------------------*

//----  Defines:    ------------------------------------------------*

//----  Globals:    ------------------------------------------------*

//----  Prototypes:    ---------------------------------------------*



// CEFile.h: Schnittstelle f�r die Klasse CEFile.
//
//////////////////////////////////////////////////////////////////////


class __declspec(dllexport) CEFile  
{
public:
	CEFile();
	virtual ~CEFile();
	static LPCTSTR GetFileName(LPCTSTR fullFilePath);
	static LPCTSTR GetFilePath(LPCTSTR fullFilePath);
	static LPCTSTR GetFileExt(LPCTSTR fullFileName);
	static BOOL IsDirectory(LPCTSTR directory);
	static BOOL IsFile(LPCTSTR fileName);
	static BOOL IsReadOnly(LPCTSTR fileName);
	static BOOL GetTimeStamp(LPCTSTR fileName, time_t* pTimeStamp);
};

#endif // __CEFILE_H_


/*
 *----------------------------------------------------------------------------*
 *  $History: CEFile.h $
 * 
 * *****************  Version 1  *****************
 * User: Ln           Date: 28.02.07   Time: 18:59
 * Created in $/4CReleased/V2.20.00/COM/softing/fc/CL/Librarian/inc
 * 
 * *****************  Version 1  *****************
 * User: Ln           Date: 28.08.03   Time: 16:31
 * Created in $/4Control/COM/softing/fc/CL/Librarian/inc
 * 
 * *****************  Version 2  *****************
 * User: Oh           Date: 6/25/01    Time: 3:33p
 * Updated in $/4Control/COM/softing/fc/CL/Librarian/inc
 *==
 *----------------------------------------------------------------------------*
*/
