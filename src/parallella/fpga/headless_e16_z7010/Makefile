ifeq ($(shell which bootgen 2>&1),)
$(error PATH does not contain Xilinx tools. Please type: . /opt/Xilinx/Vivado/<version>/settings64.sh)
endif

M_DEPS := run.tcl
M_DEPS += ../parallella_base/parallella_base.xpr
M_DEPS += ../parallella_base/run.tcl

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
M_FLIST += parallella_e16_headless_gpiose_7010.bit.bin
M_FLIST += system_wrapper.bit.bin

.PHONY: all clean

all: $(M_DEPS)
	rm -f system_wrapper.bit.bin bit2bin.bin
	$(M_VIVADO) run.tcl
	bootgen -image bit2bin.bif -split bin
	cp -f system_wrapper.bit.bin parallella_e16_headless_gpiose_7010.bit.bin

fsbl_src/executable.elf:
	hsi -source hsi-compile-fsbl.tcl

../parallella_base/parallella_base.xpr:
	$(MAKE) -C ../parallella_base

clean:
	rm -rf $(M_FLIST)
