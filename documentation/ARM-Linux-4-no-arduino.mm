<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node BACKGROUND_COLOR="#15b2e8" CREATED="1322971628166" ID="ID_1690451288" MODIFIED="1329117829680">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="text-align: center">
      <font size="5"><b>ARM</b></font>
    </p>
    <p style="text-align: center">
      Linux
    </p>
    <p style="text-align: center">
      Ubuntu Oneiric 11.10
    </p>
  </body>
</html></richcontent>
<edge COLOR="#1335e8"/>
<node CREATED="1323787052626" HGAP="28" ID="ID_707826327" MODIFIED="1326255849238" POSITION="left" TEXT="vars" VSHIFT="-32">
<node CREATED="1323404422822" HGAP="58" ID="ID_279507868" MODIFIED="1328693591618" STYLE="fork" VSHIFT="-52">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ttyVisca=/dev/ttyO2
    </p>
    <p>
      defaultISP=tsel_flash
    </p>
    <p>
      VPNname=myvpn
    </p>
    <p>
      videoScale=0.35
    </p>
    <p>
      
    </p>
    <p>
      stickVendID=148f
    </p>
    <p>
      stickProdID=2573
    </p>
    <p>
      addrWlan=192.168.1.96
    </p>
    <p>
      netmWlan=255.255.255.0
    </p>
    <p>
      wlanGw=192.168.1.1
    </p>
  </body>
