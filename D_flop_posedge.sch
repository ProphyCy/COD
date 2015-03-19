<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="R" />
        <signal name="D" />
        <signal name="Q" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="S" />
        <signal name="clk" />
        <signal name="XLXN_21" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="NQ" />
        <port polarity="Input" name="R" />
        <port polarity="Input" name="D" />
        <port polarity="Output" name="Q" />
        <port polarity="Input" name="S" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="NQ" />
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="nand3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <block symbolname="and3" name="XLXI_1">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="R" name="I2" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_3">
            <blockpin signalname="S" name="I0" />
            <blockpin signalname="XLXN_28" name="I1" />
            <blockpin signalname="XLXN_12" name="I2" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_4">
            <blockpin signalname="XLXN_28" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="clk" name="I2" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_5">
            <blockpin signalname="XLXN_25" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="clk" name="I2" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_6">
            <blockpin signalname="Q" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="R" name="I2" />
            <blockpin signalname="NQ" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_7">
            <blockpin signalname="S" name="I0" />
            <blockpin signalname="XLXN_28" name="I1" />
            <blockpin signalname="NQ" name="I2" />
            <blockpin signalname="Q" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="1232" name="XLXI_1" orien="R270" />
        <instance x="1376" y="912" name="XLXI_5" orien="R270" />
        <instance x="1024" y="912" name="XLXI_4" orien="R270" />
        <instance x="1376" y="560" name="XLXI_7" orien="R270" />
        <instance x="1024" y="560" name="XLXI_6" orien="R270" />
        <branch name="R">
            <wire x2="688" y1="608" y2="608" x1="624" />
            <wire x2="832" y1="608" y2="608" x1="688" />
            <wire x2="688" y1="608" y2="1232" x1="688" />
            <wire x2="832" y1="1232" y2="1232" x1="688" />
            <wire x2="832" y1="560" y2="608" x1="832" />
        </branch>
        <iomarker fontsize="28" x="624" y="608" name="R" orien="R180" />
        <branch name="D">
            <wire x2="960" y1="1232" y2="1536" x1="960" />
            <wire x2="976" y1="1536" y2="1536" x1="960" />
        </branch>
        <iomarker fontsize="28" x="976" y="1536" name="D" orien="R0" />
        <branch name="Q">
            <wire x2="976" y1="560" y2="560" x1="960" />
            <wire x2="1024" y1="560" y2="560" x1="976" />
            <wire x2="1248" y1="288" y2="288" x1="1024" />
            <wire x2="1248" y1="288" y2="304" x1="1248" />
            <wire x2="1024" y1="288" y2="304" x1="1024" />
            <wire x2="1024" y1="304" y2="336" x1="1024" />
            <wire x2="1024" y1="336" y2="560" x1="1024" />
            <wire x2="1248" y1="224" y2="288" x1="1248" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="896" y1="912" y2="960" x1="896" />
            <wire x2="896" y1="960" y2="976" x1="896" />
            <wire x2="1056" y1="960" y2="960" x1="896" />
            <wire x2="1056" y1="960" y2="1232" x1="1056" />
            <wire x2="1184" y1="1232" y2="1232" x1="1056" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1248" y1="912" y2="976" x1="1248" />
        </branch>
        <instance x="1376" y="1232" name="XLXI_3" orien="R270" />
        <iomarker fontsize="28" x="1520" y="608" name="S" orien="R0" />
        <branch name="S">
            <wire x2="1312" y1="560" y2="608" x1="1312" />
            <wire x2="1376" y1="608" y2="608" x1="1312" />
            <wire x2="1520" y1="608" y2="608" x1="1376" />
            <wire x2="1376" y1="608" y2="1232" x1="1376" />
            <wire x2="1376" y1="1232" y2="1232" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="608" y="1088" name="clk" orien="R180" />
        <branch name="clk">
            <wire x2="832" y1="1088" y2="1088" x1="608" />
            <wire x2="832" y1="912" y2="944" x1="832" />
            <wire x2="832" y1="944" y2="1088" x1="832" />
            <wire x2="1184" y1="944" y2="944" x1="832" />
            <wire x2="1184" y1="912" y2="944" x1="1184" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="896" y1="640" y2="640" x1="656" />
            <wire x2="896" y1="640" y2="656" x1="896" />
            <wire x2="656" y1="640" y2="928" x1="656" />
            <wire x2="1312" y1="928" y2="928" x1="656" />
            <wire x2="656" y1="928" y2="1264" x1="656" />
            <wire x2="896" y1="1264" y2="1264" x1="656" />
            <wire x2="896" y1="560" y2="640" x1="896" />
            <wire x2="896" y1="1232" y2="1264" x1="896" />
            <wire x2="1312" y1="912" y2="928" x1="1312" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1104" y1="912" y2="912" x1="960" />
            <wire x2="1104" y1="608" y2="912" x1="1104" />
            <wire x2="1248" y1="608" y2="608" x1="1104" />
            <wire x2="1248" y1="608" y2="640" x1="1248" />
            <wire x2="1248" y1="640" y2="656" x1="1248" />
            <wire x2="1472" y1="640" y2="640" x1="1248" />
            <wire x2="1472" y1="640" y2="1264" x1="1472" />
            <wire x2="1248" y1="560" y2="608" x1="1248" />
            <wire x2="1248" y1="1232" y2="1264" x1="1248" />
            <wire x2="1472" y1="1264" y2="1264" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1248" y="224" name="Q" orien="R270" />
        <branch name="NQ">
            <wire x2="896" y1="224" y2="272" x1="896" />
            <wire x2="896" y1="272" y2="288" x1="896" />
            <wire x2="896" y1="288" y2="304" x1="896" />
            <wire x2="1136" y1="272" y2="272" x1="896" />
            <wire x2="1136" y1="272" y2="560" x1="1136" />
            <wire x2="1184" y1="560" y2="560" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="896" y="224" name="NQ" orien="R270" />
    </sheet>
</drawing>