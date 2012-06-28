copy implementation\system.bit ..\bit_files\rpoco8_testbench_v11_2011_Dec_20_1342.bit
mkbof.exe -o implementation\system.bof -s core_info.tab -t 3 implementation\system.bin
copy implementation\system.bof ..\bit_files\rpoco8_testbench_v11_2011_Dec_20_1342.bof
