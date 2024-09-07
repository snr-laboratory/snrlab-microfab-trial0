#include "RVersion.h"

TStyle* RootStyle() {

    TStyle *RootStyle = new TStyle("Root-Style","The Perfect Style for Plots ;-)");

#ifdef __CINT__
    TStyle *GloStyle;
    GloStyle = gStyle; // save the global style reference

    gStyle = RootStyle;
#endif
    // otherwise you need to call TROOT::SetStyle("Root-Style")

    // Paper size

    RootStyle->SetPalette(1,0);
    RootStyle->SetPaperSize(TStyle::kUSLetter);
    RootStyle->SetFillStyle(0);

    // Canvas

    RootStyle->SetCanvasColor     (0);
    RootStyle->SetCanvasBorderSize(5);
    RootStyle->SetCanvasBorderMode(0);
    RootStyle->SetCanvasDefH      (504);
    RootStyle->SetCanvasDefW      (720);
    RootStyle->SetCanvasDefX      (10);
    RootStyle->SetCanvasDefY      (10);

    // Pads

    RootStyle->SetPadColor       (0);
    RootStyle->SetPadBorderSize  (5);
    RootStyle->SetPadBorderMode  (0);
    //RootStyle->SetPadBottomMargin(0.13);
    //RootStyle->SetPadTopMargin   (0.08);
    //RootStyle->SetPadLeftMargin  (0.18);
    RootStyle->SetPadRightMargin (0.11);
    RootStyle->SetPadGridX       (0);
    RootStyle->SetPadGridY       (0);
    RootStyle->SetPadTickX       (1);
    RootStyle->SetPadTickY       (1);

    // Frames

    RootStyle->SetFrameFillStyle (0);
    RootStyle->SetFrameFillColor (0);
    RootStyle->SetFrameLineColor (1);
    RootStyle->SetFrameLineStyle (0);
    RootStyle->SetFrameLineWidth (1);
    RootStyle->SetFrameBorderSize(5);
    RootStyle->SetFrameBorderMode(0);

    // Histograms

    RootStyle->SetHistFillColor(0);
    RootStyle->SetHistFillStyle(1);
    RootStyle->SetHistLineColor(1);
    RootStyle->SetHistLineStyle(1);
    RootStyle->SetHistLineWidth(1);

    // Functions

    RootStyle->SetFuncColor(2);
    RootStyle->SetFuncStyle(1);
    RootStyle->SetFuncWidth(1);

    // Legends

    RootStyle->SetLegendBorderSize(1);
    RootStyle->SetStatBorderSize(1);
    RootStyle->SetStatFont      (42);
    //RootStyle->SetOptStat       (111111);
    RootStyle->SetOptStat       (0);
    RootStyle->SetStatColor     (0);
    RootStyle->SetStatX         (0.88);
    RootStyle->SetStatY         (0.88);
    RootStyle->SetStatFontSize  (0.02);
    RootStyle->SetStatW         (0.15);
    RootStyle->SetStatH         (0.15);

    // Labels, Ticks, and Titles

    RootStyle->SetTickLength ( 0.015,"X");
    RootStyle->SetTitleSize  ( 0.04,"X");
    RootStyle->SetTitleOffset( 1.1,"X");
    RootStyle->SetTitleBorderSize(0);
    //  RootStyle->SetTitleFontSize((double)3.);
    RootStyle->SetLabelOffset( 0.015,"X");
    RootStyle->SetLabelSize  ( 0.035,"X");
    RootStyle->SetLabelFont  ( 42   ,"X");

    RootStyle->SetTickLength ( 0.015,"Y");
    RootStyle->SetTitleSize  ( 0.04,"Y");
    RootStyle->SetTitleOffset( 1.3,"Y");
    RootStyle->SetLabelOffset( 0.015,"Y");
    RootStyle->SetLabelSize  ( 0.035,"Y");
    RootStyle->SetLabelFont  ( 42   ,"Y");
    RootStyle->SetTitleFont(42, "P");

    RootStyle->SetTitleFont  (42, "XYZ");
    RootStyle->SetTitleColor (1);
    RootStyle->SetTitleBorderSize(0);
    RootStyle->SetTitleFillColor(0);
    RootStyle->SetOptTitle(1);

    RootStyle->SetTitleX(0.1);
    RootStyle->SetTitleW(0.8);

    // Options

    RootStyle->SetOptFit(1);

    RootStyle->SetMarkerStyle(20);
    RootStyle->SetMarkerSize(0.5);

    // palette

    const Int_t NRGBs = 5;
    const Int_t NCont = 255;

    Double_t stops[NRGBs] = { 0.00, 0.34, 0.61, 0.84, 1.00 };
    Double_t red[NRGBs]   = { 0.00, 0.00, 0.87, 1.00, 0.51 };
    Double_t green[NRGBs] = { 0.00, 0.81, 1.00, 0.20, 0.00 };
    Double_t blue[NRGBs]  = { 0.51, 1.00, 0.12, 0.00, 0.00 };
    TColor::CreateGradientColorTable(NRGBs, stops, red, green, blue, NCont);
    RootStyle->SetNumberContours(NCont);

    return RootStyle;
} // method RootStyle
