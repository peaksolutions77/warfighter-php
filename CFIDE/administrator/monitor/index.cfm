����  -� 
SourceFile &/CFIDE/administrator/monitor/index.cfm cfindex2ecfm1323018953  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   SERVERPROTOCOL Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   MULTIMONITORINGSERVERURL   	   
SERVERPORT   	    MONITORINGSERVERENABLED " " 	  $ FLASH_REMOTING_DISABLED & & 	  ( FEATURE_NOT_AVAILABLE_MSG * * 	  , ISSERVERMONITORINGAVAILABLE . . 	  0 AERRORMESSAGES 2 2 	  4 MONITORINGSERVERURL 6 6 	  8 MONITORINGPORT : : 	  < CONTEXTROOT > > 	  @ MONITORINGPROTOCOL B B 	  D LAUNCH_SERVER_MONITOR F F 	  H SERVERIP J J 	  L LAUNCH_MULTISERVER_MONITOR N N 	  P REQUEST R R 	  T BERRORSEXIST V V 	  X SERVERMONITORINGAPI Z Z 	  \ com.macromedia.SourceModTime  h���� pageContext #Lcoldfusion/runtime/NeoPageContext; a b	  c getOut ()Ljavax/servlet/jsp/JspWriter; e f javax/servlet/jsp/JspContext h
 i g parent Ljavax/servlet/jsp/tagext/Tag; k l	  m Cp1252 o setPageEncoding (Ljava/lang/String;)V q r !coldfusion/runtime/NeoPageContext t
 u s _setCurrentLineNo (I)V w x
  y GetAuthUser ()Ljava/lang/String; { |
  } matches  java/lang/Object � ^\w$ � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � _boolean (Ljava/lang/Object;)Z � � coldfusion/runtime/Cast �
 � � %class$coldfusion$tagext$net$CookieTag Ljava/lang/Class; coldfusion.tagext.net.CookieTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/net/CookieTag � 30 � 
setExpires (Ljava/lang/Object;)V � �
 � � cfcookie � value � CGI � java/lang/String � SCRIPT_NAME � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � setValue � r
 � � setHttpOnly (Z)V � �
 � � name � cfadmin_lastpage_ � concat &(Ljava/lang/String;)Ljava/lang/String; � �
 � � setName � r
 � � 	hasEndTag � � coldfusion/tagext/GenericTag �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � $class$coldfusion$tagext$io$SilentTag coldfusion.tagext.io.SilentTag � � �	  � coldfusion/tagext/io/SilentTag � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � http � set � � coldfusion/runtime/Variable �
 � � SERVER_PORT_SECURE � https � SERVER_NAME � EncodeForHTML � �
  � SERVER_PORT � GetContextRoot � |
  � doAfterBody � �
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � 
  doEndTag � #javax/servlet/jsp/tagext/TagSupport
 doCatch (Ljava/lang/Throwable;)V	
 �
 	doFinally 
 � LOCALE REQUEST.LOCALE en checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
  
LOCALEFILE java/lang/StringBuilder resources/monitor_  r
 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;!"
# .cfm% toString' |
 �( _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V*+
 , false. 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)V0
 1 ArrayNew (I)Ljava/util/List;34
 5 _Array 2(Ljava/lang/Object;)Lcoldfusion/runtime/FastArray;78
 �9 setArray !(Lcoldfusion/runtime/FastArray;)V;<
 �= RUNTIME? _resolveA �
 B isEnabledFlashRemotingD coldfusion/runtime/CFBooleanF t_true Lcoldfusion/runtime/CFBoolean;HI	GJ $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTagML �	 O coldfusion/tagext/io/OutputTagQ
R � 
			T _whitespace %(Ljava/io/Writer;Ljava/lang/String;)VVW
 X (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag[Z �	 ] "coldfusion/tagext/lang/ImportedTag_ l10na 
../cftags/c admine :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V �g
`h &coldfusion/runtime/AttributeCollectionj idl flash_remoting_disabledn varp ([Ljava/lang/Object;)V r
ks setAttributecollection (Ljava/util/Map;)Vuv  coldfusion/tagext/lang/ModuleTagx
yw
y � c
				Flash remoting should be enabled to run either of Server Monitor or Multiserver Monitor.
			| write~ r java/io/Writer�
�
y �
y

y 
		�
R � coldfusion/tagext/QueryLoop�
�
�

R 
		
		� _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;��
 � ArrayLen (Ljava/lang/Object;)I��
 � _Object (D)Ljava/lang/Object;��
 �� _arraySetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V��
 � 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag�� �	 � !coldfusion/tagext/lang/IncludeTag� ../header.cfm� setTemplate� r
�� 

	� ../include/margintop.cfm� 
	� ../include/errors.cfm� 
<h2 class="pageHeader">� pageHeader_clientvars1� Server Monitor� </h2>

	<br>

� _get��
 � IsServerMonitoringAvailable� 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;��
 � ../include/marginbottom.cfm� ../footer.cfm� %class$coldfusion$tagext$lang$AbortTag coldfusion.tagext.lang.AbortTag�� �	 � coldfusion/tagext/lang/AbortTag� 
� 

� %class$coldfusion$tagext$lang$ParamTag coldfusion.tagext.lang.ParamTag�� �	 � coldfusion/tagext/lang/ParamTag� monitoringProtocol�
� � String� setType� r
�� 
setDefault� �
�� monitoringPort� 5500� monitoringServerEnabled� monitoringServerUrl�  � multimonitoringServerUrl� 	component� cfide.adminapi.servermonitoring� CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;��
 � isMonitoringServerEnabled� getMonitoringServerPort� getMonitoringServerProtocol� ://  : 0/CFIDE/administrator/monitor/launch-monitor.html ;/CFIDE/administrator/monitor/launch-multiservermonitor.html //CFIDE/administrator/monitor/launch-monitor.cfm :/CFIDE/administrator/monitor/launch-multiservermonitor.cfm
 		

	 servermonitor�
		The Server Monitor is an Adobe Flash application that provides information about ColdFusion server operation. To use the Server Monitor, you must have Adobe Flash Player 9 installed.<br>
		<br>
		Use the buttons at the top of the Server Monitor to do the following:
		&nbsp;&nbsp;&nbsp;&nbsp;<table cellpadding="0" cellspacing="0">
			<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Start Monitoring - Turns on all monitoring.</td></tr>
			<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Start Profiling - Turns on monitoring of all tags, functions, and query execution times.</td></tr>
			<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Start Memory Tracking - Turns on tracking of memory by different scopes. If Profiling is also on, tracks memory used by individual tags, functions, and queries.</td></tr>
		</table>
		<br>
		Memory usage information displayed in the Server Monitor is estimated and may vary from actual memory usage. Use the information as an indicator rather than an absolute measure.<br>
	 
	<br><br>


 X
		
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tr>
					 launch_server_monitor Launch Server Monitor "
					<td align="center">
						 0
						<input name="startservermonitor" title=" *" class="buttn-grey" type="button" value=" " onClick="window.open('  ')">
						" %
					</td>
				</tr>
		</table>
$ -
<hr class="line">
	<h2 class="pageHeader">& pageHeader_clientvars2( Multiserver Monitor* </h2>
	<br>
	, remotemonitor._
		The Multiserver Monitor is an Adobe Flash application that you can use to remotely monitor multiple ColdFusion instances. To use the Multiserver Monitor, you must have Adobe Flash Player 9 installed.<br>
		<br>
		Use the tabs at the top of the Multiserver Monitor to do the following:
		&nbsp;&nbsp;&nbsp;&nbsp;<table cellpadding="0" cellspacing="0">
			<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Quick View - Displays the status of all registered servers in an icon view format.</td></tr>
			<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Detailed View - Displays the status of all registered servers in a tabular format.</td></tr>
			<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Add Server - Displays the registration panel for adding new servers.</td></tr>
			<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Errors - Displays the last connection error for each registered server.</td></tr>
		</table>
	0 launch_multiserver_monitor2 Launch Multiserver Monitor4 !
					<td align="center">
					6 0
						<input name="startremotemonitor" title="8 +" class="buttn-grey"  type="button" value=": ')">
					< &	
					</td>
				</tr>
		</table>
> 0

<hr class="line">

<h2 class="pageHeader">@ pageHeader_clientvars3B Server ManagerD servermanagerF �
		The Server Manager is an AIR application which allows management of multiple servers.
		You can download this application from the <a href="http://www.adobe.com/go/cf_downloads"> ColdFusion downloads</a> page.
		<br>
	H 	
</body>J metaData Ljava/lang/Object;LM	 N 	FunctionsP 
PropertiesR getMetadata ()Ljava/lang/Object; this Lcfindex2ecfm1323018953; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; cookie0 !Lcoldfusion/tagext/net/CookieTag; silent1  Lcoldfusion/tagext/io/SilentTag; mode1 I t7 Ljava/lang/Throwable; t8 t9 t10 t11 t12 silent2 mode2 t15 t16 t17 t18 t19 t20 output6  Lcoldfusion/tagext/io/OutputTag; mode6 module5 $Lcoldfusion/tagext/lang/ImportedTag; mode5 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 include7 #Lcoldfusion/tagext/lang/IncludeTag; output31 mode31 include8 t39 include9 t41 module10 mode10 t44 t45 t46 t47 t48 t49 output11 mode11 t52 t53 t54 t55 	include12 t57 	include13 t59 abort14 !Lcoldfusion/tagext/lang/AbortTag; t61 param15 !Lcoldfusion/tagext/lang/ParamTag; t63 param16 t65 param17 t67 param18 t69 param19 t71 module20 mode20 t74 t75 t76 t77 t78 t79 module21 mode21 t82 t83 t84 t85 t86 t87 output22 mode22 t90 t91 t92 t93 module23 mode23 t96 t97 t98 t99 t100 t101 module24 mode24 t104 t105 t106 t107 t108 t109 module25 mode25 t112 t113 t114 t115 t116 t117 output26 mode26 t120 t121 t122 t123 module27 mode27 t126 t127 t128 t129 t130 t131 module28 mode28 t134 t135 t136 t137 t138 t139 	include29 t141 	include30 t143 t144 t145 t146 t147 LineNumberTable java/lang/Throwable� <clinit> 1                      "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     � �    � �   L �   Z �   � �   � �   � �   LM    TU Y   "     �O�   X       VW      Y       �*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A**C+,� � E**G+,� � I**K+,� � M**O+,� � Q**S+,� � U**W+,� � Y**[+,� � ]�   X        �VW     �Z[    �\]  ^U Y  % 
 �  �*� d� jL*� nN*� dp� v*� z**� z*� ~�� �Y�S� �� �� o*� �-� �� �:*� z�� ���*�� �Y�S� �� �� �� �� ����*� z*� ~� �� �� �� �� י �*� �-� �� �:*� z� �� �Y6� �*+� �L*� � �*�� �Y�S� �� �� *� � �*� M*� z*�� �Y�S� �� �� �� �*� !*�� �Y�S� �� �*� A*� z*� �� �� ����� � :� �:*+�L��� :	� #	�� � #:

�� � :� �:��*� �-� �� �:*@� z� �� �Y6� /*+� �L� ����� � :� �:*+�L��� :� #�� � #:�� � :� �:��**� U�*S� �YS�Y� *S� �YS� �� ��$&�$�)�-**� Y/�2*� 5*Z� z*�6�:�>*[� z**S� �Y@S�CE� �� �� ����*� Y�K� �*�P-� ��R:*]� z� ��SY6� �*+U�Y*�^� ��`:*^� zbdf�i�kY� �YmSYoSYqSYoS�t�z� ��{Y6� 6*+� �L+}�������� � :� �:*+�L��� :� &� k�� � #:��� � :� �:���*+��Y���� ��� :� #�� � #:  ��� � :!� !�:"���"*+��Y**� 5� �Y*c� z**� 5�����c��S**� )����*��-� ���:#*f� z#���#� �#� י �*�P-� ��R:$*h� z$� �$�SY6%��*+��Y*��$� ���:&*j� z&���&� �&� י :'��'�*+��Y*��	$� ���:(*k� z(���(� �(� י :)��)�+���*�^
$� ��`:**l� z*bdf�i*�kY� �YmSY�S�t�z*� �*�{Y6+� 6**++� �L+���*������ � :,� ,�:-*++�L�-*�� :.� &��.�� � #:/*/��� � :0� 0�:1*���1+���*p� z**� 1���*� ��ĸ ���;*+��Y*�P$� ��R:2*q� z2� �2�SY63� +**� -��� ���2�����2��� :4� &�?4�� � #:525��� � :6� 6�:72���7*+��Y*��$� ���:8*r� z8ƶ�8� �8� י :9��9�*+��Y*��$� ���::*s� z:ȶ�:� �:� י :;��;�*+��Y*��$� ���:<*t� z<� �<� י :=�j=�*+ѶY*+ӶY*��$� ���:>*w� z>ܶ�>߶�>��>� �>� י :?�?�*+ѶY*��$� ���:@*x� z@��@߶�@��@� �@� י :A�
�A�*+ѶY*��$� ���:B*y� zB��B߶�B/��B� �B� י :C�
|C�*+ѶY*��$� ���:D*z� zD���D߶�D��D� �D� י :E�
/E�*+ѶY*��$� ���:F*{� zF��F߶�F��F� �F� י :G�	�G�*+ѶY*� ]*}� z*����� �*� %*~� z***� ]���� �� �� �**� %��� �� �*� =* �� z***� ]���� �� �� �*� E* �� z***� ]���� �� �� �*� 9**� E��� �� �**� M��� �� �� �**� =��� �� �� ˶ �*� **� E��� �� �**� M��� �� �� �**� =��� �� �� ˶ �� �*� 9**� ��� �� �**� M��� �� �� �**� !��� �� �**� A��� �� �	� ˶ �*� **� ��� �� �**� M��� �� �� �**� !��� �� �**� A��� �� �� ˶ �*+�Y*�^$� ��`:H* �� zHbdf�iH�kY� �YmSYS�t�zH� �H�{Y6I� 6*HI+� �L+��H������ � :J� J�:K*I+�L�KH�� :L� &��L�� � #:MHM��� � :N� N�:OH���O+��* �� z**S� �Y@S�CE� �� �� ���+��*�^$� ��`:P* �� zPbdf�iP�kY� �YmSYSYqSYS�t�zP� �P�{Y6Q� 6*PQ+� �L+��P������ � :R� R�:S*Q+�L�SP�� :T� &��T�� � #:UPU��� � :V� V�:WP���W+��*�P$� ��R:X* �� zX� �X�SY6Y� T+��+**� I��� ���+��+**� I��� ���+!��+**� 9��� ���+#��X�����X��� :Z� &��Z�� � #:[X[��� � :\� \�:]X���]+%��+'��*�^$� ��`:^* �� z^bdf�i^�kY� �YmSY)S�t�z^� �^�{Y6_� 6*^_+� �L++��^������ � :`� `�:a*_+�L�a^�� :b� &�b�� � #:c^c��� � :d� d�:e^���e+-��*�^$� ��`:f* �� zfbdf�if�kY� �YmSY/S�t�zf� �f�{Y6g� 6*fg+� �L+1��f������ � :h� h�:i*g+�L�if�� :j� &�<j�� � #:kfk��� � :l� l�:mf���m+��* �� z**S� �Y@S�CE� �� �� ���+��*�^$� ��`:n* �� znbdf�in�kY� �YmSY3SYqSY3S�t�zn� �n�{Y6o� 6*no+� �L+5��n������ � :p� p�:q*o+�L�qn�� :r� &�9r�� � #:sns��� � :t� t�:un���u+7��*�P$� ��R:v* �� zv� �v�SY6w� T+9��+**� Q��� ���+;��+**� Q��� ���+!��+**� ��� ���+=��v�����v��� :x� &�~x�� � #:yvy��� � :z� z�:{v���{+?��+A��*�^$� ��`:|* ʶ z|bdf�i|�kY� �YmSYCS�t�z|� �|�{Y6}� 6*|}+� �L+E��|������ � :~� ~�:*}+�L�|�� :�� &����� � #:�|���� � :�� ��:�|����+-��*�^$� ��`:�* ̶ z�bdf�i��kY� �YmSYGS�t�z�� ���{Y6�� 6*��+� �L+I��������� � :�� ��:�*�+�L����� :�� &� ���� � #:������ � :�� ��:������*+��Y*��$� ���:�* � z�ƶ��� ��� י :�� ���*+��Y*��$� ���:�* � z�ȶ��� ��� י :�� E��*+ѶY$����5$��� :�� #��� � #:�$���� � :�� ��:�$����+K��� � �QT�TYT� �t��z}�� �t��z}��������������������	�	�����	��Qmp�pup�F�������F�����������������������������������������������c������X�������X���������������NZ�TWZ�Ni�TWi�Zfi�ini�
�
�
��
�
�
��
�
���
�
�����������������������O�������O���������������Gcf�fkf�<�������<���������������+.�.3.�Q]�WZ]�Ql�WZl�]il�lql�.1�161�T`�Z]`�To�Z]o�`lo�oto�����*�*�'*�*/*���������������������������������d�������Y�������Y�����������������v��v�
�v��Nv�T�v���v��#v�)wv�}�v��v�^v�d�v��
�v��v��v���v��Qv�WTv�Zv��v���v��
v�Hv�Njv�psv��������
����N��T��������#��)w��}������^��d����
��������������Q��WT��Z����������
��H��Nj��ps��v������� X  � �  �VW    �_`   � �M   � k l   �ab   �cd   �ef   �gh   �iM   �jM 	  �kh 
  �lh   �mM   �nd   �of   �ph   �qM   �rM   �sh   �th   �uM   �vw   �xf   �yz   �{f   �|h   �}M   �~M   �h   ��h   ��M   ��M   ��h    ��h !  ��M "  ��� #  ��w $  ��f %  ��� &  ��M '  ��� (  ��M )  ��z *  ��f +  ��h ,  ��M -  ��M .  ��h /  ��h 0  ��M 1  ��w 2  ��f 3  ��M 4  ��h 5  ��h 6  ��M 7  ��� 8  ��M 9  ��� :  ��M ;  ��� <  ��M =  ��� >  ��M ?  ��� @  ��M A  ��� B  ��M C  ��� D  ��M E  ��� F  ��M G  ��z H  ��f I  ��h J  ��M K  ��M L  ��h M  ��h N  ��M O  ��z P  ��f Q  ��h R  ��M S  ��M T  ��h U  ��h V  ��M W  ��w X  ��f Y  ��M Z  ��h [  ��h \  ��M ]  ��z ^  ��f _  ��h `  ��M a  ��M b  ��h c  ��h d  ��M e  ��z f  ��f g  ��h h  ��M i  ��M j  ��h k  ��h l  ��M m  ��z n  ��f o  ��h p  ��M q  ��M r  ��h s  ��h t  ��M u  ��w v  ��f w  ��M x  ��h y  ��h z  ��M {  ��z |  ��f }  ��h ~  ��M   ��M �  ��h �  ��h �  ��M �  ��z �  ��f �  ��h �  ��M �  ��M �  ��h �  ��h �  ��M �  ��� �  ��M �  ��� �  ��M �  ��M �  ��h �  ��h �  ��M ��  ^�   #  #  /  /      Q  Q  \  \  \  \  �  �  �  �  �  �  �  �  ;    � 
 � 
 � 
 � 
 � 
 � 
 �  �  �  �  �  �  �  �  �          �  � # # # #   ? ? ? ? 5 5  � � @4 S4 SK UK UQ UQ UQ UQ Ug Ug UG UG UG UG U: U: Tx Yx Y� Z� Z� Z� Z� Z� Z~ Z~ Z� [� [� [� [� [� [� \� \� \� \� \� \* ^* ^6 ^6 ^� ^� ]  c  c  c  c  c  c, c, c  c  c2 c2 c2 c2 c2 c2 c c c� [T fT f= f� j� j� j� k� k� kH lH l l� p� p� p� p� p� p� p� p) q) q) q) q( q q� r� r� r� s� s� s� t� pQ wQ wY wY wa wa w9 w� x� x� x� x� x� x� x� y� y� y� y� y� y� y7 z7 z? z? zG zG z z� {� {� {� {� {� {l {� }� }� }� }� }� }� }� }� }� ~� ~� ~� ~� ~� ~� ~� �� �	
 �	
 �		 �		 �		 �		 �� �	+ �	+ �	* �	* �	* �	* �	 �	D �	D �	D �	D �	O �	O �	D �	D �	D �	D �	U �	U �	U �	U �	D �	D �	D �	D �	c �	c �	D �	D �	D �	D �	i �	i �	i �	i �	D �	D �	D �	D �	w �	w �	D �	D �	D �	D �	@ �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �
 �
 �	� �	� �	� �	� �	� �
 �
 �
 �
 �
  �
  �
 �
 �
 �
 �
& �
& �
& �
& �
 �
 �
 �
 �
4 �
4 �
 �
 �
 �
 �
: �
: �
: �
: �
 �
 �
 �
 �
H �
H �
H �
H �
 �
 �
 �
 �
V �
V �
 �
 �
 �
 �
 �� �� |
� �
� �
g �6 �6 �� �� �� �� �^ �b �b �b �b �a �x �x �x �x �w �� �� �� �� �� �2 �6 �, �, �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �I �I �I � �� �� �� �1 �1 � �j h      Y   #     *� 
�   X       VW   �  Y   �     f�� �� �ڸ �� �N� ��P\� ��^�� ���˸ ���ָ ��ػkY� �YQSY� �SYSSY� �S�t�O�   X       fVW         ^    _