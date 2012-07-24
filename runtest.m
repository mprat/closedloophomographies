function [x x0] = runtest(testset, test_name, detthresh, changethresh,...
    entry33thresh, smallsmallthresh, transthreshx, transthreshy)

runtest15loopincludingfirstone;

 %   function runtest6loop
 %       basefile = sprintf('%s/homografia', testset);
 %       [h01, h12, h23, h34, h45, h56] = loadMatFromOpenCVXML(basefile, 1, 6);
 %       basefile2 = sprintf('%s/homografia_new0006.xml', test_name);
 %       h16 = importXMLtoMATLAB(basefile2);
 %       h12vec = reshape(h12', 9, 1);
 %       h23vec = reshape(h23', 9, 1);
 %       h34vec = reshape(h34', 9, 1);
 %       h45vec = reshape(h45', 9, 1);
 %       h56vec = reshape(h56', 9, 1);
 %       %intial estimate
 %       x0 = [h12vec(1:8); h23vec(1:8); h34vec(1:8); h45vec(1:8); h56vec(1:8)];
 %       [x val] = callObjConstr(x0, h16, detthresh, changethresh, ...
 %           entry33thresh, smallsmallthresh);
 %       vecToOpenCVXML(x, test_name);
 %   end

function runtest15loop
basefile = sprintf('%s/homografia', testset);
[h0102, h0203, h0304, h0405, h0506, h0607, h0708, h0809, h0910, h1011, h1112, h1213, h1314, h1415, h1516] = loadMatFromOpenCVXML(basefile, 2, 16);
basefile2 = sprintf('%s/homografia_new0016.xml', test_name);
h0116 = importXMLtoMATLAB(basefile2);
h0102vec = reshape(h0102', 9, 1);
h0203vec = reshape(h0203', 9, 1);
h0304vec = reshape(h0304', 9, 1);
h0405vec = reshape(h0405', 9, 1);
h0506vec = reshape(h0506', 9, 1);
h0607vec = reshape(h0607', 9, 1);
h0708vec = reshape(h0708', 9, 1);
h0809vec = reshape(h0809', 9, 1);
h0910vec = reshape(h0910', 9, 1);
h1011vec = reshape(h1011', 9, 1);
h1112vec = reshape(h1112', 9, 1);
h1213vec = reshape(h1213', 9, 1);
h1314vec = reshape(h1314', 9, 1);
h1415vec = reshape(h1415', 9, 1);
h1516vec = reshape(h1516', 9, 1);
x0 = [h0102vec(1:8); h0203vec(1:8); h0304vec(1:8); h0405vec(1:8); h0506vec(1:8); h0607vec(1:8); h0708vec(1:8); h0809vec(1:8); h0910vec(1:8); h1011vec(1:8); h1112vec(1:8); h1213vec(1:8); h1314vec(1:8); h1415vec(1:8); h1516vec(1:8)];
[x val] = callObjConstr(x0, h0116, detthresh, changethresh, ... 
 entry33thresh, smallsmallthresh, transthreshx, transthreshy);
vecToOpenCVXML(x, test_name)
end

function runtest15loopincludingfirstone
basefile = sprintf('%s/homografia', testset);
[h0001, h0102, h0203, h0304, h0405, h0506, h0607, h0708, h0809, h0910, h1011, h1112, h1213, h1314, h1415, h1516] = loadMatFromOpenCVXML(basefile, 1, 16);
basefile2 = sprintf('%s/homografia_new0016.xml', test_name);
h0016 = importXMLtoMATLAB(basefile2); 
h0001vec = reshape(h0001', 9, 1);
h0102vec = reshape(h0102', 9, 1);
h0203vec = reshape(h0203', 9, 1);
h0304vec = reshape(h0304', 9, 1);
h0405vec = reshape(h0405', 9, 1);
h0506vec = reshape(h0506', 9, 1);
h0607vec = reshape(h0607', 9, 1);
h0708vec = reshape(h0708', 9, 1);
h0809vec = reshape(h0809', 9, 1);
h0910vec = reshape(h0910', 9, 1);
h1011vec = reshape(h1011', 9, 1);
h1112vec = reshape(h1112', 9, 1);
h1213vec = reshape(h1213', 9, 1);
h1314vec = reshape(h1314', 9, 1);
h1415vec = reshape(h1415', 9, 1);
h1516vec = reshape(h1516', 9, 1);
x0 = [h0001vec(1:8); h0102vec(1:8); h0203vec(1:8); h0304vec(1:8); h0405vec(1:8); h0506vec(1:8); h0607vec(1:8); h0708vec(1:8); h0809vec(1:8); h0910vec(1:8); h1011vec(1:8); h1112vec(1:8); h1213vec(1:8); h1314vec(1:8); h1415vec(1:8); h1516vec(1:8)];
[x val] = callObjConstr(x0, h0016, detthresh, changethresh, ... 
 entry33thresh, smallsmallthresh, transthreshx, transthreshy);
vecToOpenCVXML(x, test_name);
end


end