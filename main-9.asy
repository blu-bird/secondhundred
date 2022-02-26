if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-9";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import graph;
size(4cm);
draw(Circle((0, 0), 0.2));
dot((0,0));
draw((0,0)--(1.5, 0));
dot((1.5, 0));
draw(Circle((0, 0), 1.5), linetype("4 4"));

label("$q$", dir(60)*0.2, dir(120));
label("$r$", (0,0)--(1.5,0), dir(90));
