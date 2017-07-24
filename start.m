%New load file
Path            = 'C:\Users\DABAS\Desktop\work_version_1';
filename        = 'megr44n270hb_f_s42.ply';
txtFile         = 'megr44n270hb_f_s42_crat.cat';

destStrPath     = 'C:\Users\DABAS\Desktop\work_version_1\Output';

name            = 'megr44n270hb_f_s42';
options.name    = name;


read_ply(filename);
[vertex,face]   = read_mesh(filename);
craterWindow(vertex,face, txtFile);