</html></richcontent>
<font NAME="Courier 10 Pitch" SIZE="12"/>
</node>
</node>
<node CREATED="1322971907201" ID="ID_98931464" MODIFIED="1323791649947" POSITION="left" TEXT="cvlc streaming RTSP">
<node COLOR="#d30b0b" CREATED="1322971707718" FOLDED="true" HGAP="45" ID="ID_1143294102" MODIFIED="1329117159320" STYLE="bubble" TEXT="daemon" VSHIFT="-42">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1323404422822" HGAP="57" ID="ID_1641492787" MODIFIED="1323404708571" STYLE="fork" TEXT="cvlc -v ..." VSHIFT="13">
<font NAME="Courier 10 Pitch" SIZE="12"/>
</node>
</node>
<node CREATED="1322971932429" HGAP="43" ID="ID_925818954" MODIFIED="1322972315334" TEXT="persist-streaming" VSHIFT="1">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node BACKGROUND_COLOR="#15e81d" CREATED="1322971707718" HGAP="28" ID="ID_1821048883" MODIFIED="1329117137812" STYLE="bubble" TEXT="cron job" VSHIFT="15">
<node CREATED="1323404422822" HGAP="57" ID="ID_1353123660" MODIFIED="1323744945103" STYLE="fork" TEXT="rtsp-encode" VSHIFT="9">
<font NAME="Courier 10 Pitch" SIZE="12"/>
<icon BUILTIN="full-3"/>
<node CREATED="1323404422822" HGAP="64" ID="ID_1743405021" MODIFIED="1323791683402" STYLE="fork" TEXT="@reboot sleep 30; /usr/local/ipcam/bin/rtsp-encode&#xa;*/1 * * * * sleep 30; /usr/local/ipcam/bin/rtsp-encode&#xa;*/1 * * * * /usr/local/ipcam/bin/rtsp-encode" VSHIFT="-37">
<font NAME="Courier 10 Pitch" SIZE="12"/>
</node>
<node COLOR="#e91a1a" CREATED="1323791679321" ID="ID_377262974" MODIFIED="1323791776970" STYLE="bubble" TEXT="No /dev/video0 or 1 found">
<arrowlink DESTINATION="ID_641410926" ENDARROW="Default" ENDINCLINATION="-112;309;" ID="Arrow_ID_1171773517" STARTARROW="None" STARTINCLINATION="43;23;"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1322972145195" ID="ID_196666530" MODIFIED="1323791661655" POSITION="left" TEXT="PTZ control python" VSHIFT="32">
<node CREATED="1322971745128" HGAP="110" ID="ID_165090116" MODIFIED="1328693742670" VSHIFT="46">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      which tty?
    </p>
    <p>
      is Visca
    </p>
    <p>
      (normally the serial console)
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_707826327" ENDARROW="None" ENDINCLINATION="316;-344;" ID="Arrow_ID_1888913032" STARTARROW="Default" STARTINCLINATION="372;-343;"/>
<node CREATED="1323690069220" HGAP="106" ID="ID_516118753" MODIFIED="1323690193109" TEXT="persist-server" VSHIFT="66">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node BACKGROUND_COLOR="#15e81d" CREATED="1322971707718" HGAP="87" ID="ID_1735429372" MODIFIED="1329117184985" STYLE="bubble" TEXT="cron job" VSHIFT="45">
<node CREATED="1323404422822" HGAP="57" ID="ID_15692766" MODIFIED="1323740747754" STYLE="fork" TEXT="ptz-server" VSHIFT="9">
<font NAME="Courier 10 Pitch" SIZE="12"/>
<icon BUILTIN="full-5"/>
<node CREATED="1323404422822" HGAP="57" ID="ID_1999756133" MODIFIED="1329200341561" STYLE="fork" TEXT="@reboot sleep 40; sudo /usr/local/ipcam/bin/ptz-server start&#xa;*/1 * * * * /usr/local/ipcam/bin/ptz-server check" VSHIFT="13">
<font NAME="Courier 10 Pitch" SIZE="12"/>
</node>
</node>
<node COLOR="#d30b0b" CREATED="1322971707718" HGAP="176" ID="ID_965169909" MODIFIED="1323690194830" STYLE="bubble" TEXT="daemon" VSHIFT="30">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1323404422822" HGAP="62" ID="ID_1057951349" MODIFIED="1323410816867" STYLE="fork" TEXT="server.py 3789 /dev/tty*" VSHIFT="-52">
<font NAME="Courier 10 Pitch" SIZE="12"/>
<icon BUILTIN="full-4"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1322971745128" HGAP="113" ID="ID_185900001" MODIFIED="1323410944000" TEXT="port 3789" VSHIFT="15"/>
<node CREATED="1322971707718" HGAP="79" ID="ID_645138629" MODIFIED="1329117792477" STYLE="bubble" VSHIFT="42">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <strike>init rc.d</strike>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node CREATED="1329200440491" ID="ID_586480959" MODIFIED="1329200456107" POSITION="left" TEXT="clean lock &amp; temp file">
<node CREATED="1323404422822" HGAP="57" ID="ID_649105909" MODIFIED="1329200495996" STYLE="fork" TEXT="clean-lock-temp" VSHIFT="9">
<font NAME="Courier 10 Pitch" SIZE="12"/>
<icon BUILTIN="full-8"/>
<node CREATED="1323404422822" HGAP="57" ID="ID_280628020" MODIFIED="1329200512345" STYLE="fork" TEXT="@reboot sudo /usr/local/ipcam/bin/clean-lock-temp" VSHIFT="13">
<font NAME="Courier 10 Pitch" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1322971634474" HGAP="38" ID="ID_358361083" MODIFIED="1323791838276" POSITION="right" TEXT="detect-modem" VSHIFT="-24">
<node BACKGROUND_COLOR="#e8151d" CREATED="1322971728382" HGAP="118" ID="ID_1353514456" MODIFIED="1329117746251" STYLE="bubble" TEXT="init rc.d" VSHIFT="-9">
<node CREATED="1323404422822" HGAP="74" ID="ID_1863777603" MODIFIED="1323684417316" STYLE="fork" TEXT="which-tty" VSHIFT="9">
<font NAME="Courier 10 Pitch" SIZE="12"/>
<icon BUILTIN="full-1"/>
<node CREATED="1323404422822" HGAP="74" ID="ID_175166392" MODIFIED="1323410802978" STYLE="fork" TEXT="check_usb_modem.py" VSHIFT="9">
<font NAME="Courier 10 Pitch" SIZE="12"/>
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1323410884564" HGAP="64" ID="ID_615306212" MODIFIED="1323740458871" VSHIFT="24">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /etc/rc0.d/S34which-tty
    </p>
    <p>
      /etc/rc6.d/S34which-tty
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1322971745128" HGAP="110" ID="ID_913713966" MODIFIED="1323404654828" TEXT="which ttyUSB?" VSHIFT="15"/>
<node CREATED="1322971758133" HGAP="81" ID="ID_1527348774" MODIFIED="1322972284195" TEXT="change pppd ttyUSB?" VSHIFT="-28"/>
</node>
<node CREATED="1322971650144" HGAP="47" ID="ID_564368367" MODIFIED="1323791784468" POSITION="right" TEXT="persist-connection" VSHIFT="-36">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1322971707718" HGAP="50" ID="ID_1289232343" MODIFIED="1328695553465" STYLE="bubble" TEXT="init by config" VSHIFT="30">
<node CREATED="1323404422822" HGAP="74" ID="ID_173377588" MODIFIED="1323791791587" STYLE="fork" TEXT="/etc/network/interfaces" VSHIFT="9">
<font NAME="Courier 10 Pitch" SIZE="12"/>
<node CREATED="1323410884564" HGAP="44" ID="ID_290934055" MODIFIED="1326268647331" TEXT="eth0" VSHIFT="-53"/>
<node CREATED="1323410914448" HGAP="58" ID="ID_1907264293" MODIFIED="1326277407770" VSHIFT="26">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <strike>ppp0</strike>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node CREATED="1322971707718" HGAP="50" ID="ID_1723245764" MODIFIED="1323739414713" STYLE="bubble" TEXT="init rc.d" VSHIFT="30">
<node CREATED="1323404422822" HGAP="74" ID="ID_1841909812" MODIFIED="1323739455961" STYLE="fork" TEXT="/etc/init.d/networking" VSHIFT="9">
<font NAME="Courier 10 Pitch" SIZE="12"/>
<node CREATED="1323410884564" HGAP="36" ID="ID_1941745197" MODIFIED="1323739501805" VSHIFT="18">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /etc/rc0.d/S35networking
    </p>
    <p>
      /etc/rc6.d/S35networking
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#15e81d" CREATED="1322971707718" HGAP="50" ID="ID_505451057" MODIFIED="1329117145456" STYLE="bubble" TEXT="cron job" VSHIFT="30">
<node CREATED="1323404422822" HGAP="57" ID="ID_1442972506" MODIFIED="1328597882501" STYLE="fork" TEXT="conn-health" VSHIFT="9">
<font NAME="Courier 10 Pitch" SIZE="12"/>
<icon BUILTIN="full-7"/>
<node CREATED="1323404422822" HGAP="57" ID="ID_648359457" MODIFIED="1329200406377" STYLE="fork" TEXT="@reboot sleep 10; sudo /usr/local/ipcam/bin/conn-health&#xa;*/1 * * * * sudo /usr/local/ipcam/bin/conn-health" VSHIFT="13">
<font NAME="Courier 10 Pitch" SIZE="12"/>
</node>
</node>
</node>
</node>
<node CREATED="1322971848570" HGAP="64" ID="ID_488135162" MODIFIED="1326174479942" POSITION="right" TEXT="pptp client" VSHIFT="16">
<node BACKGROUND_COLOR="#15e81d" CREATED="1322971707718" HGAP="83" ID="ID_1536300546" MODIFIED="1329117137813" STYLE="bubble" TEXT="cron job" VSHIFT="-40">
<arrowlink DESTINATION="ID_1442972506" ENDARROW="Default" ENDINCLINATION="0;16;" ID="Arrow_ID_429559303" STARTARROW="None" STARTINCLINATION="102;25;"/>
</node>
<node CREATED="1322972105997" HGAP="115" ID="ID_552676491" MODIFIED="1323741253298" TEXT="persist VPN" VSHIFT="7">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1327388861832" ID="ID_1717919361" MODIFIED="1327388874840" POSITION="right" TEXT="use USB WiFi">
<node CREATED="1322971728382" HGAP="118" ID="ID_1961581797" MODIFIED="1327389183436" STYLE="bubble" VSHIFT="54">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <strike>init by config</strike>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1322971707718" HGAP="162" ID="ID_1956391511" MODIFIED="1329117712656" STYLE="bubble" VSHIFT="47">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <strike>udev rules</strike>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_cancel"/>
</node>
<node BACKGROUND_COLOR="#15e81d" CREATED="1322971707718" HGAP="145" ID="ID_4903535" MODIFIED="1329117137812" STYLE="bubble" TEXT="cron job" VSHIFT="33">
<arrowlink DESTINATION="ID_1442972506" ENDARROW="Default" ENDINCLINATION="0;16;" ID="Arrow_ID_14007616" STARTARROW="None" STARTINCLINATION="102;25;"/>
<node CREATED="1323404422822" HGAP="57" ID="ID_409806378" MODIFIED="1328952632927" STYLE="fork" TEXT="lsusb:&#xa;ID 148f:2573 ..." VSHIFT="13">
<font NAME="Courier 10 Pitch" SIZE="12"/>
</node>
</node>
<node CREATED="1322972105997" HGAP="115" ID="ID_1263615319" MODIFIED="1328952570154" TEXT="home WiFi definition" VSHIFT="51">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1323404422822" HGAP="74" ID="ID_1619652635" MODIFIED="1327389077202" STYLE="fork" TEXT="/etc/wpa_supplicant.conf" VSHIFT="9">
<font NAME="Courier 10 Pitch" SIZE="12"/>
<node CREATED="1323404422822" HGAP="57" ID="ID_959301844" MODIFIED="1328597771953" STYLE="fork" TEXT="ctrl_interface=/var/run/wpa_supplicant&#xa;#ap_scan=2&#xa;&#xa;network={&#xa;       ssid=&quot;some-ap&quot;&#xa;       scan_ssid=1&#xa;       proto=WPA RSN&#xa;       key_mgmt=WPA-PSK&#xa;       pairwise=CCMP TKIP&#xa;       group=CCMP TKIP&#xa;       psk=&quot;some-passphrase&quot;&#xa;}&#xa;" VSHIFT="13">
<font NAME="Courier 10 Pitch" SIZE="12"/>
</node>
</node>
</node>
</node>
<node COLOR="#e91a1a" CREATED="1323791530972" HGAP="18" ID="ID_641410926" MODIFIED="1323791776970" POSITION="right" STYLE="bubble" VSHIFT="108">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="text-align: center">
      <b>Restart </b>
    </p>
    <p style="text-align: center">
      <b>Devices Not Found</b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="closed"/>
</node>
</node>
</map>
