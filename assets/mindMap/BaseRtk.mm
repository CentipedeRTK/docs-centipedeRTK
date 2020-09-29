<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="base RTK" FOLDED="false" ID="ID_313561593" CREATED="1601291870061" MODIFIED="1601390131528" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_icon_for_attributes="true" show_note_icons="true" fit_to_viewport="false"/>

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
<hook NAME="AutomaticEdgeColor" COUNTER="20" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Ordinateur" POSITION="right" ID="ID_1024013933" CREATED="1601295422454" MODIFIED="1601389918293" HGAP_QUANTITY="145.99999606609356 pt" VSHIFT_QUANTITY="-27.74999917298558 pt">
<hook URI="reseau_files/pi.png" SIZE="0.18407916" NAME="ExternalObject"/>
<hook NAME="AlwaysUnfoldedNode"/>
<edge COLOR="#ff0000"/>
<hook NAME="FreeNode"/>
<node TEXT="RtkBase Internal" ID="ID_1826875309" CREATED="1601295879223" MODIFIED="1601389918292" HGAP_QUANTITY="46.9999990165234 pt" VSHIFT_QUANTITY="78.74999765306717 pt">
<hook URI="reseau_files/rtkbase_internal.png" SIZE="0.8227933" NAME="ExternalObject"/>
<node TEXT="RTKlib" ID="ID_756021937" CREATED="1601296142135" MODIFIED="1601296160385">
<hook URI="reseau_files/rtklib.png" SIZE="0.57216495" NAME="ExternalObject"/>
</node>
<node TEXT="GPSD" ID="ID_1293237251" CREATED="1601296236690" MODIFIED="1601296246773">
<hook URI="reseau_files/gpsd.png" SIZE="0.68384254" NAME="ExternalObject"/>
</node>
<node TEXT="Chrony" ID="ID_1344949582" CREATED="1601296896840" MODIFIED="1601296914368">
<hook URI="reseau_files/chrony.png" SIZE="0.10243192" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="RtkBase Front" ID="ID_1060469078" CREATED="1601295996832" MODIFIED="1601389941452" HGAP_QUANTITY="20.749999798834324 pt" VSHIFT_QUANTITY="2.9999999105930186 pt">
<hook URI="reseau_files/rtkbase.png" SIZE="0.8246667" NAME="ExternalObject"/>
<node TEXT="Flask" ID="ID_1312453868" CREATED="1601296641866" MODIFIED="1601389941452" HGAP_QUANTITY="25.24999966472388 pt" VSHIFT_QUANTITY="-6.749999798834331 pt">
<hook URI="reseau_files/flask.png" SIZE="0.038234003" NAME="ExternalObject"/>
</node>
<node TEXT="Bootstrap" ID="ID_815813890" CREATED="1601296676623" MODIFIED="1601389936065" HGAP_QUANTITY="26.7499996200204 pt" VSHIFT_QUANTITY="3.7499998882412946 pt">
<hook URI="reseau_files/bootstrap.png" SIZE="0.13487493" NAME="ExternalObject"/>
</node>
<node TEXT="Python" ID="ID_182211848" CREATED="1601296758149" MODIFIED="1601296795772">
<hook URI="reseau_files/python.png" SIZE="0.045833334" NAME="ExternalObject"/>
</node>
</node>
</node>
<node TEXT="R&#xe9;cepteur" POSITION="left" ID="ID_591064848" CREATED="1601297361416" MODIFIED="1601390057569" HGAP_QUANTITY="-220.7499930039051 pt" VSHIFT_QUANTITY="-58.49999825656417 pt">
<edge COLOR="#0000ff"/>
<hook URI="reseau_files/f9p.png" SIZE="0.31927955" NAME="ExternalObject"/>
<node TEXT="Antenne GNSS" ID="ID_1399043967" CREATED="1601297383979" MODIFIED="1601390057569" HGAP_QUANTITY="-270.2499915286901 pt" VSHIFT_QUANTITY="-86.99999740719801 pt">
<hook URI="reseau_files/da910.png" SIZE="0.59188014" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="Option Radio" POSITION="left" ID="ID_1139882410" CREATED="1601299862160" MODIFIED="1601390131527" HGAP_QUANTITY="-131.49999566376218 pt" VSHIFT_QUANTITY="110.9999966919423 pt">
<edge COLOR="#007c00"/>
<hook URI="reseau_files/radio.png" SIZE="0.4" NAME="ExternalObject"/>
</node>
<node TEXT="R&#xe9;seau" POSITION="right" ID="ID_415042609" CREATED="1601304697272" MODIFIED="1601389969363" HGAP_QUANTITY="46.24999903887513 pt" VSHIFT_QUANTITY="230.2499931380155 pt">
<edge COLOR="#7c007c"/>
<hook URI="BaseRtk_files/internet.png" SIZE="1.1410635" NAME="ExternalObject"/>
<node ID="ID_537079917" CREATED="1601389393521" MODIFIED="1601389963050" HGAP_QUANTITY="-347.49998922646074 pt" VSHIFT_QUANTITY="38.99999883770946 pt"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>tcp:192.168.0.1:5016</b>
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_95328658" CREATED="1601389497999" MODIFIED="1601389969362" HGAP_QUANTITY="-351.9999890923503 pt" VSHIFT_QUANTITY="40.499998793005965 pt"><richcontent TYPE="NODE">

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
</node>
</node>
</map>
