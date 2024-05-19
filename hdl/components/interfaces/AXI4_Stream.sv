`default_nettype none

interface AXI4_Stream
  #(WIDTH_BYTES = 4);
    logic ARESETN;
    logic TVALID;
    logic TREADY;
    logic [(8*WIDTH_BYTES-1):0] TDATA;
    logic TLAST;
endinterface