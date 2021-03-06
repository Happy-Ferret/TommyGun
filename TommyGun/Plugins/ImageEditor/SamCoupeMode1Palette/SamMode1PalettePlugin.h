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
#ifndef SamMode1PalettePluginH
#define SamMode1PalettePluginH
//-- APP --------------------------------------------------------------------
#include "..\ZXImageInterface.h"
#include "ZXBasePlugin.h"
//---------------------------------------------------------------------------
using namespace Scorpio;
using namespace Plugin;
//using namespace ImageEditor;
//---------------------------------------------------------------------------
// Plugin Class
/**
 * @class   ZXSpectrumFormat class
 * @brief   This class was generated by the KiwiWare Plugin Wizard.
 * @brief   It is the basis for constructing a KiwiWare compatible plugin.
 * @author  KiwiWare Plugin Wizard
 * @date    Created 17 December 2001 by Tony Thompson
 * @remarks Copyright Scorpio Software 2001
 */
//---------------------------------------------------------------------------
class ZXSpectrumFormat : public ZXBasePlugin
{
public:
                    __fastcall  ZXSpectrumFormat();
                    __fastcall ~ZXSpectrumFormat();

            HRESULT __fastcall  InitialisePlugin    (ZXPlugin* pPlugin);
            HRESULT __fastcall  ReleasePlugin       (void);
            void    __fastcall  RegisterEvents      (void);

            HRESULT __fastcall  GetPalette(ZXPalette*& Palette);
            HRESULT __fastcall  GetPalettePanel(TPanel*& Panel);
    // Events
    //static  HRESULT WINAPI      EventSaveQuery      (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
};
//---------------------------------------------------------------------------
ZXSpectrumFormat* NewPluginClass(void);
//---------------------------------------------------------------------------
#endif
