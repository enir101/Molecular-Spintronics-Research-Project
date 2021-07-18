@rem This batch file is used to compile both 64-bit and 32-bit (x86) versions
@rem of each MSD program using "cl" (Visual Studio C/C++ compiler)

@rem Specify install directoy and version of Visual Studio
@set VS_DIR="C:\Program Files (x86)\Microsoft Visual Studio\2017\Community"


@rem Compile 64-bit versions
@set VSCMD_START_DIR=%CD%
@call %VS_DIR%\VC\Auxiliary\Build\vcvars64.bat
@cl /EHsc /Fe"bin/metropolis.exe" src/metropolis.cpp

@rem Compile 32-bit versions
@set VSCMD_START_DIR=%CD%
@call %VS_DIR%\VC\Auxiliary\Build\vcvars32.bat
@cl /EHsc /Fe"bin/metropolis_x86.exe" src/metropolis.cpp

@rem Remove .obj file
@del metropolis.obj


@rem End of file
@echo Done building.
@pause
