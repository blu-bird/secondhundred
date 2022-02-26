if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import three;
size(6cm);
triple eye = (7, 8, 5);
currentprojection = perspective(eye);
triple center = (0, 0, 0);
real R = 1, y = 2;
draw(circle(center, R, Z));
dot((0, 0, y));
real dqAngle = -20, dqDelta = 6;
draw(arc(center, R,
90, dqAngle - dqDelta,
90, dqAngle + dqDelta), linewidth(2));
draw(dir(90, dqAngle) -- (0, 0, y), linetype("6 6"));
triple radiusPt = R * dir(90, 170);
draw((0, 0, 0)--radiusPt, gray(0.2));
draw((0, 0, 0)--(0, 0, y), gray(0.2));

label("$M$", (0, R, 0), dir(-90));
label("$m_0$", (0, 0, y), dir(130));
label("$dM$", dir(90, dqAngle), dir(200));
label("$R$", radiusPt/2, dir(-40));
label("$y$", (0, 0, y/2), dir(0));
