set hwdesign [open_hw_design "system_fsbl.hdf"]
generate_app -hw $hwdesign -os standalone -proc ps7_cortexa9_0 -app zynq_fsbl -compile -sw fsbl -dir fsbl_src
exit
