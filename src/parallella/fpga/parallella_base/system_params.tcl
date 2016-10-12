# NOTE: See UG1118 for more information

#########################################
# VARIABLES
#########################################
set design parallella_base
set projdir ./
set root "../../.."
set partname "xc7z020clg400-1"

set hdl_files [list \
                   $root/parallella/hdl \
                   $root/common/hdl/oh_arbiter.v \
                   $root/common/hdl/oh_bin2gray.v \
                   $root/common/hdl/oh_dsync.v \
                   $root/common/hdl/oh_edgealign.v \
                   $root/common/hdl/oh_fifo_async.v \
                   $root/common/hdl/oh_fifo_cdc.v \
                   $root/common/hdl/oh_fifo_generic.v \
                   $root/common/hdl/oh_fifo_sync.v \
                   $root/common/hdl/oh_gray2bin.v \
                   $root/common/hdl/oh_memory_dp.v \
                   $root/common/hdl/oh_memory_ram.v \
                   $root/common/hdl/oh_mux3.v \
                   $root/common/hdl/oh_mux4.v \
                   $root/common/hdl/oh_rsync.v \
                   $root/emesh/hdl/emesh2packet.v \
                   $root/emesh/hdl/packet2emesh.v \
                   $root/emmu/hdl \
                   $root/axi/hdl \
                   $root/emailbox/hdl \
                   $root/elink/hdl/axi_elink.v \
                   $root/elink/hdl/elink_cfg.v \
                   $root/elink/hdl/elink_constants.vh \
                   $root/elink/hdl/elink_regmap.vh \
                   $root/elink/hdl/elink.v \
                   $root/elink/hdl/erx_arbiter.v \
                   $root/elink/hdl/erx_cfg.v \
                   $root/elink/hdl/erx_clocks.v \
                   $root/elink/hdl/erx_core.v \
                   $root/elink/hdl/erx_fifo.v \
                   $root/elink/hdl/erx_io.v \
                   $root/elink/hdl/erx_protocol.v \
                   $root/elink/hdl/erx_remap.v \
                   $root/elink/hdl/erx.v \
                   $root/elink/hdl/etx_arbiter.v \
                   $root/elink/hdl/etx_cfg.v \
                   $root/elink/hdl/etx_clocks.v \
                   $root/elink/hdl/etx_core.v \
                   $root/elink/hdl/etx_fifo.v \
                   $root/elink/hdl/etx_io.v \
                   $root/elink/hdl/etx_protocol.v \
                   $root/elink/hdl/etx_remap.v \
                   $root/elink/hdl/etx.v \
                  ]

set ip_files   [list \
		    $root/xilibs/ip/fifo_async_104x32.xci \
		   ]

set constraints_files []

