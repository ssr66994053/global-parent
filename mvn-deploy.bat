@echo off
set /p choice=����ѡ�񷢲�������o=online,d=dev��
if %choice%==o goto o
if %choice%==d goto d

:d
echo ��ʼ���...
call mvn -T 1C clean deploy -P dev -Dmaven.test.skip=true 
echo ����������������
goto end

:o
echo ��ʼ���...
call mvn -T 1C clean deploy -P online -Dmaven.test.skip=true 
echo ����������������

:end
pause