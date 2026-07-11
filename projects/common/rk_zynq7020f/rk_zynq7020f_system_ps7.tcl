###############################################################################
## Copyright (C) 2026 Analog Devices, Inc. All rights reserved.
### SPDX short identifier: ADIBSD
###############################################################################

# PS7 configuration extracted from the vendor reference design for the
# RK-ZYNQ7020-F board (fmc_ad9361_7020 Vivado project, xc7z020clg484-2).
#
# Applied as a single set_property -dict so Vivado validates the final,
# self-consistent MIO/bank configuration in one pass. Setting these one at a
# time (e.g. via repeated ad_ip_parameter calls) hits transient conflicts:
# bank voltage vs. MIO IOTYPE, and MIO pin default assignments (e.g. USB0
# reset defaults to MIO4, which briefly collides with QSPI on MIO1..6 until
# its final MIO13 assignment is also applied) - Vivado validates each
# individual set_property against the *current* (possibly still-default)
# state of every other parameter, so a naive per-line ordering will fail.

set rk_zynq7020f_ps7_config {
  CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ                {766.666687}
  CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ                {10.000000}
  CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ                {10.158730}
  CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ              {125.000000}
  CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ              {10.000000}
  CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ              {100.000000}
  CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ              {200.000000}
  CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ              {10.000000}
  CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ              {10.000000}
  CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ               {200.000000}
  CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ               {200.000000}
  CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ               {100.000000}
  CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ                {10.000000}
  CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ                {166.666672}
  CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ               {200.000000}
  CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ          {127.777786}
  CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ          {127.777786}
  CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ          {127.777786}
  CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ          {127.777786}
  CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ          {127.777786}
  CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ          {127.777786}
  CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ               {100.000000}
  CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ                {127.777786}
  CONFIG.PCW_APU_PERIPHERAL_FREQMHZ                    {767}
  CONFIG.PCW_CAN0_PERIPHERAL_ENABLE                    {0}
  CONFIG.PCW_CAN1_PERIPHERAL_ENABLE                    {0}
  CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ                    {100}
  CONFIG.PCW_CAN_PERIPHERAL_VALID                      {0}
  CONFIG.PCW_CLK0_FREQ                                 {100000000}
  CONFIG.PCW_CLK1_FREQ                                 {200000000}
  CONFIG.PCW_CLK2_FREQ                                 {10000000}
  CONFIG.PCW_CLK3_FREQ                                 {10000000}
  CONFIG.PCW_DDR_RAM_HIGHADDR                          {0x3FFFFFFF}
  CONFIG.PCW_ENET0_ENET0_IO                            {MIO 16 .. 27}
  CONFIG.PCW_ENET0_GRP_MDIO_ENABLE                     {1}
  CONFIG.PCW_ENET0_GRP_MDIO_IO                         {MIO 52 .. 53}
  CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC                   {IO PLL}
  CONFIG.PCW_ENET0_PERIPHERAL_ENABLE                   {1}
  CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ                  {1000 Mbps}
  CONFIG.PCW_ENET_RESET_ENABLE                         {0}
  CONFIG.PCW_EN_CAN0                                   {0}
  CONFIG.PCW_EN_CAN1                                   {0}
  CONFIG.PCW_EN_CLK1_PORT                              {1}
  CONFIG.PCW_EN_EMIO_CAN0                              {0}
  CONFIG.PCW_EN_EMIO_CAN1                              {0}
  CONFIG.PCW_EN_EMIO_CD_SDIO0                          {0}
  CONFIG.PCW_EN_EMIO_CD_SDIO1                          {0}
  CONFIG.PCW_EN_EMIO_ENET0                             {0}
  CONFIG.PCW_EN_EMIO_GPIO                              {1}
  CONFIG.PCW_EN_EMIO_I2C0                              {0}
  CONFIG.PCW_EN_EMIO_I2C1                              {1}
  CONFIG.PCW_EN_EMIO_SDIO1                             {0}
  CONFIG.PCW_EN_EMIO_SPI0                              {1}
  CONFIG.PCW_EN_EMIO_UART0                             {0}
  CONFIG.PCW_EN_EMIO_WP_SDIO1                          {0}
  CONFIG.PCW_EN_ENET0                                  {1}
  CONFIG.PCW_EN_GPIO                                   {1}
  CONFIG.PCW_EN_I2C0                                   {1}
  CONFIG.PCW_EN_I2C1                                   {1}
  CONFIG.PCW_EN_QSPI                                   {1}
  CONFIG.PCW_EN_SDIO0                                  {1}
  CONFIG.PCW_EN_SDIO1                                  {1}
  CONFIG.PCW_EN_SPI0                                   {1}
  CONFIG.PCW_EN_UART0                                  {1}
  CONFIG.PCW_EN_USB0                                   {1}
  CONFIG.PCW_FCLK_CLK1_BUF                             {TRUE}
  CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ                  {100}
  CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ                  {200}
  CONFIG.PCW_FPGA_FCLK0_ENABLE                         {1}
  CONFIG.PCW_FPGA_FCLK1_ENABLE                         {1}
  CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE                     {1}
  CONFIG.PCW_GPIO_EMIO_GPIO_IO                         {64}
  CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH                      {64}
  CONFIG.PCW_GPIO_MIO_GPIO_ENABLE                      {1}
  CONFIG.PCW_GPIO_MIO_GPIO_IO                          {MIO}
  CONFIG.PCW_I2C0_GRP_INT_ENABLE                       {0}
  CONFIG.PCW_I2C0_I2C0_IO                              {MIO 14 .. 15}
  CONFIG.PCW_I2C0_PERIPHERAL_ENABLE                    {1}
  CONFIG.PCW_I2C1_I2C1_IO                              {EMIO}
  CONFIG.PCW_I2C1_PERIPHERAL_ENABLE                    {1}
  CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ                    {127.777779}
  CONFIG.PCW_I2C_RESET_ENABLE                          {0}
  CONFIG.PCW_IRQ_F2P_INTR                              {1}
  CONFIG.PCW_MIO_0_IOTYPE                              {LVCMOS 3.3V}
  CONFIG.PCW_MIO_0_PULLUP                              {enabled}
  CONFIG.PCW_MIO_0_SLEW                                {slow}
  CONFIG.PCW_MIO_10_IOTYPE                             {LVCMOS 3.3V}
  CONFIG.PCW_MIO_10_PULLUP                             {enabled}
  CONFIG.PCW_MIO_10_SLEW                               {slow}
  CONFIG.PCW_MIO_11_IOTYPE                             {LVCMOS 3.3V}
  CONFIG.PCW_MIO_11_PULLUP                             {enabled}
  CONFIG.PCW_MIO_11_SLEW                               {slow}
  CONFIG.PCW_MIO_12_IOTYPE                             {LVCMOS 3.3V}
  CONFIG.PCW_MIO_12_PULLUP                             {enabled}
  CONFIG.PCW_MIO_12_SLEW                               {slow}
  CONFIG.PCW_MIO_13_IOTYPE                             {LVCMOS 3.3V}
  CONFIG.PCW_MIO_13_PULLUP                             {enabled}
  CONFIG.PCW_MIO_13_SLEW                               {slow}
  CONFIG.PCW_MIO_14_IOTYPE                             {LVCMOS 3.3V}
  CONFIG.PCW_MIO_14_PULLUP                             {enabled}
  CONFIG.PCW_MIO_14_SLEW                               {slow}
  CONFIG.PCW_MIO_15_IOTYPE                             {LVCMOS 3.3V}
  CONFIG.PCW_MIO_15_PULLUP                             {enabled}
  CONFIG.PCW_MIO_15_SLEW                               {slow}
  CONFIG.PCW_MIO_16_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_16_PULLUP                             {enabled}
  CONFIG.PCW_MIO_16_SLEW                               {slow}
  CONFIG.PCW_MIO_17_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_17_PULLUP                             {enabled}
  CONFIG.PCW_MIO_17_SLEW                               {slow}
  CONFIG.PCW_MIO_18_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_18_PULLUP                             {enabled}
  CONFIG.PCW_MIO_18_SLEW                               {slow}
  CONFIG.PCW_MIO_19_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_19_PULLUP                             {enabled}
  CONFIG.PCW_MIO_19_SLEW                               {slow}
  CONFIG.PCW_MIO_1_IOTYPE                              {LVCMOS 3.3V}
  CONFIG.PCW_MIO_1_PULLUP                              {enabled}
  CONFIG.PCW_MIO_1_SLEW                                {slow}
  CONFIG.PCW_MIO_20_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_20_PULLUP                             {enabled}
  CONFIG.PCW_MIO_20_SLEW                               {slow}
  CONFIG.PCW_MIO_21_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_21_PULLUP                             {enabled}
  CONFIG.PCW_MIO_21_SLEW                               {slow}
  CONFIG.PCW_MIO_22_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_22_PULLUP                             {enabled}
  CONFIG.PCW_MIO_22_SLEW                               {slow}
  CONFIG.PCW_MIO_23_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_23_PULLUP                             {enabled}
  CONFIG.PCW_MIO_23_SLEW                               {slow}
  CONFIG.PCW_MIO_24_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_24_PULLUP                             {enabled}
  CONFIG.PCW_MIO_24_SLEW                               {slow}
  CONFIG.PCW_MIO_25_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_25_PULLUP                             {enabled}
  CONFIG.PCW_MIO_25_SLEW                               {slow}
  CONFIG.PCW_MIO_26_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_26_PULLUP                             {enabled}
  CONFIG.PCW_MIO_26_SLEW                               {slow}
  CONFIG.PCW_MIO_27_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_27_PULLUP                             {enabled}
  CONFIG.PCW_MIO_27_SLEW                               {slow}
  CONFIG.PCW_MIO_28_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_28_PULLUP                             {enabled}
  CONFIG.PCW_MIO_28_SLEW                               {slow}
  CONFIG.PCW_MIO_29_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_29_PULLUP                             {enabled}
  CONFIG.PCW_MIO_29_SLEW                               {slow}
  CONFIG.PCW_MIO_2_IOTYPE                              {LVCMOS 3.3V}
  CONFIG.PCW_MIO_2_SLEW                                {slow}
  CONFIG.PCW_MIO_30_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_30_PULLUP                             {enabled}
  CONFIG.PCW_MIO_30_SLEW                               {slow}
  CONFIG.PCW_MIO_31_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_31_PULLUP                             {enabled}
  CONFIG.PCW_MIO_31_SLEW                               {slow}
  CONFIG.PCW_MIO_32_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_32_PULLUP                             {enabled}
  CONFIG.PCW_MIO_32_SLEW                               {slow}
  CONFIG.PCW_MIO_33_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_33_PULLUP                             {enabled}
  CONFIG.PCW_MIO_33_SLEW                               {slow}
  CONFIG.PCW_MIO_34_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_34_PULLUP                             {enabled}
  CONFIG.PCW_MIO_34_SLEW                               {slow}
  CONFIG.PCW_MIO_35_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_35_PULLUP                             {enabled}
  CONFIG.PCW_MIO_35_SLEW                               {slow}
  CONFIG.PCW_MIO_36_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_36_PULLUP                             {enabled}
  CONFIG.PCW_MIO_36_SLEW                               {slow}
  CONFIG.PCW_MIO_37_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_37_PULLUP                             {enabled}
  CONFIG.PCW_MIO_37_SLEW                               {slow}
  CONFIG.PCW_MIO_38_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_38_PULLUP                             {enabled}
  CONFIG.PCW_MIO_38_SLEW                               {slow}
  CONFIG.PCW_MIO_39_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_39_PULLUP                             {enabled}
  CONFIG.PCW_MIO_39_SLEW                               {slow}
  CONFIG.PCW_MIO_3_IOTYPE                              {LVCMOS 3.3V}
  CONFIG.PCW_MIO_3_SLEW                                {slow}
  CONFIG.PCW_MIO_40_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_40_PULLUP                             {enabled}
  CONFIG.PCW_MIO_40_SLEW                               {slow}
  CONFIG.PCW_MIO_41_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_41_PULLUP                             {enabled}
  CONFIG.PCW_MIO_41_SLEW                               {slow}
  CONFIG.PCW_MIO_42_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_42_PULLUP                             {enabled}
  CONFIG.PCW_MIO_42_SLEW                               {slow}
  CONFIG.PCW_MIO_43_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_43_PULLUP                             {enabled}
  CONFIG.PCW_MIO_43_SLEW                               {slow}
  CONFIG.PCW_MIO_44_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_44_PULLUP                             {enabled}
  CONFIG.PCW_MIO_44_SLEW                               {slow}
  CONFIG.PCW_MIO_45_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_45_PULLUP                             {enabled}
  CONFIG.PCW_MIO_45_SLEW                               {slow}
  CONFIG.PCW_MIO_46_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_46_PULLUP                             {enabled}
  CONFIG.PCW_MIO_46_SLEW                               {slow}
  CONFIG.PCW_MIO_47_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_47_PULLUP                             {enabled}
  CONFIG.PCW_MIO_47_SLEW                               {slow}
  CONFIG.PCW_MIO_48_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_48_PULLUP                             {enabled}
  CONFIG.PCW_MIO_48_SLEW                               {slow}
  CONFIG.PCW_MIO_49_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_49_PULLUP                             {enabled}
  CONFIG.PCW_MIO_49_SLEW                               {slow}
  CONFIG.PCW_MIO_4_IOTYPE                              {LVCMOS 3.3V}
  CONFIG.PCW_MIO_4_SLEW                                {slow}
  CONFIG.PCW_MIO_50_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_50_PULLUP                             {enabled}
  CONFIG.PCW_MIO_50_SLEW                               {slow}
  CONFIG.PCW_MIO_51_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_51_PULLUP                             {enabled}
  CONFIG.PCW_MIO_51_SLEW                               {slow}
  CONFIG.PCW_MIO_52_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_52_PULLUP                             {enabled}
  CONFIG.PCW_MIO_52_SLEW                               {slow}
  CONFIG.PCW_MIO_53_IOTYPE                             {LVCMOS 1.8V}
  CONFIG.PCW_MIO_53_PULLUP                             {enabled}
  CONFIG.PCW_MIO_53_SLEW                               {slow}
  CONFIG.PCW_MIO_5_IOTYPE                              {LVCMOS 3.3V}
  CONFIG.PCW_MIO_5_SLEW                                {slow}
  CONFIG.PCW_MIO_6_IOTYPE                              {LVCMOS 3.3V}
  CONFIG.PCW_MIO_6_SLEW                                {slow}
  CONFIG.PCW_MIO_7_IOTYPE                              {LVCMOS 3.3V}
  CONFIG.PCW_MIO_7_SLEW                                {slow}
  CONFIG.PCW_MIO_8_IOTYPE                              {LVCMOS 3.3V}
  CONFIG.PCW_MIO_8_SLEW                                {slow}
  CONFIG.PCW_MIO_9_IOTYPE                              {LVCMOS 3.3V}
  CONFIG.PCW_MIO_9_PULLUP                              {enabled}
  CONFIG.PCW_MIO_9_SLEW                                {slow}
  CONFIG.PCW_PRESET_BANK1_VOLTAGE                      {LVCMOS 1.8V}
  CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE                     {0}
  CONFIG.PCW_QSPI_GRP_IO1_ENABLE                       {0}
  CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE                 {1}
  CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO                     {MIO 1 .. 6}
  CONFIG.PCW_QSPI_GRP_SS1_ENABLE                       {0}
  CONFIG.PCW_QSPI_PERIPHERAL_ENABLE                    {1}
  CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ                   {200}
  CONFIG.PCW_QSPI_QSPI_IO                              {MIO 1 .. 6}
  CONFIG.PCW_SD0_GRP_CD_ENABLE                         {1}
  CONFIG.PCW_SD0_GRP_CD_IO                             {MIO 9}
  CONFIG.PCW_SD0_GRP_POW_ENABLE                        {0}
  CONFIG.PCW_SD0_GRP_WP_ENABLE                         {0}
  CONFIG.PCW_SD0_PERIPHERAL_ENABLE                     {1}
  CONFIG.PCW_SD0_SD0_IO                                {MIO 40 .. 45}
  CONFIG.PCW_SD1_GRP_CD_ENABLE                         {0}
  CONFIG.PCW_SD1_GRP_POW_ENABLE                        {0}
  CONFIG.PCW_SD1_GRP_WP_ENABLE                         {0}
  CONFIG.PCW_SD1_PERIPHERAL_ENABLE                     {1}
  CONFIG.PCW_SD1_SD1_IO                                {MIO 46 .. 51}
  CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ                   {100}
  CONFIG.PCW_SDIO_PERIPHERAL_VALID                     {1}
  CONFIG.PCW_SINGLE_QSPI_DATA_MODE                     {x4}
  CONFIG.PCW_SPI0_PERIPHERAL_ENABLE                    {1}
  CONFIG.PCW_SPI0_SPI0_IO                              {EMIO}
  CONFIG.PCW_SPI_PERIPHERAL_FREQMHZ                    {166.666666}
  CONFIG.PCW_SPI_PERIPHERAL_VALID                      {1}
  CONFIG.PCW_UART0_GRP_FULL_ENABLE                     {0}
  CONFIG.PCW_UART0_PERIPHERAL_ENABLE                   {1}
  CONFIG.PCW_UART0_UART0_IO                            {MIO 10 .. 11}
  CONFIG.PCW_UART_PERIPHERAL_FREQMHZ                   {100}
  CONFIG.PCW_UART_PERIPHERAL_VALID                     {1}
  CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ                  {533.333374}
  CONFIG.PCW_UIPARAM_DDR_PARTNO                        {MT41J256M16 RE-125}
  CONFIG.PCW_USB0_PERIPHERAL_ENABLE                    {1}
  CONFIG.PCW_USB0_RESET_ENABLE                         {1}
  CONFIG.PCW_USB0_RESET_IO                             {MIO 13}
  CONFIG.PCW_USB0_USB0_IO                              {MIO 28 .. 39}
  CONFIG.PCW_USB_RESET_ENABLE                          {1}
  CONFIG.PCW_USB_RESET_SELECT                          {Share reset pin}
  CONFIG.PCW_USE_FABRIC_INTERRUPT                      {1}
  CONFIG.PCW_USE_S_AXI_HP0                             {1}
  CONFIG.PCW_USE_S_AXI_HP1                             {1}
}

set_property -dict $rk_zynq7020f_ps7_config [get_bd_cells sys_ps7]
