/* Generated by Yosys 0.7 (git sha1 61f6811, i686-w64-mingw32.static-gcc 4.9.3 -Os) */

`include "cmos_cells.v"

module paraleloserialsint(CLOCK, LOADS, IS, D, OS);
  wire [9:0] _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire _34_;
  wire _35_;
  wire _36_;
  wire _37_;
  wire _38_;
  wire _39_;
  wire _40_;
  wire _41_;
  wire _42_;
  wire _43_;
  wire _44_;
  wire _45_;
  wire _46_;
  wire _47_;
  wire _48_;
  wire _49_;
  wire _50_;
  wire _51_;
  wire _52_;
  input CLOCK;
  input [9:0] D;
  input IS;
  input LOADS;
  output OS;
  wire [9:0] temp;
  NOR _53_ (
    .A(_10_),
    .B(_27_),
    .Y(_39_)
  );
  NOR _54_ (
    .A(_39_),
    .B(_38_),
    .Y(_11_)
  );
  NOR _55_ (
    .A(_12_),
    .B(_13_),
    .Y(_41_)
  );
  NOR _56_ (
    .A(_14_),
    .B(_27_),
    .Y(_42_)
  );
  NOR _57_ (
    .A(_42_),
    .B(_41_),
    .Y(_15_)
  );
  NOR _58_ (
    .A(_16_),
    .B(_13_),
    .Y(_43_)
  );
  NOR _59_ (
    .A(_17_),
    .B(_27_),
    .Y(_44_)
  );
  NOR _60_ (
    .A(_44_),
    .B(_43_),
    .Y(_18_)
  );
  NOR _61_ (
    .A(_19_),
    .B(_13_),
    .Y(_45_)
  );
  NOR _62_ (
    .A(_20_),
    .B(_27_),
    .Y(_46_)
  );
  NOR _63_ (
    .A(_46_),
    .B(_45_),
    .Y(_21_)
  );
  NOR _64_ (
    .A(_22_),
    .B(_13_),
    .Y(_48_)
  );
  NOR _65_ (
    .A(_23_),
    .B(_27_),
    .Y(_49_)
  );
  NOR _66_ (
    .A(_49_),
    .B(_48_),
    .Y(_25_)
  );
  NOR _67_ (
    .A(_13_),
    .B(_01_),
    .Y(_26_)
  );
  NOT _68_ (
    .A(_13_),
    .Y(_27_)
  );
  NOR _69_ (
    .A(_27_),
    .B(_02_),
    .Y(_28_)
  );
  NOR _70_ (
    .A(_28_),
    .B(_26_),
    .Y(_24_)
  );
  NOR _71_ (
    .A(_32_),
    .B(_13_),
    .Y(_29_)
  );
  NOR _72_ (
    .A(_40_),
    .B(_27_),
    .Y(_30_)
  );
  NOR _73_ (
    .A(_30_),
    .B(_29_),
    .Y(_47_)
  );
  NOR _74_ (
    .A(_50_),
    .B(_13_),
    .Y(_31_)
  );
  NOR _75_ (
    .A(_51_),
    .B(_27_),
    .Y(_33_)
  );
  NOR _76_ (
    .A(_33_),
    .B(_31_),
    .Y(_52_)
  );
  NOR _77_ (
    .A(_03_),
    .B(_13_),
    .Y(_34_)
  );
  NOR _78_ (
    .A(_04_),
    .B(_27_),
    .Y(_35_)
  );
  NOR _79_ (
    .A(_35_),
    .B(_34_),
    .Y(_05_)
  );
  NOR _80_ (
    .A(_06_),
    .B(_13_),
    .Y(_36_)
  );
  NOR _81_ (
    .A(_07_),
    .B(_27_),
    .Y(_37_)
  );
  NOR _82_ (
    .A(_37_),
    .B(_36_),
    .Y(_08_)
  );
  NOR _83_ (
    .A(_09_),
    .B(_13_),
    .Y(_38_)
  );
  DFF _84_ (
    .C(CLOCK),
    .D(_00_[0]),
    .Q(temp[0])
  );
  DFF _85_ (
    .C(CLOCK),
    .D(_00_[1]),
    .Q(temp[1])
  );
  DFF _86_ (
    .C(CLOCK),
    .D(_00_[2]),
    .Q(temp[2])
  );
  DFF _87_ (
    .C(CLOCK),
    .D(_00_[3]),
    .Q(temp[3])
  );
  DFF _88_ (
    .C(CLOCK),
    .D(_00_[4]),
    .Q(temp[4])
  );
  DFF _89_ (
    .C(CLOCK),
    .D(_00_[5]),
    .Q(temp[5])
  );
  DFF _90_ (
    .C(CLOCK),
    .D(_00_[6]),
    .Q(temp[6])
  );
  DFF _91_ (
    .C(CLOCK),
    .D(_00_[7]),
    .Q(temp[7])
  );
  DFF _92_ (
    .C(CLOCK),
    .D(_00_[8]),
    .Q(temp[8])
  );
  DFF _93_ (
    .C(CLOCK),
    .D(_00_[9]),
    .Q(temp[9])
  );
  assign OS = temp[0];
  assign _01_ = temp[2];
  assign _02_ = D[1];
  assign _13_ = LOADS;
  assign _00_[1] = _24_;
  assign _32_ = temp[3];
  assign _40_ = D[2];
  assign _00_[2] = _47_;
  assign _50_ = temp[4];
  assign _51_ = D[3];
  assign _00_[3] = _52_;
  assign _03_ = temp[5];
  assign _04_ = D[4];
  assign _00_[4] = _05_;
  assign _06_ = temp[6];
  assign _07_ = D[5];
  assign _00_[5] = _08_;
  assign _09_ = temp[7];
  assign _10_ = D[6];
  assign _00_[6] = _11_;
  assign _12_ = temp[8];
  assign _14_ = D[7];
  assign _00_[7] = _15_;
  assign _16_ = temp[9];
  assign _17_ = D[8];
  assign _00_[8] = _18_;
  assign _19_ = IS;
  assign _20_ = D[9];
  assign _00_[9] = _21_;
  assign _22_ = temp[1];
  assign _23_ = D[0];
  assign _00_[0] = _25_;
endmodule

module serialparalelosint(CLOCK, IS, OP);
  input CLOCK;
  input IS;
  output [9:0] OP;
  wire [9:0] temp;
  DFF _0_ (
    .C(CLOCK),
    .D(temp[1]),
    .Q(temp[0])
  );
  DFF _1_ (
    .C(CLOCK),
    .D(temp[2]),
    .Q(temp[1])
  );
  DFF _2_ (
    .C(CLOCK),
    .D(temp[3]),
    .Q(temp[2])
  );
  DFF _3_ (
    .C(CLOCK),
    .D(temp[4]),
    .Q(temp[3])
  );
  DFF _4_ (
    .C(CLOCK),
    .D(temp[5]),
    .Q(temp[4])
  );
  DFF _5_ (
    .C(CLOCK),
    .D(temp[6]),
    .Q(temp[5])
  );
  DFF _6_ (
    .C(CLOCK),
    .D(temp[7]),
    .Q(temp[6])
  );
  DFF _7_ (
    .C(CLOCK),
    .D(temp[8]),
    .Q(temp[7])
  );
  DFF _8_ (
    .C(CLOCK),
    .D(temp[9]),
    .Q(temp[8])
  );
  DFF _9_ (
    .C(CLOCK),
    .D(IS),
    .Q(temp[9])
  );
  assign OP = temp;
endmodule