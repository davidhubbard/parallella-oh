
#STEP1: DEFINE KEY PARAMETERS
source ./system_params.tcl

#STEP2: CREATE PROJECT AND READ IN FILES
source ../../../common/fpga/system_init.tcl

#STEP 3: SYNTEHSIZE AND CREATE BITSTRAM
source ../../../common/fpga/system_build.tcl

#STEP 4: Export Hardware Platform Specification File
# Also known as: .HDF file
# Also known as: hardware design (from inside 'hsi' tool)
write_hwdef -force  -file system_fsbl.hdf
