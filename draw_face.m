clear;
[data, zmin, nrows, ncols, imfiles] = read_bntfile('data/bs000_CR_RU_0.bnt');
% x_plot = linspace(min(data(:,1)),max(data(:,1)),ncols);
% y_plot = linspXace(min(data(:,2)),max(data(:,2)),nrows);
% [XI,YI] = meshgrid(x_plot,y_plot);
% ZI = griddata(data(:,1),data(:,2),data(:,3),XI,YI);
% figure(1);
% mesh(XI,YI,ZI);



% Remove background points
data1 = find(data(:,3)>zmin);
data1 = data(data1,:);

x = data1(:,1);
y = data1(:,2);
z = data1(:,3);
% subplot(131);
tri = delaunay(x,y);
trimesh(tri,x,y,z);
title('3D-tri');
hold on;
% % shading flat
% subplot(132);
% imshow(imread('bs000_CAU_A22A25_0.png'));
% subplot(133);
% pcshow([x y z]);
% title('3D-cloud');
% hold on;
% Read 3D landmarks
[pts3D, labels] = read_lm3file('data/bs000_CAU_A22A25_0.lm3');
p1 = pts3D(:,1);
p2 = pts3D(:,22);
plot3(p1(1),p1(2),p1(3),'r*');
plot3(p2(1),p2(2),p2(3),'r+');
plot3([p1(1),p2(1)],[p1(2),p2(2)],[p1(3)+8,p2(3)-3],'--');
% for i = 1:length(labels)
%     xyz_lm3 = pts3D(:,i);
%     text(xyz_lm3(1),xyz_lm3(2),xyz_lm3(3),labels(i));
%     
% end
axis equal; shading interp; lighting phong; camlight; axis off; 
% view(0,90)
colormap gray

