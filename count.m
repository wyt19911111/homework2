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
    if mark=='.'|mark=='?'|mark=='!'    %�ж϶�ȡ���ַ��Ƿ�Ϊ���
        s=s+1;   %�ַ����Ϊ������ۼ�1
    end
end
s
fclose(fid);

fid=fopen('work.txt')
t=0;
while ~feof(fid) %�Ƿ��ȡ���ļ���β
    [~]=fgets(fid); 
    t=t+1;   %�����ۼ�
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
        
      

