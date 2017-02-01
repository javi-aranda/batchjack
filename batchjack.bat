@echo off
title Batchjack
chcp 65001
color 20
:inicio
cls
set cont=1
set sum=0
:generacion

set /a rndnum=(%random% %% 10)+1
set /a rndsym=(%random% %% 4)+1
set /a rndten=(%random% %% 3)+1



if %rndsym% == 1 set rndsym=♥
if %rndsym% == 2 set rndsym=♦
if %rndsym% == 3 set rndsym=♣
if %rndsym% == 4 set rndsym=♠

if %rndten% == 1 set rndten=J
if %rndten% == 2 set rndten=Q
if %rndten% == 3 set rndten=K

set rndace=A

set /a sum=%sum%+%rndnum%
set /a cont=%cont%+1

if %rndnum% == 10 set rndnum=%rndten%
if %rndnum% == 1 set rndnum=%rndace%


echo  --------
echo ^|	 ^|
echo ^|	 ^|
echo ^|   %rndnum%%rndsym%   ^|
echo ^|	 ^|
echo ^|	 ^|
echo  --------


if %cont% == 2 goto generacion


echo.
echo.
echo Total %USERNAME% = %sum%

if %sum% LEQ 21 echo ¿Quieres otra carta (C) o plantarte (P)?
set /p deal=
if %deal% == C goto carta3
if %deal% == P goto planta
:planta
echo Has obtenido un total de %sum% puntos.
goto dealer
:carta3
set /a rndnum3=(%random% %% 10)+1
set /a rndsym3=(%random% %% 4)+1
set /a rndten=(%random% %% 3)+1

if %rndsym3% == 1 set rndsym3=♥
if %rndsym3% == 2 set rndsym3=♦
if %rndsym3% == 3 set rndsym3=♣
if %rndsym3% == 4 set rndsym3=♠

if %rndten% == 1 set rndten=J
if %rndten% == 2 set rndten=Q
if %rndten% == 3 set rndten=K

set /a sum=%sum%+%rndnum3%
set rndace=A

if %rndnum3% == 10 set rndnum3=%rndten%
if %rndnum3% == 1 set rndnum3=%rndace%

echo  --------
echo ^|	 ^|
echo ^|	 ^|
echo ^|   %rndnum3%%rndsym3%   ^|
echo ^|	 ^|
echo ^|	 ^|
echo  --------

echo Total %USERNAME% = %sum%

if %sum% LEQ 21 echo ¿Quieres otra carta (C) o plantarte (P)?
if %sum% GTR 21 goto gameover
set /p deal2=
if %deal2% == C goto carta4
if %deal2% == P goto planta
:carta4 
set /a rndnum4=(%random% %% 10)+1
set /a rndsym4=(%random% %% 4)+1
set /a rndten=(%random% %% 3)+1

if %rndsym4% == 1 set rndsym4=♥
if %rndsym4% == 2 set rndsym4=♦
if %rndsym4% == 3 set rndsym4=♣
if %rndsym4% == 4 set rndsym4=♠

if %rndten% == 1 set rndten=J
if %rndten% == 2 set rndten=Q
if %rndten% == 3 set rndten=K

set /a sum=%sum%+%rndnum4%
set rndace=A

if %rndnum4% == 10 set rndnum4=%rndten%
if %rndnum4% == 1 set rndnum4=%rndace%

echo  --------
echo ^|	 ^|
echo ^|	 ^|
echo ^|   %rndnum4%%rndsym4%   ^|
echo ^|	 ^|
echo ^|	 ^|
echo  --------

echo Total %USERNAME% = %sum%
if %sum% LEQ 21 echo ¿Quieres la última carta (C) o plantarte (P)?
if %sum% GTR 21 goto gameover
set /p deal2=
if %deal2% == C goto carta5
if %deal2% == P goto planta
:carta5
set /a rndnum5=(%random% %% 10)+1
set /a rndsym5=(%random% %% 4)+1
set /a rndten=(%random% %% 3)+1

if %rndsym5% == 1 set rndsym5=♥
if %rndsym5% == 2 set rndsym5=♦
if %rndsym5% == 3 set rndsym5=♣
if %rndsym5% == 4 set rndsym5=♠

if %rndten% == 1 set rndten=J
if %rndten% == 2 set rndten=Q
if %rndten% == 3 set rndten=K

set /a sum=%sum%+%rndnum5%
set rndace=A

if %rndnum5% == 10 set rndnum5=%rndten%
if %rndnum5% == 1 set rndnum5=%rndace%

echo  --------
echo ^|	 ^|
echo ^|	 ^|
echo ^|   %rndnum5%%rndsym4%   ^|
echo ^|	 ^|
echo ^|	 ^|
echo  --------

echo Total %USERNAME% = %sum%

if %sum% GTR 21 goto gameover

goto dealer
:gameover
echo Te has pasado
goto seguir
:dealer
echo Turno del dealer:
echo.
set contdealer=1
set sumdealer=0
:dealergen
set /a rndnumd=(%random% %% 10)+1
set /a rndsymd=(%random% %% 4)+1
set /a rndten=(%random% %% 3)+1



if %rndsymd% == 1 set rndsymd=♥
if %rndsymd% == 2 set rndsymd=♦
if %rndsymd% == 3 set rndsymd=♣
if %rndsymd% == 4 set rndsymd=♠

if %rndten% == 1 set rndten=J
if %rndten% == 2 set rndten=Q
if %rndten% == 3 set rndten=K

set rndace=A

set /a sumdealer=%sumdealer%+%rndnumd%
set /a contdealer=%contdealer%+1

if %rndnumd% == 10 set rndnumd=%rndten%
if %rndnumd% == 1 set rndnumd=%rndace%


echo  --------
echo ^|	 ^|
echo ^|	 ^|
echo ^|   %rndnumd%%rndsymd%   ^|
echo ^|	 ^|
echo ^|	 ^|
echo  --------
echo.
echo Total dealer = %sumdealer%
echo.
timeout /t 2 /nobreak>nul
if %sumdealer% LEQ 17 goto dealergen
if %sumdealer% GTR 17 (
	if %sumdealer% LEQ 21 goto comparar)
if %sumdealer% GTR 21 goto win
:comparar
if %sum% GTR %sumdealer% echo ¡Has ganado!
if %sumdealer% == %sum% echo Empate
if %sumdealer% GTR %sum% echo ¡Has perdido!
goto seguir
:win
echo ¡Has ganado!
goto seguir
:seguir
pause
goto inicio