/*---------------------------------------------------------------------------

    (c) 2004 Scorpio Software
        19 Wittama Drive
        Glenmore Park
        Sydney NSW 2745
        Australia

-----------------------------------------------------------------------------

    $Workfile::                                                           $
    $Revision::                                                           $
        $Date::                                                           $
      $Author::                                                           $

---------------------------------------------------------------------------*/
//---------------------------------------------------------------------------
#ifndef ZXImageEditorH
#define ZXImageEditorH
//-- APP --------------------------------------------------------------------
#include "fImageEditor.h"
#include "ZXImageManager.h"
#include "ZXBasePlugin.h"
//---------------------------------------------------------------------------
using namespace Scorpio;
using namespace Plugin;
//using namespace Imaging;
//---------------------------------------------------------------------------
typedef int    (WINAPI *StdCallPtr          )(void);
//- FORMAT PLUGIN INTERFACES ------------------------------------------------
typedef HRESULT(WINAPI *GetPalettePtr       )(ZXPalette*& Palette);
typedef HRESULT(WINAPI *GetPalettePanelPtr  )(TPanel*& PalettePanel);
typedef HRESULT(WINAPI *PaletteSignaturePtr )(String& sSignature);
//- TOOL PLUGIN INTERFACES --------------------------------------------------
typedef HRESULT(WINAPI *MouseDownPtr        )(ZXImage* Image, TMouseButton Button, TShiftState Shift, int X, int Y);
typedef HRESULT(WINAPI *MouseMovePtr        )(ZXImage* Image, TShiftState Shift, int X, int Y);
typedef HRESULT(WINAPI *MouseUpPtr          )(ZXImage* Image, TMouseButton Button, TShiftState Shift, int X, int Y);
typedef HRESULT(WINAPI *CursorPtr           )(TCursor& Cursor);
typedef HRESULT(WINAPI *ImageChangePtr      )(ZXImage* Image);
//- TYPE PLUGIN INTERFACES --------------------------------------------------
typedef HRESULT(WINAPI *TypeSignaturePtr    )(String& sSignature);
typedef HRESULT(WINAPI *TypeSetPalettesPtr  )(TStrings* pPalettes, std::vector<String>& vSignatures);
//- IMPORT PLUGIN INTERFACES ------------------------------------------------
//- EXPORT PLUGIN INTERFACES ------------------------------------------------
//---------------------------------------------------------------------------
// Plugin Class
/**
 * @class   ZXImageEditor class
 * @brief   This class was generated by the KiwiWare Plugin Wizard.
 * @brief   It is the basis for constructing a KiwiWare compatible plugin.
 * @author  KiwiWare Plugin Wizard
 * @date    Created 17 December 2001 by Tony Thompson
 * @remarks Copyright Scorpio Software 2001
 */
//---------------------------------------------------------------------------
class ZXImageEditor : public ZXBasePlugin
{
private:
    typedef struct
    {
        ZXPlugin*           pPlugin;
        String              sPaletteName;
        String              sSignature;
        TPanel*             pPalettePanel;
        ZXPalette*          pPalette;
        // interfaces
        GetPalettePtr       pGetPaletteFunc;
        GetPalettePanelPtr  pGetPalettePanelFunc;
        PaletteSignaturePtr pPaletteSignatureFunc;
    } ZXFormatPluginInfo;
    typedef struct
    {
        ZXPlugin*           pPlugin;
        // interfaces
        MouseDownPtr        pMouseDownFunc;
        MouseMovePtr        pMouseMoveFunc;
        MouseUpPtr          pMouseUpFunc;
        CursorPtr           pCursorFunc;
        ImageChangePtr      pImageChangeFunc;
    } ZXToolPluginInfo;
    typedef struct
    {
        ZXPlugin*           pPlugin;
        String              sPurpose;
        // interfaces
        TypeSignaturePtr    pTypeSignatureFunc;
        TypeSetPalettesPtr  pTypeSetPalettesFunc;
    } ZXTypePluginInfo;
    typedef struct
    {
        ZXPlugin*           pPlugin;
        String              sPurpose;
        // interfaces
        TypeSetPalettesPtr  pTypeSetPalettesFunc;
    } ZXImportPluginInfo;
    typedef struct
    {
        ZXPlugin*           pPlugin;
        String              sPurpose;
        // interfaces
    } ZXExportPluginInfo;

    typedef struct
    {
        String              sOwner;
        int                 iIndex;
        int                 iFrame;
    } ZXImageInfo;

private:
    bool                        m_bDirty;
    bool                        m_bUndoInProgress;
    TPanel*                     m_pPalettePanel;
    ZXImageManager              m_ImageManager;
    TZX_HPLUGIN                 m_PluginHandle;
    String                      m_sCurrentOwner;
    ZXImageInfo                 m_CurrentImage;

    std::vector<ZXFormatPluginInfo*>    m_FormatPlugins;
    std::vector<ZXToolPluginInfo*>      m_ToolPlugins;
    std::vector<ZXTypePluginInfo*>      m_TypePlugins;
    std::vector<ZXImportPluginInfo*>    m_ImportPlugins;
    std::vector<ZXExportPluginInfo*>    m_ExportPlugins;

