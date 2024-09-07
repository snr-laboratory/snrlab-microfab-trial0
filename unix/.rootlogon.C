{
    gROOT->ProcessLine(".L ~/Work/Program/UtilLib/vecvec.C+");
    gROOT->ProcessLine(".L ~/.rootstyle.C");
    gROOT->ForceStyle();
    gStyle = RootStyle();

    cout << "~/.rootlogon.C: use style " << gStyle->GetName()
         << " [" << gStyle->GetTitle() << "]" << endl;
  
    cout << endl;
}
