if {[file exists {fft_1024ch_core.ise}] && [file exists {fft_1024ch_core.xise}] && [file exists {fft_1024ch_core.gise}]} {
    project open {fft_1024ch_core}
} else {
    file delete {fft_1024ch_core.ise} {fft_1024ch_core.xise} {fft_1024ch_core.gise}
    project new {fft_1024ch_core}
}
project set "Enable Enhanced Design Summary" true
project set "Enable Message Filtering" true
project set "Display Incremental Messages" true
project set "Message Filter File" {../filter.filter}
project close
