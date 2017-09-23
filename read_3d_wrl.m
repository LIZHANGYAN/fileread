function data = read_3d_wrl(filepath)
% Read the 3D coordinates and faces from wrl file type

if nargin < 1
    filepath = "001-001.wrl";
end  

data = fopen(filepath,'r');
sprintf(data);
