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
#include "pch.h"
//---------------------------------------------------------------------------
#pragma hdrstop
//---------------------------------------------------------------------------
#pragma package(smart_init)
//---------------------------------------------------------------------------
using namespace Scorpio;
//using namespace Imaging;
using namespace SpectrumPalette;
//---------------------------------------------------------------------------
const   String  g_sPaletteName = "ZX Spectrum";
//---------------------------------------------------------------------------
unsigned char g_cPixelMasks[8] =
{
    0x80,
    0x40,
    0x20,
    0x10,
    0x08,
    0x04,
    0x02,
    0x01
};
//---------------------------------------------------------------------------
const TColor g_ColorsSpectrum[16] =
{
            clBlack   ,
    (TColor)0x00BF0000,
    (TColor)0x000000BF,
    (TColor)0x00BF00BF,
    (TColor)0x0000BF00,
    (TColor)0x00BFBF00,
    (TColor)0x0000BFBF,
    (TColor)0x00BFBFBF,
            clBlack   ,
            clBlue    ,
            clRed     ,
            clFuchsia ,
            clLime    ,
            clAqua    ,
            clYellow  ,
            clWhite
};
//---------------------------------------------------------------------------
const TColor g_ConvertColors[16] =
{
            clBlack   ,
            clNavy    ,
            clMaroon  ,
            clPurple  ,
            clGreen   ,
            clTeal    ,
            clOlive   ,
            clSilver  ,
            clBlack   ,
            clBlue    ,
            clRed     ,
            clFuchsia ,
            clLime    ,
            clAqua    ,
            clYellow  ,
            clWhite
};
//---------------------------------------------------------------------------
const String g_sColors[8] =
{
    "Bk",
    "Bl",
    "Re",
    "Pu",
    "Gr",
    "Cy",
    "Ye",
    "Wh"
};
//---------------------------------------------------------------------------
const   unsigned char   g_iTransparent  =    8; // attribute is transparent
const   unsigned char   g_iInkMask      = 0x07; // ink bits from attribute byte
const   unsigned char   g_iPaperMask    = 0x38; // paper bits from attribute byte
const   unsigned char   g_iBrightMask   = 0x40; // bright bit from attribute byte
const   unsigned char   g_iFlashMask    = 0x80; // flash bit from attribute byte
//---------------------------------------------------------------------------
__fastcall ZXSpectrumPalette::ZXSpectrumPalette()
: ZXPalette(16, 256, 192),
  m_iInk(7),
  m_iPaper(0),
  m_iBright(0),
  m_iFlash(0)
{
    m_bCanConvert = true;
    PalSignature(m_sSignature);
    m_ColorPen    = g_ColorsSpectrum[m_iInk];
    m_ColorBrush  = g_ColorsSpectrum[m_iPaper];
    Initialize();
}
//---------------------------------------------------------------------------
void __fastcall ZXSpectrumPalette::Initialize(void)
{
    m_PixelFormat               = pf32bit;
    // initialize our palette information
    m_iBitsPerPixel             = 1;
    m_iBitsPerAttribute         = 8;
    m_iPixelsWidePerAttribute   = 8;
    m_iPixelsHighPerAttribute   = 8;
    m_fPixelsPerByte            = 8.f;
    m_bSupportsPixelsOnly       = false;
    // normally we would initialize the color table
    for (int i = 0; i < 16; i++)
    {
        SetColor(i, g_ColorsSpectrum[i]);
    }
}
//---------------------------------------------------------------------------
void __fastcall ZXSpectrumPalette::SetInk(unsigned char iInk)
{
    m_iInk       = iInk;
    m_ColorPen   = g_ColorsSpectrum[m_iInk + (8 * m_iBright)];
}
//---------------------------------------------------------------------------
void __fastcall ZXSpectrumPalette::SetPaper(unsigned char iPaper)
{
    m_iPaper     = iPaper;
    m_ColorBrush = g_ColorsSpectrum[m_iPaper + (8 * m_iBright)];
}
//---------------------------------------------------------------------------
void __fastcall ZXSpectrumPalette::SetFlash(unsigned char iFlash)
{
    m_iFlash     = iFlash;
}
//---------------------------------------------------------------------------
void __fastcall ZXSpectrumPalette::SetBright(unsigned char iBright)
{
    m_iBright    = iBright;
    m_ColorPen   = g_ColorsSpectrum[m_iInk   + (8 * m_iBright)];
    m_ColorBrush = g_ColorsSpectrum[m_iPaper + (8 * m_iBright)];
}
//---------------------------------------------------------------------------
void __fastcall ZXSpectrumPalette::SetColorAt(ZXImage& Image, int X, int Y)
{
    // sets the color in the palette to the color
    // dirty the character block
    int dX = (X >> 3) << 3;
    int dY = (Y >> 3) << 3;
    TRect Rect(dX, dY, dX + 8, dY + 8);
    Image.AddRect(Rect);
    SetAttribute(X, Y, m_iInk, m_iPaper, m_iBright, m_iFlash, Image);
    m_ColorPen   = g_ColorsSpectrum[m_iInk   + (8 * m_iBright)];
    m_ColorBrush = g_ColorsSpectrum[m_iPaper + (8 * m_iBright)];
}
//---------------------------------------------------------------------------
void __fastcall ZXSpectrumPalette::GetColorAt(ZXImage& Image, int X, int Y)
{
    if (0 <= X && X < Image.Width && 0 <= Y && Y < Image.Height)
    {
        int iCols = CalculateStride(Image.Width);
        int iCX   = X >> 3; // / 8
        // assign any transparent attributes
        unsigned int AttrOffset  = ((Y >> 3) * iCols) + iCX;
        unsigned char Attr = Image.Attributes[AttrOffset];
        //         is attr transparent?          yes - read new attr             no - use supplied attr
        m_iInk    = (Attr & g_iInkMask   )        ;
        m_iPaper  = (Attr & g_iPaperMask ) >> 3   ;
        m_iBright = (Attr & g_iBrightMask) ? 1 : 0;
        m_iFlash  = (Attr & g_iFlashMask ) ? 1 : 0;
        if (OnUpdatePaletteGUI)
        {
            OnUpdatePaletteGUI();
        }
    }
}
//---------------------------------------------------------------------------
void __fastcall ZXSpectrumPalette::Invert(ZXImage& Image, int X, int Y)
{
    if (0 <= X && X < Image.Width && 0 <= Y && Y < Image.Height)
    {
        // swap the attributes
        Swap(Image, X, Y);
        // calculate the character position
        int dY = Y & 0xFFFFFFF8;
        int iCols = CalculateStride(Image.Width);
        int iCX   = X >> 3; // / 8
        // calculate the offset into the pixel buffer
        unsigned int PixelOffset = ( dY       * iCols) + iCX;
        // and then invert all 8 bytes of the character
        for (int i = 0; i < 8; ++i)
        {
            Image.Pixels[PixelOffset] = Image.Pixels[PixelOffset] ^ 0xFF;
            PixelOffset += iCols;
        }
    }
}
//---------------------------------------------------------------------------
void __fastcall ZXSpectrumPalette::Swap(ZXImage& Image, int X, int Y)
{
    if (0 <= X && X < Image.Width && 0 <= Y && Y < Image.Height)
    {
        // swaps the attributes only
        // dirty the character block
        int dX = (X >> 3) << 3;
        int dY = (Y >> 3) << 3;
        TRect Rect(dX, dY, dX + 8, dY + 8);
        Image.AddRect(Rect);
        unsigned char Attr = GetAttribute(X, Y, Image);
        unsigned char iInk    = (Attr & g_iInkMask   )        ;
        unsigned char iPaper  = (Attr & g_iPaperMask ) >> 3   ;
        unsigned char iBright = (Attr & g_iBrightMask) ? 1 : 0;
        unsigned char iFlash  = (Attr & g_iFlashMask ) ? 1 : 0;
        SetAttribute(X, Y, iPaper, iInk, iBright, iFlash, Image);
    }
}
//---------------------------------------------------------------------------
void __fastcall ZXSpectrumPalette::Write(int X, int Y, bool bSet, ZXImage& Image)
{
    // dirty the character block
    int dX = (X >> 3) << 3;
    int dY = (Y >> 3) << 3;
    TRect Rect(dX, dY, dX + 8, dY + 8);
    Image.AddRect(Rect);
    // write the pixel to the image
    SetPixel(X, Y, m_iInk, m_iPaper, m_iBright, m_iFlash, bSet, Image);
}
//---------------------------------------------------------------------------
void __fastcall ZXSpectrumPalette::Draw(ZXImage& Image, Graphics::TBitmap* Bitmap)
{
    //PERFORMANCE_PUSH
    // loop through the character block and set all the ink and paper values
    Bitmap->PixelFormat = pf32bit;
    int iCols = CalculateStride(Image.Width);
    TRect UpdateRect;
    int iRects = Image.Rects();
    for (int rect = 0; rect < iRects; ++rect)
    {
        Image.GetRect(rect, UpdateRect);
        for (int y = UpdateRect.Top; y < UpdateRect.Bottom; y += 8)
        {
            for (int x = UpdateRect.Left; x < UpdateRect.Right; x += 8)
            {
                unsigned char Attr   = Image.Attributes[((y >> 3) * iCols) + (x >> 3)];
                int iCX = x >> 3;
                int iInk    = (Attr & g_iInkMask   );
                int iPaper  = (Attr & g_iPaperMask ) >> 3;
                int iBright = (Attr & g_iBrightMask) ? 1 : 0;
                //int iFlash  = (Attr & g_iFlashMask ) ? 1 : 0;
                // apply brightness to the ink and paper
                iInk   = iBright * 8 + iInk;
                iPaper = iBright * 8 + iPaper;
                TColor cPaper = ShowAttributes ? g_ColorsSpectrum[iPaper] : clBlack;
                TColor cInk   = ShowAttributes ? g_ColorsSpectrum[iInk  ] : clWhite;
                for (int i = 0; i < 8; ++i)
                {
                    unsigned char Pixels = Image.Pixels[((y+i) * iCols) + iCX];
                    Bitmap->Canvas->Pixels[x+0][y+i] = (Pixels & g_cPixelMasks[0]) ? cInk : cPaper;
                    Bitmap->Canvas->Pixels[x+1][y+i] = (Pixels & g_cPixelMasks[1]) ? cInk : cPaper;
                    Bitmap->Canvas->Pixels[x+2][y+i] = (Pixels & g_cPixelMasks[2]) ? cInk : cPaper;
                    Bitmap->Canvas->Pixels[x+3][y+i] = (Pixels & g_cPixelMasks[3]) ? cInk : cPaper;
                    Bitmap->Canvas->Pixels[x+4][y+i] = (Pixels & g_cPixelMasks[4]) ? cInk : cPaper;
                    Bitmap->Canvas->Pixels[x+5][y+i] = (Pixels & g_cPixelMasks[5]) ? cInk : cPaper;
                    Bitmap->Canvas->Pixels[x+6][y+i] = (Pixels & g_cPixelMasks[6]) ? cInk : cPaper;
                    Bitmap->Canvas->Pixels[x+7][y+i] = (Pixels & g_cPixelMasks[7]) ? cInk : cPaper;
                }
            }
        }
    }
    //PERFORMANCE_POP(__FUNC__);
}
//---------------------------------------------------------------------------
void __fastcall ZXSpectrumPalette::SetPixel(int iX, int iY, unsigned char iInk, unsigned char iPaper, unsigned char iBright, unsigned char iFlash, bool bSet, ZXImage& Image)
{
    //PERFORMANCE_PUSH
    if (0 <= iX && iX < Image.Width && 0 <= iY && iY < Image.Height)
    {
        int iCols = CalculateStride(Image.Width);
        int iCX   = iX >> 3; // / 8
        // assign any transparent attributes
        unsigned int PixelOffset = ( iY       * iCols) + iCX;
        unsigned int AttrOffset  = ((iY >> 3) * iCols) + iCX;
        unsigned char Attr = Image.Attributes[AttrOffset];
        //         is attr transparent?          yes - read new attr             no - use supplied attr
        iInk    = (g_iTransparent == iInk   ) ?  (Attr & g_iInkMask   )          : iInk;
        iPaper  = (g_iTransparent == iPaper ) ? ((Attr & g_iPaperMask ) >> 3   ) : iPaper;
        iBright = (g_iTransparent == iBright) ? ((Attr & g_iBrightMask) ? 1 : 0) : iBright;
        iFlash  = (g_iTransparent == iFlash ) ? ((Attr & g_iFlashMask ) ? 1 : 0) : iFlash;
        // set the appropreiate pixels and attribute
        unsigned char cPixelBit   = 128 >> (iX % 8);
        unsigned char cAttribute  = (unsigned char)(iInk | (iPaper << 3) | (iBright << 6) | (iFlash << 7));
        // set or reset the pixel
        Image.Pixels[PixelOffset] = bSet ? (Image.Pixels[PixelOffset] | cPixelBit) : (Image.Pixels[PixelOffset] & ~cPixelBit);
        // apply the attribute
        Image.Attributes[AttrOffset ] = cAttribute;
    }
    //PERFORMANCE_POP(__FUNC__)
}
//---------------------------------------------------------------------------
void __fastcall ZXSpectrumPalette::SetPixel(int iX, int iY, unsigned char PixelByte, ZXImage* Image)
{
    if (0 <= iX && iX < Image->Width && 0 <= iY && iY < Image->Height)
    {
        int iCharWidth = CalculateStride(Image->Width);
        Image->Pixels[(iY * iCharWidth) + (iX / 8)] = PixelByte;
    }
}
//---------------------------------------------------------------------------
void __fastcall ZXSpectrumPalette::SetAttribute(int iX, int iY, unsigned char iInk, unsigned char iPaper, unsigned char iBright, unsigned char iFlash, ZXImage& Image)
{
    if (0 <= iX && iX < Image.Width && 0 <= iY && iY < Image.Height)
    {
        int iCols = CalculateStride(Image.Width);
        int iCX   = iX >> 3; // / 8
        // assign any transparent attributes
        unsigned int AttrOffset  = ((iY >> 3) * iCols) + iCX;
        unsigned char Attr = Image.Attributes[AttrOffset];
        //         is attr transparent?          yes - read new attr             no - use supplied attr
        iInk    = (g_iTransparent == iInk   ) ?  (Attr & g_iInkMask   )          : iInk;
        iPaper  = (g_iTransparent == iPaper ) ? ((Attr & g_iPaperMask ) >> 3   ) : iPaper;
        iBright = (g_iTransparent == iBright) ? ((Attr & g_iBrightMask) ? 1 : 0) : iBright;
        iFlash  = (g_iTransparent == iFlash ) ? ((Attr & g_iFlashMask ) ? 1 : 0) : iFlash;
        // set the appropreiate pixels and attribute
        unsigned char cAttribute  = (unsigned char)(iInk | (iPaper << 3) | (iBright << 6) | (iFlash << 7));
        // apply the attribute
        Image.Attributes[AttrOffset ] = cAttribute;
    }
}
//---------------------------------------------------------------------------
unsigned char __fastcall ZXSpectrumPalette::GetAttribute(int iX, int iY, ZXImage& Image)
{
    unsigned char Attr = 0;
    if (0 <= iX && iX < Image.Width && 0 <= iY && iY < Image.Height)
    {
        int iCols = CalculateStride(Image.Width);
        int iCX   = iX >> 3; // / 8
        // assign any transparent attributes
        Attr = Image.Attributes[((iY >> 3) * iCols) + iCX];
    }
    return Attr;
}
//---------------------------------------------------------------------------
void __fastcall ZXSpectrumPalette::SetAttribute(int iX, int iY, unsigned char Attribute, ZXImage* Image)
{
    if (0 <= iX && iX < Image->Width && 0 <= iY && iY < Image->Height)
    {
        int iCharWidth = CalculateStride(Image->Width);
        Image->Attributes[((iY >> 3) * iCharWidth) + (iX >> 3)] = Attribute;
    }
}
//---------------------------------------------------------------------------
bool __fastcall ZXSpectrumPalette::Convert(ZXImage* Image, Graphics::TBitmap* Bitmap)
{
    bool bConverted = false;
    if (true == SAFE_PTR(Bitmap))
    {
        TRect Rect(0, 0, Image->Width, Image->Height);
        // convert the bitmap into a 16 color bitmap
        Bitmap->PixelFormat = pf4bit;
        // now convert each 8x8 character block into 2 colors only
        // rules:
        //  1. the most common color in the character block is the ink color
        //  2. the second most common color is the paper color
        //  3. any other color becomes an ink color
        //  4. if other 1 color then paper is black

        // loop through all the rows
        int iXS = 0;            
        int iXE = Image->Width;
        int iYS = 0;
        int iYE = Image->Height;

        for (int cy = iYS; cy < iYE; cy += 8)
        {
            // loop through all the columns
            for (int cx = iXS; cx < iXE; cx += 8)
            {
                unsigned char Ink   = 0;    // black ink
                unsigned char Paper = 0;    // black paper
                // find the most common colors
                FindColors(Bitmap, cx, cy, Ink, Paper);
                // set pixels according to the most common pair of colors
                SetColors (Image, Bitmap, cx, cy, Ink, Paper);
            }
        }
        bConverted = true;
    }
    return bConverted;
}
//---------------------------------------------------------------------------
void __fastcall ZXSpectrumPalette::FindColors(Graphics::TBitmap* Bitmap, int iX, int iY, unsigned char& Ink, unsigned char& Paper)
{
    int iColorCounts[16] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

    for (int y = iY; y < iY + 8; y++)
    {
        for (int x = iX; x < iX + 8; x++)
        {
            if (0 <= x && x < Bitmap->Width && 0 <= y && y < Bitmap->Height)
            {
                iColorCounts[GetColorIndex(Bitmap->Canvas->Pixels[x][y])]++;
            }
        }
    }

    // find the most common ink color (ie. not black!)
    unsigned char iInk = 1;
    for (int i = 1; i < 16; i++)
    {
        if (0 != iColorCounts[i] && iColorCounts[iInk] <= iColorCounts[i])
        {
            iInk = i;
            Ink  = i;
        }
    }
    unsigned char iPaper = Ink;
    iColorCounts[iInk] = 0;
    // find the most common other color (includes black)
    for (int i = 0; i < 16; i++)
    {
        if (iColorCounts[iPaper] < iColorCounts[i])
        {
            iPaper = i;
            Paper  = i;
        }
    }
}
//---------------------------------------------------------------------------
void __fastcall ZXSpectrumPalette::SetColors(ZXImage* Image, Graphics::TBitmap* Bitmap, int iX, int iY, unsigned char Ink, unsigned char Paper)
{
    unsigned char Bright = Ink > 7 ? 0x40 : 0x00;
    for (int y = iY; y < iY + 8; y++)
    {
        unsigned char Pixels = 0;
        for (int x = iX; x < iX + 8; x++)
        {
            // change the non-ink/paper colors to the ink color
            if (Bitmap->Canvas->Pixels[x][y] != g_ConvertColors[Ink] && Bitmap->Canvas->Pixels[x][y] != g_ConvertColors[Paper])
            {
                Bitmap->Canvas->Pixels[x][y] = g_ConvertColors[Ink];
            }
            int iBit = 0x80 >> (x % 8);
            Pixels |= (Bitmap->Canvas->Pixels[x][y] == g_ConvertColors[Ink] && 0 != Ink ) ? iBit : 0;
        }
        SetPixel(iX, y, Pixels, Image);
    }
    Ink   = Ink   & 0x07;
    Paper = Paper & 0x07;
    unsigned char Attribute = Ink | (Paper << 3) | Bright;
    SetAttribute(iX, iY, Attribute, Image);
}
//---------------------------------------------------------------------------
unsigned char __fastcall ZXSpectrumPalette::GetColorIndex(TColor Color)
{
    unsigned char ColorIndex = 0;
    for (int i = 0; i < 16; i++)
    {
        if (Color == g_ConvertColors[i] || Color == g_ColorsSpectrum[i])
        {
            ColorIndex = i;
            break;
        }
    }
    return ColorIndex;
}
//---------------------------------------------------------------------------
String __fastcall ZXSpectrumPalette::GetName(void)
{
    return g_sPaletteName;
}
//---------------------------------------------------------------------------
String __fastcall ZXSpectrumPalette::GetColorAsString(ZXImage& Image, int X, int Y)
{
    String sColor("None");
    if (0 <= X && X < Image.Width && 0 <= Y && Y < Image.Height)
    {
        int iCols = CalculateStride(Image.Width);
        int iCX   = X >> 3; // / 8
        // assign any transparent attributes
        unsigned int AttrOffset  = ((Y >> 3) * iCols) + iCX;
        unsigned char Attr = Image.Attributes[AttrOffset];
        sColor  = Attr & 0x80 ? String("F ") : String("f ");
        sColor += Attr & 0x40 ? String("B ") : String("b ");
        sColor += g_sColors[(Attr & 0x38) >> 3] + " ";
        sColor += g_sColors[(Attr & 0x07)     ];
    }
    return sColor;
}
//---------------------------------------------------------------------------

