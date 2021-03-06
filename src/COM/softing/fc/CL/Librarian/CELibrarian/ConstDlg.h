/*H>> $Header: /4CReleased/V2.20.00/COM/softing/fc/CL/Librarian/CELibrarian/ConstDlg.h 1     28.02.07 18:59 Ln $
 *----------------------------------------------------------------------------*
 *
 * =FILENAME            $Workfile: ConstDlg.h $
 *                      $Logfile: /4CReleased/V2.20.00/COM/softing/fc/CL/Librarian/CELibrarian/ConstDlg.h $
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

#ifndef __CONSTDLG_H_
#define __CONSTDLG_H_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000


//----  Aggregate Includes:   --------------------------------------*
#include "CELibrarianDoc.h"
#include "CListCtrlEx.h"
//----  Forward Class Definitions:   -------------------------------*

//----  Defines:    ------------------------------------------------*

//----  Globals:    ------------------------------------------------*

//----  Prototypes:    ---------------------------------------------*


// ConstDlg.h : Header-Datei  
//


/////////////////////////////////////////////////////////////////////////////
// Dialogfeld ConstDlg 

class ConstDlg : public CDialog
{
// Konstruktion
public:
	ConstDlg(CWnd* pParent = NULL);   // Standardkonstruktor
	CELibrarianDoc* m_pDocument;

// Dialogfelddaten
	//{{AFX_DATA(ConstDlg)
	enum { IDD = IDD_CL_CONSTANTS };
	CListCtrlEx	m_listCtrl;
	//}}AFX_DATA


// Überschreibungen
	// Vom Klassen-Assistenten generierte virtuelle Funktionsüberschreibungen
	//{{AFX_VIRTUAL(ConstDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV-Unterstützung
	//}}AFX_VIRTUAL

// Implementierung
protected:
	int m_init;
	// Generierte Nachrichtenzuordnungsfunktionen
	//{{AFX_MSG(ConstDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSize(UINT nType, int cx, int cy);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio fügt zusätzliche Deklarationen unmittelbar vor der vorhergehenden Zeile ein.


#endif // __CONSTDLG_H_


/*
 *----------------------------------------------------------------------------*
 *  $History: ConstDlg.h $
 * 
 * *****************  Version 1  *****************
 * User: Ln           Date: 28.02.07   Time: 18:59
 * Created in $/4CReleased/V2.20.00/COM/softing/fc/CL/Librarian/CELibrarian
 * 
 * *****************  Version 1  *****************
 * User: Ln           Date: 28.08.03   Time: 16:31
 * Created in $/4Control/COM/softing/fc/CL/Librarian/CELibrarian
 * 
 * *****************  Version 2  *****************
 * User: Oh           Date: 6/25/01    Time: 3:32p
 * Updated in $/4Control/COM/softing/fc/CL/Librarian/CELibrarian
 *==
 *----------------------------------------------------------------------------*
*/
