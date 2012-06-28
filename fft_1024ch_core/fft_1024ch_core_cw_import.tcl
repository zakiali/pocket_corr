#
# Created by System Generator     Tue Dec 20 12:36:15 2011
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

source SgIseProject.tcl

namespace eval ::xilinx::dsptool::iseproject::param {

    set Project {fft_1024ch_core_cw}
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
        {{fft_1024ch_core_cw.vhd} -view Implementation}
        {{fft_1024ch_core.vhd} -view Implementation}
        {{fft_1024ch_core_cw.ucf}}
        {{bmg_33_362cc0a7dbb242d8.mif}}
        {{bmg_33_c613268bf4c74fe6.mif}}
        {{bmg_33_de81730d86f2dd7a.mif}}
        {{bmg_33_293c2a5436112186.mif}}
        {{bmg_33_cde5f3f9996c5a95.mif}}
        {{bmg_33_ba2cbf4ee1b86c81.mif}}
        {{bmg_33_663a71b1b4ae4b64.mif}}
        {{bmg_33_b972f6608ff04778.mif}}
        {{bmg_33_b5a854daeb8f7460.mif}}
        {{bmg_33_017aed32e197c46e.mif}}
        {{bmg_33_9b710071af525a53.mif}}
        {{bmg_33_c9356bca87716aa3.mif}}
        {{bmg_33_fa92018bda6c6fc3.mif}}
        {{bmg_33_86cad15aba8b45bc.mif}}
        {{bmg_33_973a453bd51a1032.mif}}
        {{dmg_43_53f87b14ea26f2c9.mif}}
        {{bmg_33_ecb3139f941cb62b.mif}}
        {{bmg_33_323c47498d5636a9.mif}}
        {{bmg_33_cd39c143a25729dd.mif}}
        {{bmg_33_975b23006c9a4cfc.mif}}
        {{bmg_33_0bf307740f4c2249.mif}}
        {{bmg_33_6b05b5fcaf93ca60.mif}}
        {{bmg_33_7af907baa421acc1.mif}}
        {{bmg_33_74de024f0c1ac463.mif}}
        {{bmg_33_f64e12192046d142.mif}}
        {{bmg_33_872c9d4cc9c41649.mif}}
        {{dmg_43_2ed32a2fd073c158.mif}}
        {{bmg_33_e414e83e3003ff05.mif}}
        {{bmg_33_64caaaf33657fbc8.mif}}
        {{/scratch/zaki/workspace/pocket_corr/fft_1024ch_core.mdl}}
    }
    set TopLevelModule {fft_1024ch_core_cw}
    set SynthesisConstraintsFile {fft_1024ch_core_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
::xilinx::dsptool::iseproject::create
