if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-6";
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
draw((-1,0)--(-3,0), Arrow);
draw((16,0)--(18,0), Arrow);

draw((0, -1.5)--(15, -1.5), linetype("8 8"), Arrows);

label("$q_1$", (0, 1), N);
label("$q_2$", (15, 1), N);
label("$r_{12}$", (0, -1.5)--(15, -1.5), S);
label("$\vec F_{12}$", (-1,0)--(-3,0), N);
label("$\vec F_{21}$", (16,0)--(18,0), N);
