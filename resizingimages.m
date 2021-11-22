readimg('C:\Users\user\Documents\python38\deeplearning\oralclassification\data\nonoral')

function readimg(fpath)

imagefiles=dir(fullfile(fpath, '*jpg'));
nfiles=length(imagefiles);
%print(nfiles);
for ii=1:nfiles
    currentfilename=imagefiles(ii).name;
    currentimage=imread(fullfile(fpath, currentfilename));
    newimg=imresize(currentimage, [256,256]);
    filename=fullfile(fullfile(fpath, 'Resize'), strcat('Resize', currentfilename));
    imwrite(newimg, filename);
end
end
