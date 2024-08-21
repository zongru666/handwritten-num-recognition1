clear all                             %清（初始化）数据

%***************
%handle pictures
%***************
DirOutput = dir('D:\．我的图文（G盘）\MATLAB\*.bmp'); % 加上后缀限制好了。读取式样编号文件名,dir
SimpleName = {DirOutput(1:end).name}';%函数读出的结果为结构数组，逗号让它每行一个文件名
resha=reshape(SimpleName,10,10);      %转为10*10矩阵
resh=resha';                          %转置
cel=cell(10,10);
for i=1:10
    for j=1:10
	    m1=imread(resh{i,j});         %m1是一个公共变量会不停的被下一张图片信息覆盖最后是最后一张图片的信息
	    m2=imresize(m1,[15 15]);      %将每一个I存放的图片转为15*15大小的
		lev = graythresh(m2);         %求平均灰度，
        bwimg = im2bw( m2, lev);      %求二值图的矩阵
	    I{i,j}=reshape(bwimg',1,225);  %将矩阵bwimg转换为1行225列（从上到下，从左到右，其中bwimg'为矩阵bwimg的转置）
	end
end


%矩阵拼接
cat_o=cell(1,10);
for a=1:10
    cat_out=I{a,1};
	for b=1:9
        cat_out=cat(1,cat_out,I{a,b+1});
		cat_o_b{b}=cat_out;
	end
	cat_o{a}=cat_out;
end
	 

	 
%find p(1|yi) and p(0|yi)
p1y=cell(1,10);
p0y=cell(1,10);
for d=1:10
    p1y{d}=(sum(cat_o{1,d})+1)/12;          %+1和+2防止出现概率为零的情况
	p0y{d}=1-p1y{d};
end


%待测图片处理
A = imread('D:\0-11.bmp');   %读取图片，讲图片的像素值放在矩阵A中
B=imresize(A,[15 15]);      %scale图片
lev = graythresh(B);      %求平均灰度，
bwimg = im2bw( B, lev);   %求二值图的矩阵
X=reshape(bwimg',1,225);    %将矩阵bwimg转换为1行25列（从上到下，从左到右，其中bwimg'为矩阵bwimg的转置）
%X=[x1,...,x225]已知

%求后验概率
p_out=[];
for n=1:10    
	p_out(n)=1;
    for k=1:225
        if X(k)==1
           p_out(n)=p_out(n)*p1y{n}(k);	      
        else  
	       p_out(n)=p_out(n)*p0y{n}(k);
	    end
    end
end

[m, position_k]=max(p_out(1,:));
wi=position_k-1;
fprintf('图片里的数字是%d\n',wi);
