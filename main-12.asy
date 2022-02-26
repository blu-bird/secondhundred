if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-12";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;
size(9cm);

real y = 5;
dot((0, y));

draw((0,0)--(-10,0), linetype("4 4"), Arrow);
draw((5.5,0)--(10,0), linetype("4 4"), Arrow);
draw((-4.25,0)--(0,y), linetype("6 6"));
draw((0, y)--(0,0));
draw((-4,0)--(-4.5,0), linewidth(2));
draw((0,0)--(5.5,0), linetype("4 4"), Arrow);

label("$y$", (0, y/2), dir(0));
label("$x$", (-2, -0.5), dir(270));
label("$dx$", (-4.25, -0.5), dir(270)*0.2);
label("$I$", (5.5, 0), dir(50));
label("$P$", (y,0), dir(130));
