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
#ifndef StringEditorH
#define StringEditorH
//-- APP --------------------------------------------------------------------
#include "fStringEditor.h"
#include "ZXBasePlugin.h"
//---------------------------------------------------------------------------
using namespace Scorpio;
using namespace Plugin;
//---------------------------------------------------------------------------
// Plugin Class
/**
 * @class   ZXStringEditor class
 * @brief   This class was generated by the KiwiWare Plugin Wizard.
 * @brief   It is the basis for constructing a KiwiWare compatible plugin.
 * @author  KiwiWare Plugin Wizard
 * @date    Created 17 December 2001 by Tony Thompson
 * @remarks Copyright KiwiWare 2001
 */
//---------------------------------------------------------------------------
class ZXStringEditor : public ZXBasePlugin
{
private:
    bool                        m_bDirty;

public:
                    __fastcall  ZXStringEditor();
                    __fastcall ~ZXStringEditor();

            HRESULT __fastcall  InitialisePlugin    (ZXPlugin* pPlugin);
            HRESULT __fastcall  ReleasePlugin       (void);
            void    __fastcall  RegisterEvents      (void);

    // Events
    static  HRESULT WINAPI      EventSaveQuery      (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventNew            (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventLoad           (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventSave           (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventXmlUpdate      (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
    static  HRESULT WINAPI      EventKeyPanel       (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
};
//---------------------------------------------------------------------------
ZXBasePlugin* NewPluginClass(void);
//---------------------------------------------------------------------------
#endif
