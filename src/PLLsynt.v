/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-10 -O2 -fdebug-prefix-map=/build/yosys-0DEyT5/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

`include "cmos_cells.v"

module PLLsynt(CLK, reset, CLK_5, CLK_10);
  wire _000_;
  wire [3:0] _001_;
  wire [3:0] _002_;
  wire [3:0] _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire [3:0] _045_;
  wire [1:0] _046_;
  wire [1:0] _047_;
  wire _048_;
  wire [3:0] _049_;
  wire _050_;
  wire _051_;
  wire [3:0] _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire [3:0] _056_;
  wire [3:0] _057_;
  wire [3:0] _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  input CLK;
  output CLK_10;
  output CLK_5;
  wire [3:0] cont;
  input reset;
  NOT _062_ (
    .A(_005_),
    .Y(_008_)
  );
  NOT _063_ (
    .A(_006_),
    .Y(_009_)
  );
  NOR _064_ (
    .A(_009_),
    .B(_008_),
    .Y(_007_)
  );
  NOT _065_ (
    .A(_043_),
    .Y(_010_)
  );
  NOT _066_ (
    .A(_044_),
    .Y(_011_)
  );
  NOR _067_ (
    .A(_011_),
    .B(_010_),
    .Y(_012_)
  );
  NOR _068_ (
    .A(_012_),
    .B(_004_),
    .Y(_013_)
  );
  NOR _069_ (
    .A(_013_),
    .B(_042_),
    .Y(_014_)
  );
  NOT _070_ (
    .A(_042_),
    .Y(_015_)
  );
  NOR _071_ (
    .A(_015_),
    .B(_004_),
    .Y(_016_)
  );
  NAND _072_ (
    .A(_016_),
    .B(_011_),
    .Y(_017_)
  );
  NAND _073_ (
    .A(_017_),
    .B(_006_),
    .Y(_018_)
  );
  NOR _074_ (
    .A(_018_),
    .B(_014_),
    .Y(_024_)
  );
  NOR _075_ (
    .A(_017_),
    .B(_010_),
    .Y(_019_)
  );
  NAND _076_ (
    .A(_017_),
    .B(_010_),
    .Y(_020_)
  );
  NAND _077_ (
    .A(_020_),
    .B(_006_),
    .Y(_021_)
  );
  NOR _078_ (
    .A(_021_),
    .B(_019_),
    .Y(_026_)
  );
  NOR _079_ (
    .A(_016_),
    .B(_044_),
    .Y(_022_)
  );
  NAND _080_ (
    .A(_016_),
    .B(_010_),
    .Y(_023_)
  );
  NAND _081_ (
    .A(_023_),
    .B(_006_),
    .Y(_025_)
  );
  NOR _082_ (
    .A(_025_),
    .B(_022_),
    .Y(_027_)
  );
  NOT _083_ (
    .A(_004_),
    .Y(_028_)
  );
  NOR _084_ (
    .A(_009_),
    .B(_028_),
    .Y(_029_)
  );
  NOT _085_ (
    .A(_031_),
    .Y(_030_)
  );
  NAND _086_ (
    .A(_006_),
    .B(_044_),
    .Y(_032_)
  );
  NOR _087_ (
    .A(_032_),
    .B(_023_),
    .Y(_033_)
  );
  NAND _088_ (
    .A(_033_),
    .B(_030_),
    .Y(_034_)
  );
  NAND _089_ (
    .A(_015_),
    .B(_028_),
    .Y(_035_)
  );
  NOR _090_ (
    .A(_044_),
    .B(_043_),
    .Y(_037_)
  );
  NAND _091_ (
    .A(_037_),
    .B(_006_),
    .Y(_038_)
  );
  NOR _092_ (
    .A(_038_),
    .B(_035_),
    .Y(_039_)
  );
  NOR _093_ (
    .A(_033_),
    .B(_030_),
    .Y(_040_)
  );
  NOR _094_ (
    .A(_040_),
    .B(_039_),
    .Y(_041_)
  );
  NAND _095_ (
    .A(_041_),
    .B(_034_),
    .Y(_036_)
  );
  DFF _096_ (
    .C(CLK),
    .D(_000_),
    .Q(CLK_10)
  );
  DFF _097_ (
    .C(CLK),
    .D(_001_[0]),
    .Q(cont[0])
  );
  DFF _098_ (
    .C(CLK),
    .D(_001_[1]),
    .Q(cont[1])
  );
  DFF _099_ (
    .C(CLK),
    .D(_001_[2]),
    .Q(cont[2])
  );
  DFF _100_ (
    .C(CLK),
    .D(_001_[3]),
    .Q(cont[3])
  );
  assign _004_ = cont[3];
  assign _042_ = cont[0];
  assign _043_ = cont[1];
  assign _044_ = cont[2];
  assign _005_ = CLK;
  assign _006_ = reset;
  assign CLK_5 = _007_;
  assign _001_[0] = _024_;
  assign _001_[1] = _026_;
  assign _001_[2] = _027_;
  assign _001_[3] = _029_;
  assign _031_ = CLK_10;
  assign _000_ = _036_;
endmodule