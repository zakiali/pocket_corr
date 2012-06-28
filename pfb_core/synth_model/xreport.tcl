if {[file exists {pfb_core.ise}] && [file exists {pfb_core.xise}] && [file exists {pfb_core.gise}]} {
    project open {pfb_core}
} else {
    file delete {pfb_core.ise} {pfb_core.xise} {pfb_core.gise}
    project new {pfb_core}
}
project set "Enable Enhanced Design Summary" true
project set "Enable Message Filtering" true
project set "Display Incremental Messages" true
project set "Message Filter File" {../filter.filter}
project close
