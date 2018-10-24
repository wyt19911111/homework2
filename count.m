fid=fopen('work.txt')
fseek(fid,0,'eof') %定位至英文文本末尾
c= ftell(fid) %统计字符数
fclose(fid);
    
fid=fopen('work.txt')        
words=textscan(fid,'%s') %默认空格为定界符
w=length(words{1}) %统计单词数
fclose(fid)

fid=fopen('work.txt')
s=0;  %句子数赋初值为0
for j=1:c       
    mark=fscanf(fid,'%c',1);    %逐个字符读取文件内容
    if mark=='.'|mark=='?'|mark=='!'    %判断读取的字符是否为句号
        s=s+1;   %字符如果为句号则累加1
    end
end
s
fclose(fid);

fid=fopen('work.txt')
t=0;
while ~feof(fid) %是否读取到文件结尾
    [~]=fgets(fid); 
    t=t+1;   %行数累加
end
fclose(fid); 
t 

fid=fopen('work.txt')
sp=0
while ~feof(fid)
    line=fgetl(fid)
    if numel(line)==0
        sp=sp+1
    end
end
sp
p=t-sp %计算出代码行数
fclose(fid);
disp('字符数为')
disp(c)
disp('单词数为')
disp(w)
disp('句子数')
disp(s) 
disp('总行数为')
disp(t)
disp('空行数为')
disp(sp)
disp('代码行数为')
disp(p)
        
      

