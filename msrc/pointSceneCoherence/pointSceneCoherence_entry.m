function pointSceneCoherence_entry( )
%POINTSCENECOHERENCE_ENTRY entry file of point scene coherence
%    Input:    
%    Output:   
%    Author:    Davidaq
%    Date:    2012.01.19
%    Reference:   

inFile=char(input(''));
outFile=char(input(''));
sFile=io_getfile('*.urw','Please choose the sample image');
pl1=pointSceneCoherence_entry_fetchPoints(inFile);
pl2=pointSceneCoherence_entry_fetchPoints(sFile);
io_progress(0.1);
func=pointSceneCoherence(pl1,pl2);
fp=fopen(outFile);
fwrite(fp,uint8(zeros(1,5)),'uint8');
fwrite(fp,func);
fclose(fp);
io_progress(1);

end
