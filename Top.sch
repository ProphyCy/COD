<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="BTN(3:0)" />
        <signal name="AN(3:0)" />
        <signal name="SW(7:0)" />
        <signal name="clkdiv(24)" />
        <signal name="clkdiv(19:18)" />
        <signal name="SW_OK(7:0)" />
        <signal name="SW_OK(1:0)" />
        <signal name="LED(7:0)" />
        <signal name="SEGMENT(6)" />
        <signal name="SEGMENT(5)" />
        <signal name="SEGMENT(4)" />
        <signal name="SEGMENT(3)" />
        <signal name="SEGMENT(2)" />
        <signal name="SEGMENT(1)" />
        <signal name="SEGMENT(0)" />
        <signal name="SEGMENT(7)" />
        <signal name="XLXN_53(31:0)" />
        <signal name="SEGMENT(7:0)" />
        <signal name="SW(4:2)" />
        <signal name="XLXN_17(3:0)" />
        <signal name="XLXN_18(3:0)" />
        <signal name="XLXN_139(4:0)" />
        <signal name="N0" />
        <signal name="XLXN_143" />
        <signal name="XLXN_144(31:0)" />
        <signal name="XLXN_145(31:0)" />
        <signal name="XLXN_146(4:0)" />
        <signal name="XLXN_147(2:0)" />
        <signal name="XLXN_148(2:0)" />
        <signal name="XLXN_149(2:0)" />
        <signal name="XLXN_150(2:0)" />
        <signal name="XLXN_151(2:0)" />
        <signal name="XLXN_152(2:0)" />
        <signal name="SW(7:5)" />
        <signal name="clk_50mhz" />
        <signal name="XLXN_155" />
        <signal name="XLXN_156(4:0)" />
        <signal name="XLXN_157(4:0)" />
        <signal name="SW(7:5),SW(1:0)" />
        <signal name="button_out(3:0)" />
        <signal name="button_out(2:0)" />
        <signal name="button_out(0)" />
        <signal name="XLXN_163(31:0)" />
        <signal name="XLXN_164(31:0)" />
        <signal name="XLXN_165(31:0)" />
        <signal name="XLXN_166(2:0)" />
        <signal name="ALU_out(31:0)" />
        <signal name="XLXN_168(4:0)" />
        <signal name="XLXN_169(31:0)" />
        <signal name="XLXN_170(31:0)" />
        <signal name="V5" />
        <signal name="Cout" />
        <signal name="blinke(3:0)" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,SW(1),CPU_CLK,Cout,Zero,clkdiv(27:24)" />
        <signal name="XLXN_175" />
        <signal name="XLXN_176" />
        <signal name="XLXN_177" />
        <signal name="XLXN_179" />
        <signal name="SW_OK(2)" />
        <signal name="CPU_CLK" />
        <signal name="clkdiv(31:0)" />
        <signal name="XLXN_188" />
        <signal name="XLXN_189" />
        <signal name="XLXN_190(31:0)" />
        <signal name="ALU_out(15:0)" />
        <signal name="XLXN_192(31:0)" />
        <signal name="Zero" />
        <signal name="XLXN_194(31:0)" />
        <signal name="XLXN_195" />
        <signal name="N0,N0,N0,N0,N0,SW(3),clkdiv(27:24)" />
        <signal name="XLXN_197" />
        <signal name="XLXN_198" />
        <signal name="XLXN_200" />
        <signal name="XLXN_201(31:0)" />
        <signal name="XLXN_202(31:0)" />
        <signal name="SW_OK(4)" />
        <signal name="V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,blinke(3:0),blinke(3:0)" />
        <signal name="XLXN_206" />
        <signal name="XLXN_207(31:0)" />
        <port polarity="Input" name="BTN(3:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Output" name="SEGMENT(6)" />
        <port polarity="Output" name="SEGMENT(5)" />
        <port polarity="Output" name="SEGMENT(4)" />
        <port polarity="Output" name="SEGMENT(3)" />
        <port polarity="Output" name="SEGMENT(2)" />
        <port polarity="Output" name="SEGMENT(1)" />
        <port polarity="Output" name="SEGMENT(0)" />
        <port polarity="Output" name="SEGMENT(7)" />
        <port polarity="Input" name="clk_50mhz" />
        <blockdef name="Anti_jitter">
            <timestamp>2014-11-9T15:38:53</timestamp>
            <rect style="linecolor:rgb(0,0,0);fillcolor:rgb(170,255,255);fillstyle:Solid" width="304" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <rect width="64" x="368" y="-92" height="24" />
            <line x2="432" y1="-80" y2="-80" x1="368" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-92" height="24" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
        </blockdef>
        <blockdef name="Input_2_32bit">
            <timestamp>2014-11-9T15:38:54</timestamp>
            <rect style="fillcolor:rgb(170,255,255);fillstyle:Solid" width="256" x="64" y="-272" height="272" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-92" height="24" />
            <line x2="384" y1="-80" y2="-80" x1="320" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <rect width="64" x="320" y="-252" height="24" />
            <line x2="384" y1="-240" y2="-240" x1="320" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="320" y="-188" height="24" />
            <line x2="384" y1="-176" y2="-176" x1="320" />
        </blockdef>
        <blockdef name="Output_2_Disp">
            <timestamp>2014-11-9T15:38:54</timestamp>
            <rect style="fillcolor:rgb(150,131,255);fillstyle:Solid" width="320" x="64" y="-896" height="896" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-716" height="24" />
            <line x2="448" y1="-704" y2="-704" x1="384" />
            <rect width="64" x="384" y="-652" height="24" />
            <line x2="448" y1="-640" y2="-640" x1="384" />
            <rect width="64" x="384" y="-780" height="24" />
            <line x2="448" y1="-768" y2="-768" x1="384" />
            <line x2="0" y1="-816" y2="-816" x1="64" />
            <line x2="0" y1="-768" y2="-768" x1="64" />
        </blockdef>
        <blockdef name="LED_DEV">
            <timestamp>2014-11-9T15:38:54</timestamp>
            <rect style="fillcolor:rgb(170,255,255);fillstyle:Solid" width="320" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <rect width="64" x="384" y="-92" height="24" />
            <line x2="448" y1="-80" y2="-80" x1="384" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="Display">
            <timestamp>2014-11-9T15:38:54</timestamp>
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="400" y1="-224" y2="-224" x1="464" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="400" y1="-160" y2="-160" x1="464" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <rect width="64" x="0" y="-156" height="24" />
            <line x2="0" y1="-144" y2="-144" x1="64" />
            <rect width="64" x="0" y="-92" height="24" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <rect width="64" x="0" y="-220" height="24" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(255,120,102);fillstyle:Solid" width="336" x="64" y="-356" height="340" />
            <line x2="464" y1="-304" y2="-304" x1="400" />
            <rect width="64" x="400" y="-316" height="24" />
            <rect width="64" x="400" y="-76" height="24" />
            <line x2="464" y1="-64" y2="-64" x1="400" />
        </blockdef>
        <blockdef name="ALU_LCDF">
            <timestamp>2014-11-9T15:38:52</timestamp>
            <rect style="fillcolor:rgb(255,120,102);fillstyle:Solid" width="304" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-188" height="24" />
            <line x2="0" y1="-176" y2="-176" x1="64" />
            <rect width="64" x="0" y="-124" height="24" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="clk_div">
            <timestamp>2015-3-12T5:53:51</timestamp>
            <rect style="fillcolor:rgb(142,240,255);fillstyle:Solid" width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-156" height="24" />
            <line x2="384" y1="-144" y2="-144" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Ext_32">
            <timestamp>2015-3-12T5:53:52</timestamp>
            <circle style="linewidth:W;linecolor:rgb(255,0,0);linestyle:Dash" r="69" cx="185" cy="-33" />
            <line x2="124" y1="0" y2="0" style="linewidth:W" x1="96" />
            <line x2="272" y1="-64" y2="-64" style="linewidth:W" x1="248" />
            <rect style="linecolor:rgb(255,255,255)" width="128" x="120" y="-80" height="88" />
        </blockdef>
        <blockdef name="or_bit_32">
            <timestamp>2015-3-12T6:11:56</timestamp>
            <rect width="220" x="64" y="-104" height="112" />
            <line x2="32" y1="-48" y2="-48" style="linewidth:W" x1="64" />
            <arc ex="260" ey="-48" sx="180" sy="0" r="88" cx="184" cy="-88" />
            <line x2="116" y1="0" y2="0" x1="180" />
            <line x2="116" y1="-96" y2="-96" x1="180" />
            <arc ex="116" ey="-96" sx="116" sy="0" r="56" cx="84" cy="-48" />
            <arc ex="180" ey="-96" sx="260" sy="-48" r="88" cx="184" cy="-8" />
            <line x2="120" y1="-96" y2="-96" x1="184" />
            <line x2="88" y1="-80" y2="-80" x1="128" />
            <line x2="92" y1="-16" y2="-16" x1="132" />
            <line x2="304" y1="-48" y2="-48" x1="284" />
        </blockdef>
        <blockdef name="ROM_B">
            <timestamp>2015-3-12T5:53:52</timestamp>
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="512" x="32" y="32" height="328" />
        </blockdef>
        <blockdef name="RAM_B">
            <timestamp>2015-3-12T5:53:52</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="512" x="32" y="32" height="316" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="224" y2="224" style="linewidth:W" x1="0" />
            <line x2="544" y1="144" y2="144" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="SignalExt_32">
            <timestamp>2015-3-12T5:53:53</timestamp>
            <line x2="76" y1="-32" y2="-32" x1="64" />
            <line x2="208" y1="-32" y2="-32" style="linewidth:W" x1="196" />
            <rect width="120" x="76" y="-52" height="40" />
        </blockdef>
        <block symbolname="Anti_jitter" name="U9">
            <blockpin signalname="clk_50mhz" name="clk" />
            <blockpin signalname="SW(7:0)" name="SW(7:0)" />
            <blockpin signalname="button_out(3:0)" name="button_out(3:0)" />
            <blockpin signalname="SW_OK(7:0)" name="SW_OK(7:0)" />
            <blockpin name="button_pluse(3:0)" />
            <blockpin signalname="BTN(3:0)" name="button(3:0)" />
        </block>
        <block symbolname="Input_2_32bit" name="M4">
            <blockpin signalname="blinke(3:0)" name="blinke(3:0)" />
            <blockpin name="state(1:0)" />
            <blockpin signalname="SW(7:5),SW(1:0)" name="disp_ctr(4:0)" />
            <blockpin signalname="XLXN_163(31:0)" name="Ai(31:0)" />
            <blockpin signalname="button_out(2:0)" name="push_out(2:0)" />
            <blockpin signalname="XLXN_164(31:0)" name="Bi(31:0)" />
        </block>
        <block symbolname="Output_2_Disp" name="M5">
            <blockpin signalname="clk_50mhz" name="clk" />
            <blockpin signalname="SW(7:5)" name="Disp_sel(2:0)" />
            <blockpin signalname="V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5" name="point_in(31:0)" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,blinke(3:0),blinke(3:0)" name="blink_in(31:0)" />
            <blockpin signalname="XLXN_163(31:0)" name="Disp0(31:0)" />
            <blockpin signalname="XLXN_164(31:0)" name="Disp1(31:0)" />
            <blockpin signalname="ALU_out(31:0)" name="Disp2(31:0)" />
            <blockpin signalname="XLXN_192(31:0)" name="Disp3(31:0)" />
            <blockpin signalname="XLXN_207(31:0)" name="Disp4(31:0)" />
            <blockpin signalname="clkdiv(31:0)" name="Disp5(31:0)" />
            <blockpin signalname="XLXN_201(31:0)" name="Disp6(31:0)" />
            <blockpin signalname="XLXN_202(31:0)" name="Disp7(31:0)" />
            <blockpin signalname="XLXN_18(3:0)" name="blink_out(3:0)" />
            <blockpin signalname="XLXN_17(3:0)" name="point_out(3:0)" />
            <blockpin signalname="XLXN_53(31:0)" name="Disp_num(31:0)" />
            <blockpin name="rst" />
            <blockpin name="EN" />
        </block>
        <block symbolname="gnd" name="XLXI_8">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="Display" name="M3">
            <blockpin signalname="XLXN_17(3:0)" name="pointing(3:0)" />
            <blockpin signalname="XLXN_18(3:0)" name="blinking(3:0)" />
            <blockpin signalname="SW_OK(1:0)" name="SW(1:0)" />
            <blockpin signalname="clkdiv(19:18)" name="Scanning(1:0)" />
            <blockpin signalname="XLXN_53(31:0)" name="disp_num(31:0)" />
            <blockpin signalname="clkdiv(24)" name="flash_clk" />
            <blockpin signalname="SEGMENT(7:0)" name="SEGMENT(7:0)" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
        </block>
        <block symbolname="ALU_LCDF" name="M8">
            <blockpin signalname="button_out(0)" name="C" />
            <blockpin signalname="SW(4:2)" name="ALU_Ctr(2:0)" />
            <blockpin signalname="XLXN_163(31:0)" name="Ai(31:0)" />
            <blockpin signalname="XLXN_164(31:0)" name="Bi(31:0)" />
            <blockpin signalname="ALU_out(31:0)" name="ALU_out(31:0)" />
            <blockpin signalname="Cout" name="Cout" />
        </block>
        <block symbolname="LED_DEV" name="M6">
            <blockpin name="clk" />
            <blockpin signalname="LED(7:0)" name="LED(7:0)" />
            <blockpin name="rst" />
            <blockpin name="EN" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,SW(1),CPU_CLK,Cout,Zero,clkdiv(27:24)" name="Data_in(31:0)" />
            <blockpin name="Other_out(31:8)" />
        </block>
        <block symbolname="vcc" name="XLXI_14">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="clk_div" name="U8">
            <blockpin signalname="clk_50mhz" name="clk" />
            <blockpin signalname="N0" name="rst" />
            <blockpin signalname="SW_OK(2)" name="SW2" />
            <blockpin signalname="clkdiv(31:0)" name="clkdiv(31:0)" />
            <blockpin signalname="CPU_CLK" name="Clk_CPU" />
        </block>
        <block symbolname="Ext_32" name="Ext32">
            <blockpin signalname="ALU_out(15:0)" name="imm_16(15:0)" />
            <blockpin signalname="XLXN_192(31:0)" name="Imm_32(31:0)" />
        </block>
        <block symbolname="or_bit_32" name="Zero_Result">
            <blockpin signalname="Zero" name="o" />
            <blockpin signalname="ALU_out(31:0)" name="A(31:0)" />
        </block>
        <block symbolname="ROM_B" name="U2">
            <blockpin signalname="N0,N0,N0,N0,N0,SW(3),clkdiv(27:24)" name="addra(9:0)" />
            <blockpin signalname="XLXN_200" name="clka" />
            <blockpin signalname="XLXN_201(31:0)" name="douta(31:0)" />
        </block>
        <block symbolname="RAM_B" name="U3">
            <blockpin signalname="N0,N0,N0,N0,N0,SW(3),clkdiv(27:24)" name="addra(9:0)" />
            <blockpin signalname="XLXN_200" name="clka" />
            <blockpin signalname="SW_OK(4)" name="wea(0:0)" />
            <blockpin signalname="XLXN_201(31:0)" name="dina(31:0)" />
            <blockpin signalname="XLXN_202(31:0)" name="douta(31:0)" />
        </block>
        <block symbolname="inv" name="XLXI_20">
            <blockpin signalname="clk_50mhz" name="I" />
            <blockpin signalname="XLXN_200" name="O" />
        </block>
        <block symbolname="SignalExt_32" name="Ext_logic">
            <blockpin signalname="XLXN_207(31:0)" name="So(31:0)" />
            <blockpin signalname="button_out(0)" name="S" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="BTN(3:0)">
            <wire x2="1056" y1="336" y2="336" x1="176" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="2528" y1="432" y2="432" x1="2352" />
        </branch>
        <iomarker fontsize="28" x="160" y="384" name="SW(7:0)" orien="R180" />
        <bustap x2="1776" y1="416" y2="416" x1="1680" />
        <bustap x2="1776" y1="224" y2="224" x1="1680" />
        <branch name="clkdiv(24)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="224" type="branch" />
            <wire x2="1856" y1="224" y2="224" x1="1776" />
            <wire x2="1888" y1="224" y2="224" x1="1856" />
        </branch>
        <branch name="clkdiv(19:18)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="416" type="branch" />
            <wire x2="1840" y1="416" y2="416" x1="1776" />
            <wire x2="1888" y1="416" y2="416" x1="1840" />
        </branch>
        <branch name="SW_OK(7:0)">
            <wire x2="1584" y1="544" y2="544" x1="944" />
            <wire x2="944" y1="544" y2="720" x1="944" />
            <wire x2="1584" y1="384" y2="384" x1="1488" />
            <wire x2="1712" y1="384" y2="384" x1="1584" />
            <wire x2="1584" y1="384" y2="544" x1="1584" />
        </branch>
        <bustap x2="1808" y1="384" y2="384" x1="1712" />
        <branch name="SW_OK(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="352" type="branch" />
            <wire x2="1840" y1="384" y2="384" x1="1808" />
            <wire x2="1888" y1="352" y2="352" x1="1840" />
            <wire x2="1840" y1="352" y2="384" x1="1840" />
        </branch>
        <branch name="LED(7:0)">
            <wire x2="3328" y1="1952" y2="1952" x1="3312" />
            <wire x2="3328" y1="1952" y2="2448" x1="3328" />
            <wire x2="3344" y1="2448" y2="2448" x1="3328" />
        </branch>
        <bustap x2="3392" y1="96" y2="96" x1="3296" />
        <bustap x2="3392" y1="128" y2="128" x1="3296" />
        <bustap x2="3392" y1="160" y2="160" x1="3296" />
        <bustap x2="3392" y1="192" y2="192" x1="3296" />
        <bustap x2="3392" y1="224" y2="224" x1="3296" />
        <bustap x2="3392" y1="256" y2="256" x1="3296" />
        <bustap x2="3392" y1="288" y2="288" x1="3296" />
        <branch name="SEGMENT(6)">
            <wire x2="3408" y1="64" y2="64" x1="3392" />
        </branch>
        <branch name="SEGMENT(5)">
            <wire x2="3408" y1="96" y2="96" x1="3392" />
        </branch>
        <branch name="SEGMENT(4)">
            <wire x2="3408" y1="128" y2="128" x1="3392" />
        </branch>
        <branch name="SEGMENT(3)">
            <wire x2="3408" y1="160" y2="160" x1="3392" />
        </branch>
        <branch name="SEGMENT(2)">
            <wire x2="3408" y1="192" y2="192" x1="3392" />
        </branch>
        <branch name="SEGMENT(1)">
            <wire x2="3408" y1="224" y2="224" x1="3392" />
        </branch>
        <branch name="SEGMENT(0)">
            <wire x2="3408" y1="256" y2="256" x1="3392" />
        </branch>
        <branch name="SEGMENT(7)">
            <wire x2="3408" y1="288" y2="288" x1="3392" />
        </branch>
        <iomarker fontsize="28" x="3408" y="64" name="SEGMENT(6)" orien="R0" />
        <iomarker fontsize="28" x="3408" y="96" name="SEGMENT(5)" orien="R0" />
        <iomarker fontsize="28" x="3408" y="128" name="SEGMENT(4)" orien="R0" />
        <iomarker fontsize="28" x="3408" y="160" name="SEGMENT(3)" orien="R0" />
        <iomarker fontsize="28" x="3408" y="192" name="SEGMENT(2)" orien="R0" />
        <iomarker fontsize="28" x="3408" y="224" name="SEGMENT(1)" orien="R0" />
        <iomarker fontsize="28" x="3408" y="256" name="SEGMENT(0)" orien="R0" />
        <iomarker fontsize="28" x="3408" y="288" name="SEGMENT(7)" orien="R0" />
        <branch name="XLXN_53(31:0)">
            <wire x2="1872" y1="80" y2="288" x1="1872" />
            <wire x2="1888" y1="288" y2="288" x1="1872" />
            <wire x2="3280" y1="80" y2="80" x1="1872" />
            <wire x2="3280" y1="80" y2="608" x1="3280" />
            <wire x2="3280" y1="608" y2="608" x1="3232" />
        </branch>
        <branch name="SEGMENT(7:0)">
            <wire x2="3296" y1="192" y2="192" x1="2352" />
            <wire x2="3296" y1="192" y2="224" x1="3296" />
            <wire x2="3296" y1="224" y2="256" x1="3296" />
            <wire x2="3296" y1="256" y2="288" x1="3296" />
            <wire x2="3296" y1="64" y2="96" x1="3296" />
            <wire x2="3296" y1="96" y2="128" x1="3296" />
            <wire x2="3296" y1="128" y2="160" x1="3296" />
            <wire x2="3296" y1="160" y2="192" x1="3296" />
        </branch>
        <bustap x2="3392" y1="64" y2="64" x1="3296" />
        <instance x="1888" y="496" name="M3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-16" type="instance" />
        </instance>
        <iomarker fontsize="28" x="176" y="336" name="BTN(3:0)" orien="R180" />
        <instance x="1056" y="416" name="U9" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="SW(7:0)">
            <wire x2="240" y1="384" y2="384" x1="160" />
            <wire x2="1056" y1="384" y2="384" x1="240" />
            <wire x2="240" y1="384" y2="496" x1="240" />
            <wire x2="240" y1="496" y2="576" x1="240" />
            <wire x2="240" y1="576" y2="1184" x1="240" />
        </branch>
        <branch name="SW(4:2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="790" type="branch" />
            <wire x2="896" y1="576" y2="576" x1="336" />
            <wire x2="896" y1="576" y2="790" x1="896" />
            <wire x2="896" y1="790" y2="1152" x1="896" />
            <wire x2="1040" y1="1152" y2="1152" x1="896" />
        </branch>
        <branch name="XLXN_17(3:0)">
            <wire x2="3264" y1="272" y2="272" x1="2352" />
            <wire x2="3264" y1="272" y2="736" x1="3264" />
            <wire x2="3264" y1="736" y2="736" x1="3232" />
        </branch>
        <branch name="XLXN_18(3:0)">
            <wire x2="3296" y1="336" y2="336" x1="2352" />
            <wire x2="3296" y1="336" y2="672" x1="3296" />
            <wire x2="3296" y1="672" y2="672" x1="3232" />
        </branch>
        <instance x="3216" y="1568" name="XLXI_8" orien="R0" />
        <branch name="N0">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3280" y="1408" type="branch" />
            <wire x2="3280" y1="1392" y2="1408" x1="3280" />
            <wire x2="3280" y1="1408" y2="1440" x1="3280" />
        </branch>
        <iomarker fontsize="28" x="2528" y="432" name="AN(3:0)" orien="R0" />
        <instance x="2784" y="1376" name="M5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="SW(7:5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1670" y="496" type="branch" />
            <wire x2="1670" y1="496" y2="496" x1="336" />
            <wire x2="2576" y1="496" y2="496" x1="1670" />
            <wire x2="2576" y1="496" y2="704" x1="2576" />
            <wire x2="2784" y1="704" y2="704" x1="2576" />
        </branch>
        <bustap x2="336" y1="496" y2="496" x1="240" />
        <branch name="clk_50mhz">
            <wire x2="112" y1="512" y2="1712" x1="112" />
            <wire x2="976" y1="512" y2="512" x1="112" />
            <wire x2="2784" y1="512" y2="512" x1="976" />
            <wire x2="976" y1="512" y2="592" x1="976" />
            <wire x2="1072" y1="592" y2="592" x1="976" />
            <wire x2="976" y1="256" y2="256" x1="192" />
            <wire x2="1056" y1="256" y2="256" x1="976" />
            <wire x2="976" y1="256" y2="512" x1="976" />
        </branch>
        <iomarker fontsize="28" x="192" y="256" name="clk_50mhz" orien="R180" />
        <branch name="SW(7:5),SW(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="1184" type="branch" />
            <wire x2="384" y1="1184" y2="1184" x1="336" />
            <wire x2="400" y1="1184" y2="1184" x1="384" />
        </branch>
        <branch name="button_out(3:0)">
            <wire x2="288" y1="432" y2="624" x1="288" />
            <wire x2="288" y1="624" y2="1088" x1="288" />
            <wire x2="1552" y1="432" y2="432" x1="288" />
            <wire x2="1552" y1="256" y2="256" x1="1488" />
            <wire x2="1552" y1="256" y2="432" x1="1552" />
        </branch>
        <branch name="button_out(2:0)">
            <wire x2="400" y1="1088" y2="1088" x1="384" />
        </branch>
        <bustap x2="384" y1="624" y2="624" x1="288" />
        <branch name="button_out(0)">
            <wire x2="384" y1="624" y2="960" x1="384" />
            <wire x2="720" y1="960" y2="960" x1="384" />
            <wire x2="1040" y1="960" y2="960" x1="720" />
            <wire x2="1024" y1="832" y2="832" x1="720" />
            <wire x2="720" y1="832" y2="960" x1="720" />
        </branch>
        <branch name="XLXN_163(31:0)">
            <wire x2="848" y1="1008" y2="1008" x1="784" />
            <wire x2="1040" y1="1008" y2="1008" x1="848" />
            <wire x2="2784" y1="896" y2="896" x1="848" />
            <wire x2="848" y1="896" y2="1008" x1="848" />
        </branch>
        <branch name="XLXN_164(31:0)">
            <wire x2="960" y1="1072" y2="1072" x1="784" />
            <wire x2="1040" y1="1072" y2="1072" x1="960" />
            <wire x2="960" y1="912" y2="1072" x1="960" />
            <wire x2="2752" y1="912" y2="912" x1="960" />
            <wire x2="2752" y1="912" y2="960" x1="2752" />
            <wire x2="2784" y1="960" y2="960" x1="2752" />
        </branch>
        <instance x="1040" y="1184" name="M8" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="ALU_out(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2183" y="1024" type="branch" />
            <wire x2="1600" y1="1024" y2="1024" x1="1472" />
            <wire x2="1808" y1="1024" y2="1024" x1="1600" />
            <wire x2="1808" y1="1024" y2="1152" x1="1808" />
            <wire x2="2183" y1="1024" y2="1024" x1="1808" />
            <wire x2="2784" y1="1024" y2="1024" x1="2183" />
            <wire x2="1600" y1="1024" y2="1312" x1="1600" />
            <wire x2="1664" y1="1312" y2="1312" x1="1600" />
        </branch>
        <instance x="400" y="1248" name="M4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <bustap x2="336" y1="1184" y2="1184" x1="240" />
        <bustap x2="384" y1="1088" y2="1088" x1="288" />
        <bustap x2="336" y1="576" y2="576" x1="240" />
        <instance x="512" y="128" name="XLXI_14" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="160" type="branch" />
            <wire x2="576" y1="128" y2="160" x1="576" />
        </branch>
        <branch name="Cout">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1152" type="branch" />
            <wire x2="1488" y1="1152" y2="1152" x1="1472" />
        </branch>
        <branch name="blinke(3:0)">
            <wire x2="832" y1="1216" y2="1216" x1="784" />
        </branch>
        <iomarker fontsize="28" x="3344" y="2448" name="LED(7:0)" orien="R0" />
        <instance x="2864" y="2176" name="M6" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,SW(1),CPU_CLK,Cout,Zero,clkdiv(27:24)">
            <wire x2="2864" y1="2128" y2="2128" x1="2752" />
        </branch>
        <instance x="1072" y="752" name="U8" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="656" type="branch" />
            <wire x2="1072" y1="656" y2="656" x1="1008" />
        </branch>
        <bustap x2="1040" y1="720" y2="720" x1="944" />
        <branch name="SW_OK(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1062" y="720" type="branch" />
            <wire x2="1062" y1="720" y2="720" x1="1040" />
            <wire x2="1072" y1="720" y2="720" x1="1062" />
        </branch>
        <branch name="CPU_CLK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="720" type="branch" />
            <wire x2="1504" y1="720" y2="720" x1="1456" />
        </branch>
        <branch name="clkdiv(31:0)">
            <wire x2="1680" y1="608" y2="608" x1="1456" />
            <wire x2="1680" y1="608" y2="1216" x1="1680" />
            <wire x2="2784" y1="1216" y2="1216" x1="1680" />
            <wire x2="1680" y1="224" y2="416" x1="1680" />
            <wire x2="1680" y1="416" y2="608" x1="1680" />
        </branch>
        <instance x="1952" y="1152" name="Ext32" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="36" type="instance" />
        </instance>
        <bustap x2="1904" y1="1152" y2="1152" x1="1808" />
        <branch name="ALU_out(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1152" type="branch" />
            <wire x2="1920" y1="1152" y2="1152" x1="1904" />
            <wire x2="2048" y1="1152" y2="1152" x1="1920" />
        </branch>
        <branch name="XLXN_192(31:0)">
            <wire x2="2784" y1="1088" y2="1088" x1="2224" />
        </branch>
        <instance x="1632" y="1360" name="Zero_Result" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="80" y="40" type="instance" />
        </instance>
        <branch name="Zero">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1312" type="branch" />
            <wire x2="1984" y1="1312" y2="1312" x1="1936" />
        </branch>
        <instance x="432" y="1440" name="U2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="360" type="instance" />
        </instance>
        <instance x="432" y="1856" name="U3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="348" type="instance" />
        </instance>
        <branch name="N0,N0,N0,N0,N0,SW(3),clkdiv(27:24)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="311" y="1424" type="branch" />
            <wire x2="311" y1="1424" y2="1424" x1="224" />
            <wire x2="384" y1="1424" y2="1424" x1="311" />
            <wire x2="384" y1="1424" y2="1520" x1="384" />
            <wire x2="384" y1="1520" y2="1936" x1="384" />
            <wire x2="432" y1="1936" y2="1936" x1="384" />
            <wire x2="432" y1="1520" y2="1520" x1="384" />
        </branch>
        <instance x="112" y="1744" name="XLXI_20" orien="R0" />
        <branch name="XLXN_200">
            <wire x2="352" y1="1712" y2="1712" x1="336" />
            <wire x2="432" y1="1712" y2="1712" x1="352" />
            <wire x2="352" y1="1712" y2="2128" x1="352" />
            <wire x2="432" y1="2128" y2="2128" x1="352" />
        </branch>
        <branch name="XLXN_201(31:0)">
            <wire x2="1120" y1="1824" y2="1824" x1="400" />
            <wire x2="400" y1="1824" y2="2080" x1="400" />
            <wire x2="432" y1="2080" y2="2080" x1="400" />
            <wire x2="1120" y1="1520" y2="1520" x1="1008" />
            <wire x2="2704" y1="1520" y2="1520" x1="1120" />
            <wire x2="1120" y1="1520" y2="1824" x1="1120" />
            <wire x2="2784" y1="1280" y2="1280" x1="2704" />
            <wire x2="2704" y1="1280" y2="1520" x1="2704" />
        </branch>
        <branch name="XLXN_202(31:0)">
            <wire x2="2736" y1="2000" y2="2000" x1="1008" />
            <wire x2="2784" y1="1344" y2="1344" x1="2736" />
            <wire x2="2736" y1="1344" y2="2000" x1="2736" />
        </branch>
        <branch name="SW_OK(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="272" y="2000" type="branch" />
            <wire x2="272" y1="2000" y2="2000" x1="240" />
            <wire x2="432" y1="2000" y2="2000" x1="272" />
        </branch>
        <branch name="V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5">
            <wire x2="2640" y1="768" y2="768" x1="2624" />
            <wire x2="2784" y1="768" y2="768" x1="2640" />
        </branch>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,blinke(3:0),blinke(3:0)">
            <wire x2="2784" y1="832" y2="832" x1="2624" />
        </branch>
        <instance x="960" y="864" name="Ext_logic" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="80" y="-60" type="instance" />
        </instance>
        <branch name="XLXN_207(31:0)">
            <wire x2="2288" y1="832" y2="832" x1="1168" />
            <wire x2="2288" y1="832" y2="1152" x1="2288" />
            <wire x2="2768" y1="1152" y2="1152" x1="2288" />
            <wire x2="2784" y1="1152" y2="1152" x1="2768" />
        </branch>
    </sheet>
</drawing>