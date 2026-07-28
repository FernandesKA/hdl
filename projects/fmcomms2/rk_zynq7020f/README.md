<!-- no_build_example, no_no_os -->

# FMCOMMS2/RK-ZYNQ7020-F HDL Project

This carrier is a third-party Zynq-7020 (xc7z020clg484-2) development board with
an FMC LPC connector (RK-ZYNQ7020-F). The FMC LPC pinout and system IIC bus are
pin-compatible with the AMD/Xilinx ZedBoard, so this project reuses the
`fmcomms2` common design in the same way as `fmcomms2/zed`.

## Building the project

```
cd projects/fmcomms2/rk_zynq7020f
make
```

Corresponding device trees:

- for FMCOMMS2/3: [zynq-zed-adv7511-ad9361-fmcomms2-3.dts](https://github.com/analogdevicesinc/linux/blob/main/arch/arm/boot/dts/xilinx/zynq-zed-adv7511-ad9361-fmcomms2-3.dts)
- for FMCOMMS4: [zynq-zed-adv7511-ad9364-fmcomms4.dts](https://github.com/analogdevicesinc/linux/blob/main/arch/arm/boot/dts/xilinx/zynq-zed-adv7511-ad9364-fmcomms4.dts)
