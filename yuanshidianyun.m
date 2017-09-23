clear;
close all;
clc;
[data, zmin, nrows, ncols, imfiles] = read_bntfile('bs000_CAU_A22A25_0.bnt');
x = data(:,1)';
y = data(:,2)';
z = data(:,3)';

plot3(x, y, z,'k.','MarkerSize',3);
title('点云原始图像','Color','k','Fontsize',20,'FontName','黑体');
xlabel('X','Fontsize',13),ylabel('Y','Fontsize',13),zlabel('Z','Fontsize',13);grid on;
view(36,4);
axis([2.7,3.6,4.1,4.8,1.4,2.3]);