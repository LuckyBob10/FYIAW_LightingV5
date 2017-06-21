# -*- coding: utf-8 -*- 

###########################################################################
## Python code generated with wxFormBuilder (version Jun 17 2015)
## http://www.wxformbuilder.org/
##
## PLEASE DO "NOT" EDIT THIS FILE!
###########################################################################

import wx
import wx.xrc
import wx.propgrid as pg

###########################################################################
## Class MainFrame
###########################################################################

class MainFrame ( wx.Frame ):
	
	def __init__( self, parent ):
		wx.Frame.__init__ ( self, parent, id = wx.ID_ANY, title = u"FYIAW Lighting Designer v1", pos = wx.DefaultPosition, size = wx.Size( 700,450 ), style = wx.DEFAULT_FRAME_STYLE|wx.TAB_TRAVERSAL )
		
		self.SetSizeHintsSz( wx.DefaultSize, wx.DefaultSize )
		
		self.MainFrame_Toolbar = self.CreateToolBar( wx.TB_HORIZONTAL, wx.ID_ANY ) 
		self.Tool_Open = self.MainFrame_Toolbar.AddLabelTool( wx.ID_ANY, u"Open", wx.ArtProvider.GetBitmap( wx.ART_FILE_OPEN, wx.ART_MENU ), wx.NullBitmap, wx.ITEM_NORMAL, wx.EmptyString, wx.EmptyString, None ) 
		
		self.Tool_Save = self.MainFrame_Toolbar.AddLabelTool( wx.ID_ANY, u"Save", wx.ArtProvider.GetBitmap( wx.ART_FILE_SAVE_AS, wx.ART_MENU ), wx.NullBitmap, wx.ITEM_NORMAL, wx.EmptyString, wx.EmptyString, None ) 
		
		self.MainFrame_Toolbar.Realize() 
		
		MainFrame_Boxer = wx.BoxSizer( wx.VERTICAL )
		
		self.MainListBook = wx.Listbook( self, wx.ID_ANY, wx.DefaultPosition, wx.DefaultSize, wx.LB_DEFAULT )
		self.Panel_General = wx.Panel( self.MainListBook, wx.ID_ANY, wx.DefaultPosition, wx.DefaultSize, wx.TAB_TRAVERSAL )
		Panel_General_Boxer = wx.BoxSizer( wx.VERTICAL )
		
		self.Label_General = wx.StaticText( self.Panel_General, wx.ID_ANY, u"General Settings", wx.DefaultPosition, wx.DefaultSize, 0 )
		self.Label_General.Wrap( -1 )
		self.Label_General.SetFont( wx.Font( wx.NORMAL_FONT.GetPointSize(), 70, 90, 92, True, wx.EmptyString ) )
		
		Panel_General_Boxer.Add( self.Label_General, 0, wx.ALL, 5 )
		
		self.General_Grid = pg.PropertyGrid(self.Panel_General, wx.ID_ANY, wx.DefaultPosition, wx.DefaultSize, wx.propgrid.PG_BOLD_MODIFIED|wx.propgrid.PG_DEFAULT_STYLE|wx.propgrid.PG_SPLITTER_AUTO_CENTER|wx.TAB_TRAVERSAL)
		self.General_CaptureSizeX = self.General_Grid.Append( pg.IntProperty( u"Capture Size: X", u"Capture Size: X" ) ) 
		self.General_CaptureSizeY = self.General_Grid.Append( pg.IntProperty( u"Capture Size: Y", u"Capture Size: Y" ) ) 
		self.General_InitialX = self.General_Grid.Append( pg.IntProperty( u"Initial Window Position: X", u"Initial Window Position: X" ) ) 
		self.General_InitialY = self.General_Grid.Append( pg.IntProperty( u"Initial Window Position: Y", u"Initial Window Position: Y" ) ) 
		Panel_General_Boxer.Add( self.General_Grid, 1, wx.ALL|wx.EXPAND, 5 )
		
		
		self.Panel_General.SetSizer( Panel_General_Boxer )
		self.Panel_General.Layout()
		Panel_General_Boxer.Fit( self.Panel_General )
		self.MainListBook.AddPage( self.Panel_General, u"General", False )
		self.Panel_LEDBoard = wx.Panel( self.MainListBook, wx.ID_ANY, wx.DefaultPosition, wx.DefaultSize, wx.TAB_TRAVERSAL )
		Panel_LEDBoard_Boxer = wx.BoxSizer( wx.VERTICAL )
		
		self.Label_LEDBoard = wx.StaticText( self.Panel_LEDBoard, wx.ID_ANY, u"LED Board Settings", wx.DefaultPosition, wx.DefaultSize, 0 )
		self.Label_LEDBoard.Wrap( -1 )
		self.Label_LEDBoard.SetFont( wx.Font( wx.NORMAL_FONT.GetPointSize(), 70, 90, 92, True, wx.EmptyString ) )
		
		Panel_LEDBoard_Boxer.Add( self.Label_LEDBoard, 0, wx.ALL, 5 )
		
		self.LEDBoard_Grid = pg.PropertyGrid(self.Panel_LEDBoard, wx.ID_ANY, wx.DefaultPosition, wx.DefaultSize, wx.propgrid.PG_BOLD_MODIFIED|wx.propgrid.PG_DEFAULT_STYLE|wx.propgrid.PG_SPLITTER_AUTO_CENTER|wx.TAB_TRAVERSAL)
		self.LEDBoard_CategoryGeneral = self.LEDBoard_Grid.Append( pg.PropertyCategory( u"General", u"General" ) ) 
		self.LEDBoard_Enabled = self.LEDBoard_Grid.Append( pg.BoolProperty( u"Enabled", u"Enabled" ) ) 
		self.LEDBoard_OPC_Address = self.LEDBoard_Grid.Append( pg.StringProperty( u"OPC Server Address", u"OPC Server Address" ) ) 
		self.LEDBoard_OPC_Port = self.LEDBoard_Grid.Append( pg.IntProperty( u"OPC Server Port", u"OPC Server Port" ) ) 
		self.LEDBoard_CategorySize = self.LEDBoard_Grid.Append( pg.PropertyCategory( u"LED Board Size", u"LED Board Size" ) ) 
		self.LEDBoard_Pixels_X = self.LEDBoard_Grid.Append( pg.IntProperty( u"Pixel Count: X", u"Pixel Count: X" ) ) 
		self.LEDBoard_Pixels_Y = self.LEDBoard_Grid.Append( pg.IntProperty( u"Pixel Count: Y", u"Pixel Count: Y" ) ) 
		self.LEDBoard_Spacing_X = self.LEDBoard_Grid.Append( pg.IntProperty( u"Pixel Spacing Multiplier: X", u"Pixel Spacing Multiplier: X" ) ) 
		self.LEDBoard_Spacing_Y = self.LEDBoard_Grid.Append( pg.IntProperty( u"Pixel Spacing Multiplier: Y", u"Pixel Spacing Multiplier: Y" ) ) 
		Panel_LEDBoard_Boxer.Add( self.LEDBoard_Grid, 1, wx.ALL|wx.EXPAND, 5 )
		
		
		self.Panel_LEDBoard.SetSizer( Panel_LEDBoard_Boxer )
		self.Panel_LEDBoard.Layout()
		Panel_LEDBoard_Boxer.Fit( self.Panel_LEDBoard )
		self.MainListBook.AddPage( self.Panel_LEDBoard, u"LED Board", False )
		self.Panel_ = wx.Panel( self.MainListBook, wx.ID_ANY, wx.DefaultPosition, wx.DefaultSize, wx.TAB_TRAVERSAL )
		Panel_General_Boxer1 = wx.BoxSizer( wx.VERTICAL )
		
		self.Label_General1 = wx.StaticText( self.Panel_, wx.ID_ANY, u"General Settings", wx.DefaultPosition, wx.DefaultSize, 0 )
		self.Label_General1.Wrap( -1 )
		self.Label_General1.SetFont( wx.Font( wx.NORMAL_FONT.GetPointSize(), 70, 90, 92, True, wx.EmptyString ) )
		
		Panel_General_Boxer1.Add( self.Label_General1, 0, wx.ALL, 5 )
		
		self.General_Grid1 = pg.PropertyGrid(self.Panel_, wx.ID_ANY, wx.DefaultPosition, wx.DefaultSize, wx.propgrid.PG_BOLD_MODIFIED|wx.propgrid.PG_DEFAULT_STYLE|wx.propgrid.PG_SPLITTER_AUTO_CENTER|wx.TAB_TRAVERSAL)
		self.General_CaptureSizeX2 = self.General_Grid1.Append( pg.IntProperty( u"Capture Size: X", u"Capture Size: X" ) ) 
		self.General_CaptureSizeY2 = self.General_Grid1.Append( pg.IntProperty( u"Capture Size: Y", u"Capture Size: Y" ) ) 
		self.General_InitialX2 = self.General_Grid1.Append( pg.IntProperty( u"Initial Window Position: X", u"Initial Window Position: X" ) ) 
		self.General_InitialY2 = self.General_Grid1.Append( pg.IntProperty( u"Initial Window Position: Y", u"Initial Window Position: Y" ) ) 
		Panel_General_Boxer1.Add( self.General_Grid1, 1, wx.ALL|wx.EXPAND, 5 )
		
		
		self.Panel_.SetSizer( Panel_General_Boxer1 )
		self.Panel_.Layout()
		Panel_General_Boxer1.Fit( self.Panel_ )
		self.MainListBook.AddPage( self.Panel_, u"a page", False )
		
		MainFrame_Boxer.Add( self.MainListBook, 1, wx.EXPAND |wx.ALL, 5 )
		
		
		self.SetSizer( MainFrame_Boxer )
		self.Layout()
		
		self.Centre( wx.BOTH )
	
	def __del__( self ):
		pass
	

