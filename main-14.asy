if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-14";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(100);
dot((0,0));
draw((0,0)--dir(30), Arrow);
draw((0,0)--dir(225), Arrow);
label("$\vec{F_1}$", (0,0)--dir(30));
label("$\vec{F_2}$", (0,0)--dir(225));
