B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.85
@EndOfDesignText@
'Ctrl + click to export as zip: ide://run?File=%B4X%\Zipper.jar&Args=Project.zip

Sub Class_Globals
	Private Root As B4XView
	Private xui As XUI
	Private ASViewPager1 As ASViewPager
	
End Sub

Public Sub Initialize
	
End Sub

'This event will be called once, before the page becomes visible.
Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.LoadLayout("frm_main")
	
	#If B4I
	Wait For B4XPage_Resize (Width As Int, Height As Int)
	B4XPage_Resize(Width,Height)
	'ASViewPager1.Base_Resize(Width,Height)
	#End If

	For i = 0 To 5
		Dim tmp_xpnl As B4XView = xui.CreatePanel("tmp_xpnl")
		tmp_xpnl.Color = xui.Color_ARGB(255,Rnd(1,255),Rnd(1,255),Rnd(1,255))
		tmp_xpnl.SetLayoutAnimated(0,0,0,ASViewPager1.Base.Width*2,ASViewPager1.Base.Height)
		
		ASViewPager1.AddPage(tmp_xpnl,"Test" & i)
	Next
	B4XPages.SetTitle(Me,"ASViewPager Example | Page " & 1 & "/" & ASViewPager1.Size)
	
	'Sleep(0)
	'ASViewPager1.CurrentIndex = 100

End Sub

Private Sub B4XPage_Resize (Width As Int, Height As Int)
	ASViewPager1.Base_Resize(Width,Height)
End Sub

Sub ASViewPager1_PageChanged (index As Int)
	'Log("PageChanged: " & index)
	B4XPages.SetTitle(Me,"ASViewPager Example | Page " & (index +1) & "/" & ASViewPager1.Size)
End Sub

Private Sub ASViewPager1_PageChange(Index As Int)
	'Log("PageChange: " & Index)
End Sub

Private Sub ASViewPager1_SwipeOnEndOfPage
	Log("SwipeOnEndOfPage")
End Sub

Private Sub xlbl_next_Click
	ASViewPager1.NextPage
	
End Sub

Private Sub ASViewPager1_PageClick (Index As Int, Value As Object)
	Log("ASViewPager1_PageClick: " & Index)
End Sub

Private Sub xlbl_lul_Click
	Log("luuuul")
End Sub

Private Sub Label1_Click
	ASViewPager1.NextPage
End Sub

Private Sub Label2_Click
	ASViewPager1.PreviousPage
End Sub


Private Sub ASViewPager1_LazyLoadingAddContent(Parent As B4XView, Value As Object)
	Log("lul: " & Value)
	Dim xpnl_tmp As B4XView = xui.CreatePanel("")
	xpnl_tmp.Color = xui.Color_Red
	
	Parent.AddView(xpnl_tmp,0,0,50dip,50dip)
End Sub




Private Sub ASViewPager1_TouchBegin
	Log("ASViewPager1_TouchBegin")
End Sub

Private Sub ASViewPager1_TouchEnd
	Log("ASViewPager1_TouchEnd")
End Sub
