/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-10 -O2 -fdebug-prefix-map=/build/yosys-0DEyT5/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */
`include "cmos_cells.v"
module convertidorsynt(PCLK, in, out_8, ENB, CLK, bits);
  wire [7:0] _000_;
  wire [1:0] _001_;
  wire _002_;
  wire _003_;
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
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire [1:0] _107_;
  wire [1:0] _108_;
  wire [1:0] _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire [7:0] _116_;
  wire [7:0] _117_;
  wire [1:0] _118_;
  wire [1:0] _119_;
  wire [1:0] _120_;
  wire [5:0] _121_;
  wire [1:0] _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire [7:0] _126_;
  wire _127_;
  input CLK;
  input ENB;
  input [1:0] PCLK;
  output [1:0] bits;
  input [31:0] in;
  output [7:0] out_8;
  NOT _128_ (
    .A(_075_),
    .Y(_032_)
  );
  NAND _129_ (
    .A(_032_),
    .B(_047_),
    .Y(_033_)
  );
  NOT _130_ (
    .A(_047_),
    .Y(_035_)
  );
  NAND _131_ (
    .A(_075_),
    .B(_035_),
    .Y(_091_)
  );
  NAND _132_ (
    .A(_091_),
    .B(_033_),
    .Y(_037_)
  );
  NOT _133_ (
    .A(_037_),
    .Y(_002_)
  );
  NOT _134_ (
    .A(_073_),
    .Y(_039_)
  );
  NOT _135_ (
    .A(_051_),
    .Y(_040_)
  );
  NOR _136_ (
    .A(_037_),
    .B(_040_),
    .Y(_042_)
  );
  NOR _137_ (
    .A(_075_),
    .B(_035_),
    .Y(_043_)
  );
  NAND _138_ (
    .A(_043_),
    .B(_014_),
    .Y(_045_)
  );
  NOR _139_ (
    .A(_032_),
    .B(_047_),
    .Y(_046_)
  );
  NAND _140_ (
    .A(_046_),
    .B(_015_),
    .Y(_049_)
  );
  NAND _141_ (
    .A(_049_),
    .B(_045_),
    .Y(_050_)
  );
  NOR _142_ (
    .A(_050_),
    .B(_042_),
    .Y(_052_)
  );
  NOR _143_ (
    .A(_052_),
    .B(_039_),
    .Y(_076_)
  );
  NOT _144_ (
    .A(_053_),
    .Y(_054_)
  );
  NOR _145_ (
    .A(_037_),
    .B(_054_),
    .Y(_055_)
  );
  NAND _146_ (
    .A(_043_),
    .B(_016_),
    .Y(_057_)
  );
  NAND _147_ (
    .A(_046_),
    .B(_017_),
    .Y(_058_)
  );
  NAND _148_ (
    .A(_058_),
    .B(_057_),
    .Y(_060_)
  );
  NOR _149_ (
    .A(_060_),
    .B(_055_),
    .Y(_061_)
  );
  NOR _150_ (
    .A(_061_),
    .B(_039_),
    .Y(_078_)
  );
  NOT _151_ (
    .A(_056_),
    .Y(_063_)
  );
  NOR _152_ (
    .A(_037_),
    .B(_063_),
    .Y(_065_)
  );
  NAND _153_ (
    .A(_043_),
    .B(_018_),
    .Y(_066_)
  );
  NAND _154_ (
    .A(_046_),
    .B(_019_),
    .Y(_068_)
  );
  NAND _155_ (
    .A(_068_),
    .B(_066_),
    .Y(_069_)
  );
  NOR _156_ (
    .A(_069_),
    .B(_065_),
    .Y(_071_)
  );
  NOR _157_ (
    .A(_071_),
    .B(_039_),
    .Y(_080_)
  );
  NOT _158_ (
    .A(_059_),
    .Y(_072_)
  );
  NOR _159_ (
    .A(_037_),
    .B(_072_),
    .Y(_074_)
  );
  NAND _160_ (
    .A(_043_),
    .B(_020_),
    .Y(_077_)
  );
  NAND _161_ (
    .A(_046_),
    .B(_021_),
    .Y(_079_)
  );
  NAND _162_ (
    .A(_079_),
    .B(_077_),
    .Y(_081_)
  );
  NOR _163_ (
    .A(_081_),
    .B(_074_),
    .Y(_083_)
  );
  NOR _164_ (
    .A(_083_),
    .B(_039_),
    .Y(_082_)
  );
  NOT _165_ (
    .A(_062_),
    .Y(_086_)
  );
  NOR _166_ (
    .A(_037_),
    .B(_086_),
    .Y(_088_)
  );
  NAND _167_ (
    .A(_043_),
    .B(_022_),
    .Y(_090_)
  );
  NAND _168_ (
    .A(_046_),
    .B(_023_),
    .Y(_092_)
  );
  NAND _169_ (
    .A(_092_),
    .B(_090_),
    .Y(_093_)
  );
  NOR _170_ (
    .A(_093_),
    .B(_088_),
    .Y(_094_)
  );
  NOR _171_ (
    .A(_094_),
    .B(_039_),
    .Y(_084_)
  );
  NOT _172_ (
    .A(_064_),
    .Y(_095_)
  );
  NOR _173_ (
    .A(_037_),
    .B(_095_),
    .Y(_096_)
  );
  NAND _174_ (
    .A(_043_),
    .B(_024_),
    .Y(_097_)
  );
  NAND _175_ (
    .A(_046_),
    .B(_025_),
    .Y(_098_)
  );
  NAND _176_ (
    .A(_098_),
    .B(_097_),
    .Y(_100_)
  );
  NOR _177_ (
    .A(_100_),
    .B(_096_),
    .Y(_102_)
  );
  NOR _178_ (
    .A(_102_),
    .B(_039_),
    .Y(_085_)
  );
  NOT _179_ (
    .A(_067_),
    .Y(_103_)
  );
  NOR _180_ (
    .A(_037_),
    .B(_103_),
    .Y(_003_)
  );
  NAND _181_ (
    .A(_043_),
    .B(_026_),
    .Y(_004_)
  );
  NAND _182_ (
    .A(_046_),
    .B(_027_),
    .Y(_005_)
  );
  NAND _183_ (
    .A(_005_),
    .B(_004_),
    .Y(_006_)
  );
  NOR _184_ (
    .A(_006_),
    .B(_003_),
    .Y(_007_)
  );
  NOR _185_ (
    .A(_007_),
    .B(_039_),
    .Y(_087_)
  );
  NOT _186_ (
    .A(_070_),
    .Y(_008_)
  );
  NOR _187_ (
    .A(_037_),
    .B(_008_),
    .Y(_009_)
  );
  NAND _188_ (
    .A(_043_),
    .B(_028_),
    .Y(_010_)
  );
  NAND _189_ (
    .A(_046_),
    .B(_029_),
    .Y(_011_)
  );
  NAND _190_ (
    .A(_011_),
    .B(_010_),
    .Y(_012_)
  );
  NOR _191_ (
    .A(_012_),
    .B(_009_),
    .Y(_013_)
  );
  NOR _192_ (
    .A(_013_),
    .B(_039_),
    .Y(_089_)
  );
  NOR _193_ (
    .A(_046_),
    .B(_073_),
    .Y(_099_)
  );
  NOT _194_ (
    .A(_037_),
    .Y(_101_)
  );
  DFF _195_ (
    .C(CLK),
    .D(_000_[0]),
    .Q(out_8[0])
  );
  DFF _196_ (
    .C(CLK),
    .D(_000_[1]),
    .Q(out_8[1])
  );
  DFF _197_ (
    .C(CLK),
    .D(_000_[2]),
    .Q(out_8[2])
  );
  DFF _198_ (
    .C(CLK),
    .D(_000_[3]),
    .Q(out_8[3])
  );
  DFF _199_ (
    .C(CLK),
    .D(_000_[4]),
    .Q(out_8[4])
  );
  DFF _200_ (
    .C(CLK),
    .D(_000_[5]),
    .Q(out_8[5])
  );
  DFF _201_ (
    .C(CLK),
    .D(_000_[6]),
    .Q(out_8[6])
  );
  DFF _202_ (
    .C(CLK),
    .D(_000_[7]),
    .Q(out_8[7])
  );
  DFF _203_ (
    .C(CLK),
    .D(_001_[0]),
    .Q(bits[0])
  );
  DFF _204_ (
    .C(CLK),
    .D(_001_[1]),
    .Q(bits[1])
  );
  assign bits[1] = _002_;
  assign _047_ = PCLK[0];
  assign _075_ = PCLK[1];
  assign _014_ = in[8];
  assign _015_ = in[0];
  assign _016_ = in[9];
  assign _017_ = in[1];
  assign _018_ = in[10];
  assign _019_ = in[2];
  assign _020_ = in[11];
  assign _021_ = in[3];
  assign _022_ = in[12];
  assign _023_ = in[4];
  assign _024_ = in[13];
  assign _025_ = in[5];
  assign _026_ = in[14];
  assign _027_ = in[6];
  assign _028_ = in[15];
  assign _029_ = in[7];
  assign _030_ = in[16];
  assign _031_ = in[17];
  assign _034_ = in[18];
  assign _036_ = in[19];
  assign _038_ = in[20];
  assign _041_ = in[21];
  assign _044_ = in[22];
  assign _048_ = in[23];
  assign _051_ = in[24];
  assign _053_ = in[25];
  assign _056_ = in[26];
  assign _059_ = in[27];
  assign _062_ = in[28];
  assign _064_ = in[29];
  assign _067_ = in[30];
  assign _070_ = in[31];
  assign _073_ = ENB;
  assign _000_[0] = _076_;
  assign _000_[1] = _078_;
  assign _000_[2] = _080_;
  assign _000_[3] = _082_;
  assign _000_[4] = _084_;
  assign _000_[5] = _085_;
  assign _000_[6] = _087_;
  assign _000_[7] = _089_;
  assign bits[0] = _091_;
  assign _001_[0] = _099_;
  assign _001_[1] = _101_;
endmodule