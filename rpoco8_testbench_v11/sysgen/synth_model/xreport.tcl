if {[file exists {rpoco8_testbench_v11_cw.ise}] && [file exists {rpoco8_testbench_v11_cw.xise}] && [file exists {rpoco8_testbench_v11_cw.gise}]} {
    project open {rpoco8_testbench_v11_cw}
} else {
    file delete {rpoco8_testbench_v11_cw.ise} {rpoco8_testbench_v11_cw.xise} {rpoco8_testbench_v11_cw.gise}
    project new {rpoco8_testbench_v11_cw}
}
project set "Enable Enhanced Design Summary" true
project set "Enable Message Filtering" true
project set "Display Incremental Messages" true
project set "Message Filter File" {../filter.filter}
project close
