����  -� 
SourceFile 4/CFIDE/administrator/cftags/resources/monitor_en.cfm cfmonitor_en2ecfm15145667  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   
ATTRIBUTES Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   CALLER   	   BSUCCESS   	    com.macromedia.SourceModTime  h���� pageContext #Lcoldfusion/runtime/NeoPageContext; % &	  ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	  1 	ISO8859_1 3 setPageEncoding (Ljava/lang/String;)V 5 6 !coldfusion/runtime/NeoPageContext 8
 9 7 3class$coldfusion$tagext$lang$ProcessingDirectiveTag Ljava/lang/Class; -coldfusion.tagext.lang.ProcessingDirectiveTag = forName %(Ljava/lang/String;)Ljava/lang/Class; ? @ java/lang/Class B
 C A ; <	  E _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; G H
  I -coldfusion/tagext/lang/ProcessingDirectiveTag K _setCurrentLineNo (I)V M N
  O setSuppresswhitespace (Z)V Q R
 L S 	hasEndTag U R coldfusion/tagext/GenericTag W
 X V 
doStartTag ()I Z [
 L \ $class$coldfusion$tagext$io$SilentTag coldfusion.tagext.io.SilentTag _ ^ <	  a coldfusion/tagext/io/SilentTag c
 d \ 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; f g
  h doAfterBody j [
 X k _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; m n
  o doEndTag q [ #javax/servlet/jsp/tagext/TagSupport s
 t r doCatch (Ljava/lang/Throwable;)V v w
 X x 	doFinally z 
 X { 	__HTSWT_0 Lcoldfusion/util/FastHashtable; } ~	   java/lang/String � ID � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � __caseValue 4(Lcoldfusion/util/FastHashtable;Ljava/lang/Object;)I � �
  � ColdFusion Administrator � write � 6 java/io/Writer �
 � � $Server has been updated successfully � 'Click the button on the right to update � ALERT! � &Important notice about last submission � 8Click arrow on left to return without submitting changes � Submit Changes � 7Invalid snapshot file or snapshot file does not exist : � \
Flash remoting should be enabled to run either of Server Monitor or Multiserver Monitor.
 � %Server Monitoring &gt; Server Monitor ��
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
 � D
Click the button on the right to launch the Server Monitor ...
   � Launch Server Monitor � *Server Monitoring &gt; Multiserver Monitor �H
The Multiserver Monitor is an Adobe Flash application that you can use to remotely monitor multiple ColdFusion instances. To use the Multiserver Monitor, you must have Adobe Flash Player 9 installed.<br>
<br>
Use the tabs at the top of the Multiserver Monitor to do the following:
&nbsp;&nbsp;&nbsp;&nbsp;<table cellpadding="0" cellspacing="0">
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Quick View - Displays the status of all registered servers in an icon view format.</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Detailed View - Displays the status of all registered servers in a tabular format.</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Add Server - Displays the registration panel for adding new servers.</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Errors - Displays the last connection error for each registered server.</td></tr>
</table>
 � G
Click the button on the right to launch the Multiserver Monitor ...
 � Launch Multiserver Monitor � Server Manager � �
The Server Manager is an AIR application which allows management of multiple servers.
You can download this application from the <a href="http://www.adobe.com/go/cf_downloads"> ColdFusion downloads</a> page.
<br>
 � M
Click the button on the right to launch the ColdFusion Server Manager ...
 � Launch Server Manager � �
                  This content requires the Adobe Flash Player. <a href=http://www.adobe.com/go/getflash/>Get Flash
                 � Monitoring Settings � Server Monitoring &gt; Settings � Enable Monitoring � c
When checked, indicates that monitoring is enabled. 
If unchecked, it will disable monitoring.
 � Enable Profiling � a
When checked, indicates that profiling is enabled. 
If unchecked, it will disable profiling.
 � Enable Memory Tracking � m
When checked, indicates that memory tracking is enabled. 
If unchecked, it will disable memory tracking.
 � Monitoring Server Settings � Enable Monitoring Server � �
When checked, indicates that separate monitoring server is enabled. 
If unchecked, it will disable separate monitoring server.
 � Monitoring Server Port  � ElasticSearch Host � Connected to datastore � Monitoring Enabled � 4Specifies the host on which ElasticSearch is running � ElasticSearch Port � 4Specifies the port on which ElasticSearch is running � ColdFusion Host � ColdFusion Port � �Specifies ColdFusion Host/IP using which ColdFusion Instance can be accessed. Make sure that the entered host/IP is correct otherwise live data will not be accessible on PMS. � ISpecifies ColdFusion Port using which ColdFusion Instance can be accessed � 'Performance Monitoring Toolset Settings � SThere was an error while setting up the server. Please check logs for more details. � Please make sure you have entered valid ElasticSearch credentials or that ElasticSearch is up and running on the specified port � $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag � � <	  � coldfusion/tagext/io/OutputTag �
 � \ 2
Unable to update template handler information.
 � CFCATCH � MESSAGE � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast
  EncodeForHTML &(Ljava/lang/String;)Ljava/lang/String;
  <br />
 DETAIL

 � k coldfusion/tagext/QueryLoop
 r
 x
 � { (Error while updating monitoring settings Hostname should not be empty ColdFusion Hostname <Enter the IP Address or DNS Name for the ColdFusion instance Display Name 2Enter the display name for the ColdFusion instance Datastore Host&nbsp;:&nbsp; Datastore Port&nbsp;:&nbsp;  Monitoring Shared Secret" Show Secret$ BSecret to configure Performance Monitoring Toolset with ColdFusion& false( set (Ljava/lang/Object;)V*+ coldfusion/runtime/Variable-
., coldfusion/runtime/SwitchTable0
1 	 MACHINE_PORT3 addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable;56
17 MS_MONITORINGSERVER_ENABLE_TIP9 MS_ERROR_TMPUPD; SERVERMONITOR= 
INVALID_ES? ES_PORTA DISPLAYNAME_LABELC REMOTEMONITORE SPECIFY_ELASTICSEARCH_HOSTG LAUNCH_SMANAGERI MS_PAGENAMEK COLDFUSION_SECRET_LABELM MS_MONITORINGSERVER_ENABLEO 	LAUNCH_SMQ DATASTORE_HOSTS COLDFUSION_SECRET_SHOWU SPECIFY_COLDFUSION_HOSTW LAUNCH_MULTISERVER_MONITORY SERVERMANAGER[ HOSTNAME_LABEL] ALTERNATECONTENT_CF_ EMPTY_HOSTNAMEa MONITORINGSETTINGS_HEADERc 
LAUNCH_MSMe COLDFUSION_SECRET_DESCRIPTIONg MEMORYTRACKING_ENABLE_TIPi ES_HOSTk IMPORTANT_NOTICEm MEMORYTRACKING_ENABLEo CLICK_NORMALq LAUNCH_SERVER_MONITORs INVALIDSNAPSHOTFILEu MS_PROFILING_ENABLE_TIPw MS_MONITOR_ENABLEy CLICK_RETURN{ MACHINE_NAME} HOSTNAME_DESCRIPTION SUBMIT_CHANGES� IS_MONITORING_ENABLED� MS_MONITOR_ENABLE_TIP� SPECIFY_ELASTICSEARCH_PORT� LAUNCH_SERVER_MANAGER� ALERT� CONNECTED_TO_ES� MONITORING-SERVER-PORT� MONITORINGSERVERSETTINGS_HEADER� PAGEHEADER_CLIENTVARS1_MULTI� 	ERROR_APS� 
PMS_HEADER� MS_PROFILING_ENABLE� DATASTORE_PORT� DEFAULT_PAGENAME� ERROR_SETTINGS� SPECIFY_COLDFUSION_PORT� STATMESS� FLASH_REMOTING_DISABLED� PAGEHEADER_CLIENTVARS3� PAGEHEADER_CLIENTVARS2� DISPLAYNAME_DESCRIPTION� PAGEHEADER_CLIENTVARS1� 

� _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V��
 �
 L x
 L { metaData Ljava/lang/Object;��	 � &coldfusion/runtime/AttributeCollection� java/lang/Object� 	Functions� 
Properties� ([Ljava/lang/Object;)V �
�� getMetadata ()Ljava/lang/Object; this Lcfmonitor_en2ecfm15145667; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value processingdirective2 /Lcoldfusion/tagext/lang/ProcessingDirectiveTag; mode2 I silent0  Lcoldfusion/tagext/io/SilentTag; mode0 t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 output1  Lcoldfusion/tagext/io/OutputTag; mode1 t16 t17 t18 t19 t20 t21 t22 t23 LineNumberTable java/lang/Throwable� <clinit> 1                      ; <    ^ <    } ~    � <   ��    �� �   "     ���   �       ��      �   ]     +*+,� **+,� � **+,� � **+,� � !�   �        +��     +��    +��  �� �  i    %*� (� .L*� 2N*� (4� :*� F-� J� L:*� P� T� Y� ]Y6��*� b� J� d:*� P� Y� eY6� /*+� iL� l���� � :� �:	*+� pL�	� u� :
� &�z
�� � #:� y� � :� �:� |�� �**� � �Y�S� �� ��  �       ;   �        !  *  3  <  E  N  W  `  i  r  {  �  �  �  �  �  �  �  �  �  �  �  �  �  �          &  /  8  A  J  S  \  e  n  w  �  �  �  �  �  �  }  �  �  �  �  �  �  �  �  �  �+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ��w+�� ��n+�� ��e+�� ��\+�� ��S+�� ��J+�� ��A+�� ��8+�� ��/+�� ��&+�� ��+ö ��+Ŷ ��+Ƕ ��+ɶ ���+˶ ���+Ͷ ���+϶ ���+Ѷ ���+Ӷ ���+ն ���+׶ ���+ٶ ���+۶ ���+ݶ ���+߶ ���+� ���+� ���+� ��{+� ��r+� ��i+� ��`+�� ��W+� ��N*� �� J� �:* �� P� Y� �Y6� n+�� �+* �� P**� � �Y�SY�S� ���� �+	� �+* �� P**� � �Y�SYS� ���� �+	� ������� :� &� ��� � #:�� � :� �:��� ~+� �� t+� �� j+� �� `+� �� V+� �� L+� �� B+� �� 8+!� �� .+#� �� $+%� �� +'� �� *� !)�/� *+���� l��X� u� :� #�� � #:��� � :� �:����  e z }� } � }� Z � �� � � �� Z � �� � � �� � � �� � � ���1=�7:=��1L�7:L�=IL�LQL� 5 �� �1�7��� � 5 �� �1�7��� ��� �   �   %��    %��   %��   % / 0   %��   %��   %��   %��   %��   %�� 	  %�� 
  %��   %��   %��   %��   %��   %��   %��   %��   %��   %��   %��   %��   %�� �  z ^ @  �  �  �  � � � � �     " $( &1 *: ,C 9L =U ?^ Ag Mp Qy S� U� [� _� a� e� g� i� k� m� r� t� y� {� �  �	 � � �$ �- �6 �? �H �Q �Z �c �l �u �~ �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �` �j �t �~ �� �� �� �� �� �� �� �� �� �� �� �� �� �� � �         �   #     *� 
�   �       ��   �  �  C    %>� D� F`� D� b� D� ��1Y�24*�8:!�8<0�8>
�8@/�8B'�8D5�8F�8H&�8J�8L�8N9�8P �8R�8T7�8V:�8X+�8Z�8\�8^3�8`�8b2�8d�8f�8h;�8j�8l#�8n�8p�8r�8t�8v�8x�8z�8|�8~)�8�4�8��8�%�8��8�(�8��8��8�$�8�"�8��8��8�1�8�-�8��8�8�8��8�.�8�,�8��8��8��8��8�6�8�	�8� ���Y��Y�SY��SY�SY��S�ų��   �      %��         "    #