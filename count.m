fid=fopen('work.txt')
fseek(fid,0,'eof') %��λ��Ӣ���ı�ĩβ
c= ftell(fid) %ͳ���ַ���
fclose(fid);
    
fid=fopen('work.txt')        
words=textscan(fid,'%s') %Ĭ�Ͽո�Ϊ�����
w=length(words{1}) %ͳ�Ƶ�����
fclose(fid)

fid=fopen('work.txt')
s=0;  %����������ֵΪ0
for j=1:c       
    mark=fscanf(fid,'%c',1);    %����ַ���ȡ�ļ�����
    if mark=='.'   %�ж϶�ȡ���ַ��Ƿ�Ϊ���
        s=s+1;   %�ַ����Ϊ������ۼ�1
    end
end
s
fclose(fid);

fid=fopen('work.txt')
row=textscan(fid,'%s','delimiter','\n') %���س���Ϊ�����
t=length(row{1}) %ͳ�ƹ��м���
a=row{1}
str='';
sp=0;
for i=1:t
    if strcmp(a{i,1},str)  %���������ı����н��бȽϣ���һ���������+1������һ�������������
        sp=sp+1
    end
end
p=t-sp %�������������
fclose(fid);
disp('�ַ���Ϊ')
disp(c)
disp('������Ϊ')
disp(w)
disp('������')
disp(s) 
disp('������Ϊ')
disp(t)
disp('������Ϊ')
disp(sp)
disp('��������Ϊ')
disp(p)
        
      

