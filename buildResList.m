function list = buildResList(NumberOfModes, CenterFreq, FSR, D2over2pi, D3over2pi, D4over2pi, D5over2pi, nms_a, nms_b, linewidth)
list = zeros(NumberOfModes,1);
for k=1:size(list,1)
    list(k) = CenterFreq ...
        + (k-round(size(list,1)/2))*FSR ...
        + (k-round(size(list,1)/2))^2 * D2over2pi/2 ...
        + (k-round(size(list,1)/2))^3 * D3over2pi/6 ...
        + (k-round(size(list,1)/2))^4 * D4over2pi/24 ...
        + (k-round(size(list,1)/2))^5 * D5over2pi/120 ...
        + nms_a*linewidth/4/(k-round(size(list,1)/2)-nms_b-0.5);
end
% list(round(size(list,1)/2))=list(round(size(list,1)/2))-30*linewidth;

end