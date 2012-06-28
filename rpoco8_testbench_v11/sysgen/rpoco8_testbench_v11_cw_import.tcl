#
# Created by System Generator     Tue Dec 20 13:36:08 2011
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

source SgIseProject.tcl

namespace eval ::xilinx::dsptool::iseproject::param {

    set Project {rpoco8_testbench_v11_cw}
    set Family {Virtex5}
    set Device {xc5vsx95t}
    set Package {ff1136}
    set Speed {-1}
    set HDLLanguage {vhdl}
    set SynthesisTool {XST}
    set Simulator {Modelsim-SE}
    set ReadCores False
    set MapEffortLevel {High}
    set ParEffortLevel {High}
    set Frequency {200}
    set ProjectFiles {
        {{rpoco8_testbench_v11_cw.vhd} -view Implementation}
        {{rpoco8_testbench_v11.vhd} -view Implementation}
        {{rpoco8_testbench_v11_cw.ucf}}
        {{bmg_33_4c2b84f72036519d.mif}}
        {{bmg_33_0bdc6c125e0742ca.mif}}
        {{bmg_33_e4cac21e8ed012aa.mif}}
        {{bmg_33_d9b3e13a04ce0977.mif}}
        {{asr_11_0_372caaa934b22d95.mif}}
        {{bmg_33_7de9efda5baafcf4.mif}}
        {{bmg_33_5855b709c81b1172.mif}}
        {{dmg_43_02dd3a157d80ae94.mif}}
        {{bmg_33_ea3aeec639126d38.mif}}
        {{/scratch/zaki/workspace/pocket_corr/rpoco8_testbench_v11.mdl}}
    }
    set TopLevelModule {rpoco8_testbench_v11_cw}
    set SynthesisConstraintsFile {rpoco8_testbench_v11_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
::xilinx::dsptool::iseproject::create
