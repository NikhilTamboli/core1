@echo off
REM ****************************************************************************
REM Vivado (TM) v2024.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : AMD Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Mon Feb 24 23:40:01 +0530 2025
REM SW Build 5076996 on Wed May 22 18:37:14 MDT 2024
REM
REM Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
REM Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim core_tb_behav -key {Behavioral:sim_1:Functional:core_tb} -tclbatch core_tb.tcl -view C:/MyFiles/0 BITS/Personal Projects/core1/core1/core_tb_behav.wcfg -log simulate.log"
call xsim  core_tb_behav -key {Behavioral:sim_1:Functional:core_tb} -tclbatch core_tb.tcl -view C:/MyFiles/0 BITS/Personal Projects/core1/core1/core_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
