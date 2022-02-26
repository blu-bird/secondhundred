if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-3";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;
size(8cm);

draw(unitcircle);
draw(shift(15, 0) * unitcircle);

draw((0, -1.5)--(15, -1.5), linetype("8 8"), Arrows);
draw((1,0)--(3,0), Arrow);
draw((14,0)--(12,0), Arrow);

label("$m_1$", (0, 1), N);
label("$m_2$", (15, 1), N);
label("$r_{12}$", (0, -1.5)--(15, -1.5), S);
label("$\vec F_{12}$", (1,0)--(3,0), N);
label("$\vec F_{21}$", (14,0)--(12,0), N);
