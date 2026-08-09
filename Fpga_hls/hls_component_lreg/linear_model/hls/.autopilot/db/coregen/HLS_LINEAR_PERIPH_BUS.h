// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of x
//        bit 31~0 - x[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of m
//        bit 31~0 - m[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of c
//        bit 31~0 - c[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of y
//        bit 31~0 - y[31:0] (Read)
// 0x2c : Control signal of y
//        bit 0  - y_ap_vld (Read/COR)
//        others - reserved
// 0x38 : Data signal of done
//        bit 15~0 - done[15:0] (Read)
//        others   - reserved
// 0x3c : Control signal of done
//        bit 0  - done_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define HLS_LINEAR_PERIPH_BUS_ADDR_AP_CTRL   0x00
#define HLS_LINEAR_PERIPH_BUS_ADDR_GIE       0x04
#define HLS_LINEAR_PERIPH_BUS_ADDR_IER       0x08
#define HLS_LINEAR_PERIPH_BUS_ADDR_ISR       0x0c
#define HLS_LINEAR_PERIPH_BUS_ADDR_X_DATA    0x10
#define HLS_LINEAR_PERIPH_BUS_BITS_X_DATA    32
#define HLS_LINEAR_PERIPH_BUS_ADDR_M_DATA    0x18
#define HLS_LINEAR_PERIPH_BUS_BITS_M_DATA    32
#define HLS_LINEAR_PERIPH_BUS_ADDR_C_DATA    0x20
#define HLS_LINEAR_PERIPH_BUS_BITS_C_DATA    32
#define HLS_LINEAR_PERIPH_BUS_ADDR_Y_DATA    0x28
#define HLS_LINEAR_PERIPH_BUS_BITS_Y_DATA    32
#define HLS_LINEAR_PERIPH_BUS_ADDR_Y_CTRL    0x2c
#define HLS_LINEAR_PERIPH_BUS_ADDR_DONE_DATA 0x38
#define HLS_LINEAR_PERIPH_BUS_BITS_DONE_DATA 16
#define HLS_LINEAR_PERIPH_BUS_ADDR_DONE_CTRL 0x3c
