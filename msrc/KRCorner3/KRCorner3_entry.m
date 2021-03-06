function KRCorner3_entry 
%KRCORNER3_ENTRY    This function is the entry to KRCorner
%    Input:    
%    Output:    
%    Author:    Tsenmu
%    Date:    2012.01.29
%    Reference:    Karl Rohr* On 3D differential operators for detecting point landmarks
    inFileName = input('');
    outFileName = input('');
    [ds, ps] = public_urw2dataset(inFileName);
    [ds, ps] = KRCorner3(ds, ps);
    public_dataset2urw(outFileName, ds, ps);
end