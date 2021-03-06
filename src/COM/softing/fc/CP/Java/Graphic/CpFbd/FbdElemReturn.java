/*H>> $Header: /4CReleased/V2.20.00/COM/softing/fc/CP/Java/Graphic/CpFbd/FbdElemReturn.java 1     28.02.07 19:00 Ln $
 *----------------------------------------------------------------------------*
 *
 * =FILENAME            $Workfile: FbdElemReturn.java $
 *                      $Logfile: /4CReleased/V2.20.00/COM/softing/fc/CP/Java/Graphic/CpFbd/FbdElemReturn.java $
 *
 * =PROJECT             7VH102  ATCMControl
 *
 * =SWKE                CP
 *
 * =COMPONENT           graphic
 *
 * =CURRENT             $Date: 28.02.07 19:00 $
 *                      $Revision: 1 $
 *
 * =ENVIRONMENT         Win32:
 *                      MS Windows NT 4.0
 *                      MSVC++ V5.0 / MFC 4.2 / ATL 2.0 / DAO 3.5
 *                      MS Java 2.0
 *                      MS Visual SourceSafe 5.0
 *
 * =REFERENCES
 *==
 *----------------------------------------------------------------------------*
 *

 

 

 *==
 *
 *----------------------------------------------------------------------------*
 * =DESCRIPTION
 *==
 *----------------------------------------------------------------------------*
 * =MODIFICATIONS
 * $History: FbdElemReturn.java $
 * 
 * *****************  Version 1  *****************
 * User: Ln           Date: 28.02.07   Time: 19:00
 * Created in $/4CReleased/V2.20.00/COM/softing/fc/CP/Java/Graphic/CpFbd
 * 
 * *****************  Version 1  *****************
 * User: Ln           Date: 28.08.03   Time: 16:33
 * Created in $/4Control/COM/softing/fc/CP/Java/Graphic/CpFbd
 * 
 * *****************  Version 1  *****************
 * User: Scd          Date: 19.03.01   Time: 15:30
 * Created in $/4Control/COM/softing/fc/CP/Java/Graphic/CpFbd
 * 
 * *****************  Version 1  *****************
 * User: Mkr          Date: 14.07.99   Time: 18:37
 * Created in $/COM/softing/fc/CP/Java/Graphic/CpFbd
 *==
 ******************************************************************************
H<<*/
import java.awt.*;

public class FbdElemReturn extends FbdElemBase
{
//*****************************************************************************
	public FbdElemReturn(
		 int iXo,                  // origin
		 int iYo, 
		 int iWidth,               // size
		 int iHeight, 
		 String strName,           // name
		 boolean bIsComment)       // if true, object is displayed as comment
//*****************************************************************************		
	{	
		super(iXo, iYo, iWidth, iHeight, strName, bIsComment);
		m_ClassId |= ClassId_Return;						
	}

//*****************************************************************************		
	public void paint(Graphics g)
//*****************************************************************************		
	{
		// base class painting
		PrePaint(g);

		// colors
		Color BgCol = getBackgroundColorCaption();
		Color FgCol = getForgroundColor();		
	
		// object size
		int w = getSize().width-1;              
		int h = getSize().height-1;
		int dx = LogicToPixelX(2); // pin length
		int dx2 = dx/2;

		// fill entire component area
		g.setColor(BgCol);						
		g.fillRect(dx, 0, w, h);

		// caption width name
		drawTextFrame(
			g, BgCol,  FgCol, FgCol, 
			dx+dx2, 0, w-2*dx, h, m_strName, 
			FbdElemBase.TextFrameTypeNo, 
			FbdElemBase.TextAlignXCenter, FbdElemBase.TextAlignYCenter);

		// draw left arrow
		drawArrow(g, FgCol, dx, 0, h, false, false);		
		
		// draw right arrow
		drawArrow(g, FgCol, w-dx2-1, 0, h, true, false);		
	
		// draw pin at the right hand side
		g.setColor(FgCol);
		g.drawLine(0, (h+1)/2, dx-1, (h+1)/2); 

		// base class painting
		PostPaint(g);
	}
}
