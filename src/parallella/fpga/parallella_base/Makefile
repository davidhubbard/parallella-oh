ifeq ($(shell which bootgen 2>&1),)
$(error PATH does not contain Xilinx tools. Please type: . /opt/Xilinx/Vivado/<version>/settings64.sh)
endif

M_DEPS := run.tcl

M_VIVADO := vivado -mode batch -source

M_FLIST := *.cache
M_FLIST += *.data
M_FLIST += *.xpr
M_FLIST += *.log
M_FLIST += *.jou
M_FLIST +=  xgui
M_FLIST += *.runs
M_FLIST += *.srcs
M_FLIST += *.sdk
M_FLIST += .Xil

all: $(M_DEPS)
	$(M_VIVADO) run.tcl

clean:
	rm -rf $(M_FLIST)