    String          __fastcall  ExtractPurpose(const String& sPluginDescription);
    void            __fastcall  GetFormatInterfaces(ZXPlugin* Plugin);
    void            __fastcall  GetToolInterfaces(ZXPlugin* Plugin);
    void            __fastcall  GetTypeInterfaces(ZXPlugin* Plugin);
    void            __fastcall  GetImportInterfaces(ZXPlugin* Plugin);
    void            __fastcall  GetExportInterfaces(ZXPlugin* Plugin);
    void            __fastcall  OrganisePlugins(void);
    void            __fastcall  FillFormatBoxes(void);
    void            __fastcall  SelectFormat(unsigned int iFormat);
    void            __fastcall  AssignPalettes(void);
    void            __fastcall  UndoRestore(KXmlInfo* xmlInfo);
    void            __fastcall  UndoImageChange(KXmlInfo* xmlInfo);
    void            __fastcall  UndoImageSelection(KXmlInfo* xmlInfo);

    void            __fastcall  OnImageChanged(const String& sName, const String& sOwner, TZXChangeOperation Operation);
    void            __fastcall  OnImageRenamed(const String& sOldName, const String& sNewName, const String& sOwner, int iIndex);
    void            __fastcall  OnPostMessage(TZXMsgRecipenent Recipenent, DWORD dwMsg, LPDATA lpData, DWORD dwParam, DWORD dwArg);

public:
                    __fastcall  ZXImageEditor();
                    __fastcall ~ZXImageEditor();

            // Standard plugin interfaces
            HRESULT __fastcall  InitialisePlugin    (ZXPlugin* pPlugin);
            HRESULT __fastcall  ReleasePlugin       (void);
            void    __fastcall  RegisterEvents      (void);

            // Mini Plugin interfaces
            HRESULT __fastcall  RegisterPluginEvent (TZX_HPLUGIN PluginHandle, TZX_EVENT Event);
            HRESULT __fastcall  NotifyPluginEvent   (TZX_HPLUGIN PluginHandle, TZX_EVENT Event, LPDATA lpData, DWORD dwParam, DWORD dwArg);

            // mini-plugin system interfaces
            HRESULT __fastcall  SystemUpdateImage   (TZX_HPLUGIN PluginHandle, ZXImage* Image);  // refresh the selected image
            HRESULT __fastcall  SystemRefreshView   (TZX_HPLUGIN PluginHandle);  // refresh the current image
            HRESULT __fastcall  SystemAddToolBar    (TZX_HPLUGIN PluginHandle, TToolBar*  ToolBar );  // add a toolbar to the main toolbars show/hide when appropreiate
            // mini-plugin tools interfaces
            HRESULT __fastcall  ToolMergePaintToolBar(TZX_HPLUGIN PluginHandle, TToolBar* ToolBar);
    bool            __fastcall  DoToolMouseDown     (ZXImage* Image, TMouseButton Button, TShiftState Shift, int X, int Y);
    bool            __fastcall  DoToolMouseMove     (ZXImage* Image, TShiftState Shift, int X, int Y);
    bool            __fastcall  DoToolMouseUp       (ZXImage* Image, TMouseButton Button, TShiftState Shift, int X, int Y);
    TCursor         __fastcall  DoToolCursor        (void);
    void            __fastcall  DoToolImageChange   (ZXImage* Image);
            // mini-plugin types interfaces
            HRESULT __fastcall  TypeAddTab          (TZX_HPLUGIN PluginHandle, const String& sCaption, Graphics::TBitmap* pBitmap, TTabSheet*& pTabSheet);
            HRESULT __fastcall  TypeGetImageManager (TZX_HPLUGIN PluginHandle, ZXImageManager*& pImageManager);
            HRESULT __fastcall  TypeSelectImage     (TZX_HPLUGIN PluginHandle, const String& sOwner, int iIndex, int iFrame);
            // mini-plugin import interfaces
            // mini-plugin export interfaces
            HRESULT __fastcall  ImageGetCurrent     (ZXImage*& pImage);

    ZXImage*        __fastcall  CreateImage         (int iWidth, int iHeight, bool bMasked, unsigned int iPalette);
    void            __fastcall  SelectPalette       (ZXPalette* Palette);


    // Events
    static  HRESULT WINAPI      EventSaveQuery      (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventGetImageBitmaps(ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventGetImageNames  (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI     EventGetImageSubTypes(ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventXmlNew         (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventXmlPostLoad    (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventXmlPreSave     (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventXmlUpdate      (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventXmlUndoRestore (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventQueryEditFeatures(ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventEditCopy       (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventEditCut        (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventEditPaste      (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventEditDelete     (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventKeyPanel       (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
};
//---------------------------------------------------------------------------
ZXImageEditor* NewPluginClass(void);
extern const String g_sSignature;
extern ZXPluginManager g_MiniPluginManager;
//---------------------------------------------------------------------------
#endif//ZXImageEditor