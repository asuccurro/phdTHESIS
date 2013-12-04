rm fmf*
latex feyndiag_vlqPairProd.tex
mf '\mode:=localfont; input fmfvlqpp'
latex feyndiag_vlqPairProd.tex
dvips feyndiag_vlqPairProd.dvi
ps2pdf feyndiag_vlqPairProd.ps
pdfcrop feyndiag_vlqPairProd.pdf

latex feyndiag_TT_HtX.tex
mf '\mode:=localfont; input fmfhtx'
latex feyndiag_TT_HtX.tex
dvips feyndiag_TT_HtX.dvi
ps2pdf feyndiag_TT_HtX.ps
pdfcrop feyndiag_TT_HtX.pdf

latex feyndiag_BB_ssdilep.tex
mf '\mode:=localfont; input fmfss'
latex feyndiag_BB_ssdilep.tex
dvips feyndiag_BB_ssdilep.dvi
ps2pdf feyndiag_BB_ssdilep.ps
pdfcrop feyndiag_BB_ssdilep.pdf

