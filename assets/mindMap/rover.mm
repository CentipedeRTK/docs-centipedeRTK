<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Rover" FOLDED="false" ID="ID_440304860" CREATED="1601303261646" MODIFIED="1601388017136" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="10" RULE="ON_BRANCH_CREATION"/>
<node TEXT="R&#xe9;cepteur" POSITION="right" ID="ID_319329554" CREATED="1601303382721" MODIFIED="1601387825955" HGAP_QUANTITY="-211.7499932721259 pt" VSHIFT_QUANTITY="29.2499991282821 pt">
<edge COLOR="#0000ff"/>
<hook URI="reseau_files/f9p.png" SIZE="0.36384785" NAME="ExternalObject"/>
<node TEXT="Antenne" ID="ID_1080416737" CREATED="1601303454228" MODIFIED="1601303479120" HGAP_QUANTITY="-285.99999105930357 pt" VSHIFT_QUANTITY="-86.99999740719804 pt">
<hook URI="reseau_files/da910.png" SIZE="0.63925695" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="Bluetooth" POSITION="right" ID="ID_36839149" CREATED="1601303663698" MODIFIED="1601387818312" HGAP_QUANTITY="-187.74999398738163 pt" VSHIFT_QUANTITY="8.99999973177911 pt">
<edge COLOR="#ff00ff"/>
<hook URI="rover_files/bluetooth.png" SIZE="0.038909093" NAME="ExternalObject"/>
</node>
<node TEXT="" POSITION="left" ID="ID_1337341231" CREATED="1601304001785" MODIFIED="1601388017135" HGAP_QUANTITY="32.74999944120649 pt" VSHIFT_QUANTITY="200.9999940097334 pt">
<edge COLOR="#00ffff"/>
<hook URI="rover_files/smartphone.png" SIZE="0.08863427" NAME="ExternalObject"/>
<node TEXT="Rtkgps+" ID="ID_1101297834" CREATED="1601304083105" MODIFIED="1601387852355" HGAP_QUANTITY="13.25000002235175 pt" VSHIFT_QUANTITY="-97.49999709427367 pt">
<hook URI="rover_files/rtkgps.png" SIZE="0.42777777" NAME="ExternalObject"/>
<node TEXT="" ID="ID_1371734886" CREATED="1601304127174" MODIFIED="1601387908563" HGAP_QUANTITY="25.249999664723916 pt" VSHIFT_QUANTITY="-11.999999642372142 pt">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1371734886" MIDDLE_LABEL="Solutions:&#xa;- NMEA&#xa;- LLH&#xa;- ECEF&#xa;&#xa;Format:&#xa;- file&#xa;- Tcp Client&#xa;- Tcp Server&#xa;- ..." STARTINCLINATION="-28;166;" ENDINCLINATION="68;48;" STARTARROW="NONE" ENDARROW="NONE"/>
<hook URI="rover_files/rtkgps_im.png" SIZE="0.50985986" NAME="ExternalObject"/>
</node>
<node TEXT="RtkLib" ID="ID_1776353765" CREATED="1601304176814" MODIFIED="1601383232465" HGAP_QUANTITY="36.499999329447775 pt" VSHIFT_QUANTITY="1.4999999552965164 pt">
<hook URI="reseau_files/rtklib.png" SIZE="0.3556701" NAME="ExternalObject"/>
</node>
<node TEXT="" ID="ID_1483249985" CREATED="1601304231301" MODIFIED="1601383171559" HGAP_QUANTITY="17.74999988824132 pt" VSHIFT_QUANTITY="7.4999997764825865 pt">
<hook URI="rover_files/proj.png" SIZE="0.35117373" NAME="ExternalObject"/>
</node>
</node>
</node>
<node TEXT="R&#xe9;seau" POSITION="right" ID="ID_752510309" CREATED="1601387739945" MODIFIED="1601389255831" HGAP_QUANTITY="-105.24999644607317 pt" VSHIFT_QUANTITY="41.24999877065423 pt">
<edge COLOR="#007c7c"/>
<hook URI="rover_files/2-3-4g.png" SIZE="0.16015625" NAME="ExternalObject"/>
<node ID="ID_134540929" CREATED="1601387955734" MODIFIED="1601389249595" HGAP_QUANTITY="25.99999964237214 pt" VSHIFT_QUANTITY="-44.99999865889553 pt"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#ff0000"><b>NTRIP: caster.centipede.fr:2101</b></font>
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_355524477" CREATED="1601389187774" MODIFIED="1601389255831" HGAP_QUANTITY="32.74999944120647 pt" VSHIFT_QUANTITY="-16.499999508261695 pt"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>tcp: 192..168.0.1:5016</b>
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</map>
