#
# Created by System Generator     Mon Dec 19 21:47:29 2011
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

source SgIseProject.tcl

namespace eval ::xilinx::dsptool::iseproject::param {

    set Project {pfb_core_cw}
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
    set Frequency {100}
    set ProjectFiles {
        {{pfb_core_cw.vhd} -view Implementation}
        {{pfb_core.vhd} -view Implementation}
        {{pfb_core_cw.ucf}}
        {{dmg_43_e0957f4fee433e17.mif}}
        {{dmg_43_b7617019d0272360.mif}}
        {{dmg_43_fc0fede523fbb97e.mif}}
        {{dmg_43_7cde0f653fa26908.mif}}
        {{bmg_33_80d6b14676f218c5.mif}}
        {{/scratch/zaki/workspace/pocket_corr/pfb_core.mdl}}
    }
    set TopLevelModule {pfb_core_cw}
    set SynthesisConstraintsFile {pfb_core_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
::xilinx::dsptool::iseproject::create
