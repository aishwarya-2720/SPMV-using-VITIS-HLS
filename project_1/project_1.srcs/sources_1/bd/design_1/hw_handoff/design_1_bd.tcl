
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
   set_property BOARD_PART tul.com.tw:pynq-z2:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set ap_ctrl_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:acc_handshake_rtl:1.0 ap_ctrl_0 ]

  set m_axi_gmem_0_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi_gmem_0_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.HAS_BURST {0} \
   CONFIG.NUM_READ_OUTSTANDING {16} \
   CONFIG.NUM_WRITE_OUTSTANDING {16} \
   CONFIG.PROTOCOL {AXI4} \
   ] $m_axi_gmem_0_0

  set m_axi_gmem_1_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi_gmem_1_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.HAS_BURST {0} \
   CONFIG.NUM_READ_OUTSTANDING {16} \
   CONFIG.NUM_WRITE_OUTSTANDING {16} \
   CONFIG.PROTOCOL {AXI4} \
   ] $m_axi_gmem_1_0


  # Create ports
  set ap_clk_0 [ create_bd_port -dir I -type clk ap_clk_0 ]
  set ap_rst_n_0 [ create_bd_port -dir I -type rst ap_rst_n_0 ]
  set col_indices_0 [ create_bd_port -dir I -from 63 -to 0 -type data col_indices_0 ]
  set m_0 [ create_bd_port -dir I -from 31 -to 0 -type data m_0 ]
  set n_0 [ create_bd_port -dir I -from 31 -to 0 -type data n_0 ]
  set nnz_0 [ create_bd_port -dir I -from 31 -to 0 -type data nnz_0 ]
  set row_indices_0 [ create_bd_port -dir I -from 63 -to 0 -type data row_indices_0 ]
  set values_0 [ create_bd_port -dir I -from 63 -to 0 -type data values_0 ]
  set x_0 [ create_bd_port -dir I -from 63 -to 0 -type data x_0 ]
  set y_0 [ create_bd_port -dir I -from 63 -to 0 -type data y_0 ]

  # Create instance: spmv_kernel_0, and set properties
  set spmv_kernel_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:spmv_kernel:0.0 spmv_kernel_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net ap_ctrl_0_1 [get_bd_intf_ports ap_ctrl_0] [get_bd_intf_pins spmv_kernel_0/ap_ctrl]
  connect_bd_intf_net -intf_net spmv_kernel_0_m_axi_gmem_0 [get_bd_intf_ports m_axi_gmem_0_0] [get_bd_intf_pins spmv_kernel_0/m_axi_gmem_0]
  connect_bd_intf_net -intf_net spmv_kernel_0_m_axi_gmem_1 [get_bd_intf_ports m_axi_gmem_1_0] [get_bd_intf_pins spmv_kernel_0/m_axi_gmem_1]

  # Create port connections
  connect_bd_net -net ap_clk_0_1 [get_bd_ports ap_clk_0] [get_bd_pins spmv_kernel_0/ap_clk]
  connect_bd_net -net ap_rst_n_0_1 [get_bd_ports ap_rst_n_0] [get_bd_pins spmv_kernel_0/ap_rst_n]
  connect_bd_net -net col_indices_0_1 [get_bd_ports col_indices_0] [get_bd_pins spmv_kernel_0/col_indices]
  connect_bd_net -net m_0_1 [get_bd_ports m_0] [get_bd_pins spmv_kernel_0/m]
  connect_bd_net -net n_0_1 [get_bd_ports n_0] [get_bd_pins spmv_kernel_0/n]
  connect_bd_net -net nnz_0_1 [get_bd_ports nnz_0] [get_bd_pins spmv_kernel_0/nnz]
  connect_bd_net -net row_indices_0_1 [get_bd_ports row_indices_0] [get_bd_pins spmv_kernel_0/row_indices]
  connect_bd_net -net values_0_1 [get_bd_ports values_0] [get_bd_pins spmv_kernel_0/values]
  connect_bd_net -net x_0_1 [get_bd_ports x_0] [get_bd_pins spmv_kernel_0/x]
  connect_bd_net -net y_0_1 [get_bd_ports y_0] [get_bd_pins spmv_kernel_0/y]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


