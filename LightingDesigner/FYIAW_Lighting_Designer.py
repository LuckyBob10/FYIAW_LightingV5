import json
import wx
import pdb

class FYIAW_Treebook(wx.Treebook):
    tree_pages = {
        "General": "General settings",
        "LED Board": "Settings for FadeCandy devices",
        "DMX": {
            "Beat Detection": "Overall settings for beat detection",
            "DMX Groups": {
                "New": "Create a new DMX lighting group"
            }
        }  
    }

    def __init__(self, parent):
        wx.Treebook.__init__(
            self,
            parent,
            id = wx.ID_ANY,
            style = wx.BK_DEFAULT
        )

    def add_page(self, pages):
        for page, desc in pages.items():
            if isinstance(page, list):
                self.add_page(page)
            else:
                print(desc)

class LightingFrame(wx.Frame):
    """
    Constructor
    """
    def __init__(self):
        wx.Frame.__init__(
            self,
            None,
            wx.ID_ANY,
            "FYIAW Lighting Config v5",
            size = (700, 400)
        )
        panel = wx.Panel(self)
        notebook = FYIAW_Treebook(panel)    
        self.Layout()
        self.Show()

if __name__ == "__main__":
    app = wx.App()
    window = wx.Frame(
        None,
        title = "FYIAW Lighting Config v1",
        size = (800, 600)
    )
    panel = wx.Panel(window)
    
    window.Show(True)
    app.MainLoop()