

% Create a uniform hexagonal array
Nside = 4;
delta = 1;
rows = [1:Nside Nside-1:-1:1];
Radius = delta * (Nside - 1);
pos = zeros(3,1);
count = 0;
for idx = 1:length(rows)
    y = -Radius/2 - (rows(idx)-1)*delta*0.5 : delta : ...
        Radius/2 + (rows(idx)-1)*delta*0.5;
    pos(2, count+1:count+length(y)) = y;
    pos(3, count+1:count+length(y)) = sqrt(3)/2*Radius - ...
        (idx-1)*delta*sind(60);
    count = count+length(y);
end
h = phased.ConformalArray('ElementPosition', pos, ...
    'ElementNormal', zeros(2,37));
%Calculate Taper
wind = ones(1,37);
h.Taper = wind;
%Create Cosine Antenna Element
el = phased.CosineAntennaElement;
el.CosinePower = [1 1];
h.Element = el;
%Assign frequencies and propagation speed
F = 300000000;
PS = 300000000;
%Create figure, panel, and axes
fig = figure;
panel = uipanel('Parent',fig);
hAxes = axes('Parent',panel,'Color','none');
%Plot 3d graph
fmt = 'polar';
pattern(h, F(1), 'PropagationSpeed', PS, 'Type','directivity', ...
    'CoordinateSystem', fmt);
%Adjust the view angles
view(hAxes,[135 20]);
title = get(hAxes, 'title');
title_str = get(title, 'String');
%Modify the title
[Fval, ~, Fletter] = engunits(300000000);
steeringString = 'No Steering';
title_str = [title_str sprintf('\n') num2str(Fval) ' ' Fletter 'Hz ' ...
    steeringString];
set(title, 'String', title_str);
