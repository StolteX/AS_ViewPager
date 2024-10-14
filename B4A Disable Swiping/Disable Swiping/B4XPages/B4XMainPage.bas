B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.85
@EndOfDesignText@
#Region Shared Files
#CustomBuildAction: folders ready, %WINDIR%\System32\Robocopy.exe,"..\..\Shared Files" "..\Files"
'Ctrl + click to sync files: ide://run?file=%WINDIR%\System32\Robocopy.exe&args=..\..\Shared+Files&args=..\Files&FilesSync=True
#End Region

'Ctrl + click to export as zip: ide://run?File=%B4X%\Zipper.jar&Args=Project.zip

Sub Class_Globals
	Private Root As B4XView
	Private xui As XUI
	Private ASViewPager1 As ASViewPager
	Private Panel1 As B4XView
End Sub

Public Sub Initialize
	
End Sub

'This event will be called once, before the page becomes visible.
Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.LoadLayout("frm_main")
	
	For i = 0 To 10 -1
		
		Dim xpnl As B4XView = xui.CreatePanel("")
		xpnl.SetLayoutAnimated(0,0,0,Root.Width,Root.Height)
		
		xpnl.Color = xui.Color_ARGB(255,Rnd(0,256),Rnd(0,256),Rnd(0,256))
		
		ASViewPager1.AddPage(xpnl,"")
		
	Next
	
End Sub



Private Sub Panel1_Touch (Action As Int, X As Float, Y As Float)
	'if you want to enable swipe again hide the panel:
	'Panel1.Visible = False
End Sub