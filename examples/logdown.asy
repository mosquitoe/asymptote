import graph;
size(200,IgnoreAspect);

scaleT LogDown;

real log10Down(real x) {return -log10(x);}
real pow10Down(real x) {return pow10(-x);}

LogDown.init(log10Down,pow10Down,logarithmic=true);
scale(Linear,LogDown);

draw(graph(exp,-5,5));

xaxis("$x$",LeftTicks(),EndArrow);
yaxis("$y$",RightTicks(DefaultLogFormat),BeginArrow);