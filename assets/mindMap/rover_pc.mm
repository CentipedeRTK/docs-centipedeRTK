<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Rover" FOLDED="false" ID="ID_440304860" CREATED="1601303261646" MODIFIED="1601388353735" STYLE="oval">
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
<hook NAME="AutomaticEdgeColor" COUNTER="13" RULE="ON_BRANCH_CREATION"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="R&#xe9;cepteur" POSITION="right" ID="ID_319329554" CREATED="1601303382721" MODIFIED="1601388222612" HGAP_QUANTITY="-228.2499927803876 pt" VSHIFT_QUANTITY="66.74999801069504 pt">
<edge COLOR="#0000ff"/>
<hook URI="reseau_files/f9p.png" SIZE="0.36384785" NAME="ExternalObject"/>
<node TEXT="Antenne" ID="ID_1080416737" CREATED="1601303454228" MODIFIED="1601303479120" HGAP_QUANTITY="-285.99999105930357 pt" VSHIFT_QUANTITY="-86.99999740719804 pt">
<hook URI="reseau_files/da910.png" SIZE="0.63925695" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="ordinateur" POSITION="left" ID="ID_619953828" CREATED="1601385521712" MODIFIED="1601388049699" HGAP_QUANTITY="51.49999888241294 pt" VSHIFT_QUANTITY="107.24999680370102 pt">
<edge COLOR="#00007c"/>
<hook URI="reseau_files/pi.png" SIZE="0.19159639" NAME="ExternalObject"/>
<node TEXT="RtkLib" ID="ID_1560989407" CREATED="1601385715734" MODIFIED="1601388088153" HGAP_QUANTITY="9.500000134110447 pt" VSHIFT_QUANTITY="-39.74999881535772 pt">
<hook URI="reseau_files/rtklib.png" SIZE="0.33505154" NAME="ExternalObject"/>
<node TEXT="RtkNavi" ID="ID_1310593229" CREATED="1601385914654" MODIFIED="1601388096550" HGAP_QUANTITY="10.250000111758698 pt" VSHIFT_QUANTITY="38.999998837709455 pt">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_305577963" MIDDLE_LABEL="Solutions:&#xa;- NMEA&#xa;- LLH&#xa;- ECEF&#xa;&#xa;Format:&#xa;- file&#xa;- Tcp Client&#xa;- Tcp Server&#xa;- ..." STARTINCLINATION="54;-17;" ENDINCLINATION="78;6;" STARTARROW="NONE" ENDARROW="NONE"/>
<hook URI="../images/rover_w/9.PNG" SIZE="0.28039935" NAME="ExternalObject"/>
</node>
<node TEXT="RtkRcv" ID="ID_305577963" CREATED="1601386278118" MODIFIED="1601388074218" HGAP_QUANTITY="11.000000089406967 pt" VSHIFT_QUANTITY="24.749999262392546 pt">
<hook URI="rover_files/rtklib_server.png" SIZE="0.26988223" NAME="ExternalObject"/>
</node>
</node>
</node>
<node TEXT="R&#xe9;seau" POSITION="right" ID="ID_1600535360" CREATED="1601387440897" MODIFIED="1601389325367" HGAP_QUANTITY="-118.74999604374182 pt" VSHIFT_QUANTITY="131.2499960884453 pt">
<edge COLOR="#7c7c00"/>
<hook URI="rover_files/2-3-4g.png" SIZE="0.14257812" NAME="ExternalObject"/>
<node ID="ID_134540929" CREATED="1601387955734" MODIFIED="1601389315979" HGAP_QUANTITY="20.749999798834327 pt" VSHIFT_QUANTITY="-44.24999868124728 pt"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#ff0000">NTRIP: caster.centipede.fr:2101</font></b>
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1019935466" CREATED="1601389281101" MODIFIED="1601389325367" HGAP_QUANTITY="23.749999709427364 pt" VSHIFT_QUANTITY="-1.4999999552965182 pt"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>tcp: 192.168.0.1:5016</b>
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Option Radio" POSITION="right" ID="ID_1260231686" CREATED="1601387570451" MODIFIED="1601388348276" HGAP_QUANTITY="-257.4999919086697 pt" VSHIFT_QUANTITY="-21.749999351799506 pt">
<edge COLOR="#0000ff"/>
<hook URI="reseau_files/radio.png" SIZE="0.31" NAME="ExternalObject"/>
</node>
</node>
</map>
