����  - 
SourceFile 5/CFIDE/administrator/cftags/resources/archives_en.cfm cfarchives_en2ecfm1625257982  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   
ATTRIBUTES Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   BSUCCESS   	   com.macromedia.SourceModTime  h���m pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	  # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	  - 	ISO8859_1 / setPageEncoding (Ljava/lang/String;)V 1 2 !coldfusion/runtime/NeoPageContext 4
 5 3 3class$coldfusion$tagext$lang$ProcessingDirectiveTag Ljava/lang/Class; -coldfusion.tagext.lang.ProcessingDirectiveTag 9 forName %(Ljava/lang/String;)Ljava/lang/Class; ; < java/lang/Class >
 ? = 7 8	  A _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; C D
  E -coldfusion/tagext/lang/ProcessingDirectiveTag G _setCurrentLineNo (I)V I J
  K setSuppresswhitespace (Z)V M N
 H O 	hasEndTag Q N coldfusion/tagext/GenericTag S
 T R 
doStartTag ()I V W
 H X $class$coldfusion$tagext$io$SilentTag coldfusion.tagext.io.SilentTag [ Z 8	  ] coldfusion/tagext/io/SilentTag _
 ` X 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; b c
  d doAfterBody f W
 T g _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; i j
  k doEndTag m W #javax/servlet/jsp/tagext/TagSupport o
 p n doCatch (Ljava/lang/Throwable;)V r s
 T t 	doFinally v 
 T w 	__HTSWT_0 Lcoldfusion/util/FastHashtable; y z	  { java/lang/String } ID  _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � __caseValue 4(Lcoldfusion/util/FastHashtable;Ljava/lang/Object;)I � �
  � Archive Wizard � write � 2 java/io/Writer �
 � � Build CAR File Archive � Deploy Wizard � Archives and Deployment � �Sorry, but in order to use this application, you must enable session variables.
You may do so by enabling session variables on the "Memory Variables" page. � 3Packaging &amp; Deployment &gt; ColdFusion Archives � �
Enter the path or browse to the appropriate CAR file to deploy the files to this server and
update the relevant server settings.
 � Deploy an Existing Archive � Browse Server � Browse Server Directory � Deploy  � Deploy Archive � �
ColdFusion lets you define applications for organizing work,
archiving files, migrating and deploying sites. You can create and
store ColdFusion Archive definitions to archive, migrate, or redeploy
applications at a later date.
 � Create an archive �  A valid archive name is required � Create � Create an Archive � Archive Name � Current Archive Definition List � Actions � Edit Archive Definition � Build Archive � Delete Archive � Edit Archive Information � -Are you sure you want to delete this archive? � No Archives have been defined � Archive Information � Files and Directories � Dir/Files to Include � Dir/Files to Exclude � CFX Tags � Directory Mappings � Data Sources � Collections � Event Gateways � Event Gateway Types � Event Gateway Settings � Applets � Scheduled Tasks � Settings � Web Services � Rest Services � PDF Services � Pre-Restore To Do List � Post-Restore To Do List � Close Window � Assoc. Files/Dirs � Server Settings � CF Mappings � CF Collections � Java Applets � Archive To Do List � Archive Summary � Archive Applets � 
Select All � Deselect All � Registered Java Applets � Name  Code Path Category Details %Archive ColdFusion Directory Mappings
 )Included Files and Directories in Archive Logical Path Directory Path Archive CFX Registered CFX Tags Class Path or Library Path Archive Data Sources DSN and Data Source Settings Driver Registered Gateway Instances Registered Gateway Types  Type" Gateway Settings$ Cancel& Apply( Archive File Browser* 0Include/Exclude Associated Files and Directories, Add Path. Browse0 Included Paths2 Remove path from archive4 (No files have been added to this archive6 )Excluded Files and Directories in Archive8 Excluded Paths: 'Remove path from archive seclusion list< -No files have been excluded from this archive> Description@ �
Click Select All to create an archive definition that backs up all objects on your ColdFusion Server. Click Deselect All to create an archive definition that does not archive any objects.
B �<b>WARNING:</b> The Java settings (under Server Settings) contain system-specific paths that are used to start ColdFusion. If you deploy these settings to another machine and the paths are invalid, ColdFusion will fail to start.D Archive PDF ServicesF Registered PDF ServicesH 	Host NameJ Archive REST ServicesL Registered REST ServicesN REST Service NameP 	REST PathR Archive SettingsT 'You changes have been saved as Archive:V Archive Schedule BuildX Archive Scheduled TasksZ Registered Scheduled Tasks\ Date^ URL` General Server Settingsb �Examples: limit the number of simultaneously processed requests; timeout requests
after X seconds.  See the Settings section of the ColdFusion Administrator for more
details.d Cachingf yExamples: set template cache size; limit the maximum number of cached queries. See the Caching section
for more details.h Basic Securityj �Examples: enable and assign ColdFusion Administrator/Studio passwords; restrict use of certain tags. See the
Basic Security section for more details.l 	Variablesn YExamples: enable client and memory variables. See the Variables section for more details.p Java and JVMr �Examples: specify the JVM location; specify JVM arguments. For more information, see the online Help for the Java &amp; JVM page.t �<b>WARNING:</b> The Java settings contain system-specific paths that are used to start ColdFusion. If you deploy these settings to another machine and the paths are invalid, ColdFusion will fail to start.v Lockingx �Examples: specify whether simultaneous access to variables is allowed; configure variable scope lock
settings. See the Locking section for more details.z Logging| �Examples: set the server administrator e-mail address; log the names of pages that take over a
specified length of time to return. See the Logging section for more details.~ Mail� wExamples: specify the mail server; log all e-mail messages sent by ColdFusion. See the Mail section
 for more details.� 	Debugging� �Examples: display the names and values of all CGI, URL, form, and cookie variables; display
detailed processing time; See the Debugging section for more details.� Charting� fExamples: How many charts to cache,  maximum number of charting threads, cache location, type of cache� Custom Tag Paths� &Examples: The custom tag path settings� Watcher Settings� jExamples: Causes ColdFusion to watch its configuration files and automatically reload them if they change.� Server Monitor Settings� !Examples: Server monitor Settings� System Probes� {Examples: System probes can monitor the health of a web application by checking the contents of a URL at a regular interval� Update Settings� RExamples: Update site URL, auto check for updates, update email notifications etc.� Web Sockets� LExamples: Update websocket properties like sockettime, port maxframesize etc� Web Service� Examples: Web Services Version� PDF Service� ?Examples: Enable using webkit implementation for PDF conversion� Remote Inspection Settings� ,Examples: Enable Remote Inspection settings � Pre-restore List� Post-restore List� Archive Solr Collection� Registered Solr Collections� Collection Directory� Archive Web Services� Registered Web Services� Web Service Name� WSDL URL� Back� Next� Close� Archive Location� Build Status� Build Status Log� Build Successful� �Reading the log file has timed out. \nThis doesn't mean there is an error. \nPlease check the archive log file to verify build process finished.� Archive File Location� Choose Archive File Location� �
Select or enter the path and file name (with a .car extension) to use for this archive.<br />
Note: If this file already exists, it will be overwritten.
� Deploy Location� Deploy Status� Deploy Status Log� Deploy Successful� 'Select Archive to Deploy on this Server� �
To restore an archive, specify the retrieval method 
(Local, HTTP, or FTP), the current location of the 
archive (.car) file, and the destination for the .car file. � Deploy Locations� Directory Path Translation� Deploy� Severity� Time� Message� ?
Archive file must be a valid archive (.car extension)<br />
� i
Invalid archive name.  Archive names can only contain letters, numbers, dots, underscores and dashes.
� FBuild completed with errors, \nPlease check logs for more information � ^
Invalid archive name. Please make sure that a file with a .car extension is defined.<br />
� GDeploy completed with errors, \nPlease check logs for more information � 
Malformed URL found.
� Settings Never Migrated� RDS� Sandbox Security  Secure Profile Corba Connectors Font Management Default Datasources Debug Output Settings
 Mappings Default ScriptSrc Directory Enable RDS Service "Enable ColdFusion Sandbox Security 0Enable Secure Profile, All Secure Default Values Registered CORBA Connectors #Restpath setting for customized URL Connector Port "Active ColdFusion Mappings > CFIDE 'Password, KeyPassword, KeystorePassword zPlease check the Archive Summary page to see the list of settings that will not be migrated under Settings Never Migrated.  false" set (Ljava/lang/Object;)V$% coldfusion/runtime/Variable'
(& coldfusion/runtime/SwitchTable*
+ 	 JAVA_EXAMPLES- addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable;/0
+1 	VARIABLES3 EDIT_ARCHIVE_DEF5 	DEBUGGING7 WEBSERVICENAME9 IGNOREKEY_CORBA; CLSBTNDW= MONITORING_EXAMPLES? EVENTGATEWAYSA UPDATESC ARCHIVENAMEREQUIREDE MAIL_EXAMPLESG L10N_ARCHSETI BUILD_STATUSK IGNOREDSETTINGSM ADD_PATHO RESTPATHQ SCHEDULED_TASKSS IGNOREVAL_SETTINGSU WEBSOCKET_SETTINGSW NXBTNDWY ARCH_NOARCH[ L10N_SOLRARCHDATA] ARCHIVE_AVC_ DETAILSa APPLICATION_NAMEc ARCHIVE_AND_DEPLOYe 
ARCHIVE_DSg DESELECT_ALLi REMOVE_PATH_FROM_ARCHIVEk ARCHIVENAMEm DESCRIPTIONo DEPLOYq BROWSE_SERVERs L10N_DEPLOYSTATu AR_DATw IGNOREKEY_DEBUGy BUILDWIZARD_SUMMARY_PAGETITLE{ CATEGORY} AR_SEV COLLECTION_DIRECTORY� DEBUGGING_EXAMPLES� -NO_FILES_HAVE_BEEN_EXCLUDED_FROM_THIS_ARCHIVE� L10N_ARCHIVENAME� WATCHER� !BUILDARCHIVE_PICKFILE_DESCRIPTION� REGISTEREDWEB� IGNOREVAL_RDS� ACTIONS� L10N_DEPLOYARCHIVE� TYPE� DELETE_ARCHIVE� ARCHIVE_SET� RESTSERVICENAME� PATH� AR_MES� REGISTEREDCFX� SERVER_SETTINGS_EXAMPLES� REGISTEREDEVENTGATEWAYS� WATCHER_EXAMPLES� ARCHIVE_PDFSERVICES� WEBSERVICES� EVENTGATEWAYSETTINGS� REMOTEINSPECTION� ARCHIVE_AST� IGNOREKEY_FONT� IGNOREKEY_SETTINGS� DEPLOYSUCCESSFUL� PROBE_EXAMPLES� PICKCARLOCATION� BUILDARCHIVE� ARCHIVE_CFX� CACHING� ARCHIVE_ASB� DIRFILES_TO_EXCLUDE� IGNOREVAL_SECURE� LOCKING� JAVA_JVM� ARCHIVE_SUMMARY� IGNOREKEY_MAIL� IGNOREKEY_MAPPING� LOGGING� L10N_ARCHSSCHED� LOCKING_EXAMPLES� DEPLOY_ARCHIVE� 'REMOVE_PATH_FROM_ARCHIVE_SECLUSION_LIST� AR_TIM� ARCHIVE_INFORMATION� NAME� ARCHIVE_WIZARD� PICKLOCATIONINSTRUCTIONS� IGNOREVAL_MAIL� L10N_CRNTARCHIVES� NEXT� CLOSE� L10N_DEPLOYSUM� PROBE� IGNOREKEY_SECURE� MAIL� SETTINGS� CLASS_PATH_OR_LIBRARY_PATH� GATEWAYSETTINGS� ARCHIVE_INFO� CLOSE_WINDOW� ARCHIVE_ERROR_CREATE VARIABLES_EXAMPLES REGISTEREDEVENTGATEWAYSTYPES WEBSERVICE_SETTINGS EDIT_ARCHIVE_TIP	 ARCHIVE_FILE_BROWSER_PAGENAME L10N_ARCHEXCLUDE L10N_DEPLFILETITLE DATA_SOURCES L10N_DEPLDIRPATH DELETE_ARCHIVE_TIP DESCRIPTION_PAGE_INFORMATION ARCHIVE_APP DEPLOYWITHERRORS PDFSERVICE_SETTINGS L10N_DEPLOYLOC ARCHIVE_WEBSERVICES! L10N_ARCHPRE# DEPLOYEARCHIVE% ARCHIVE_ERROR_DEPLOY' PREVIOUS_CF_ARCHIVE_FILES) BUILDWIZARD_STATUS_PAGETITLE+ JAVA_WARNING_GLOBAL- IGNORED_SETTINGS_WARNING/ DEPLOY_WIZARD1 IGNOREVAL_MAPPING3 WSDLURL5 BACK7 MUST_HAVE_SESSION_VARS9 ARCHIVES_PAGEHEADER; JAVA_WARNING= CODE? 
YCHBSAARCHA ARCHIVE_ARSETC JAVA_APPLETSE CFX_TAGSG BROWSWSERVERTIPI BASIC_SECURITYK BUTTON_CANCELM PRE_RESTORE_TO_DO_LISTO 
MONITORINGQ (NO_FILES_HAVE_BEED_ADDED_TO_THIS_ARCHIVES SERVER_SETTINGSU INCLUDED_PATHSW IGNOREKEY_SANDBOXY 
WEBSERVICE[ DATE] ARCHIVE_EVENTGATEWAYS_ BUILDSUCCESSFULa BASIC_SECURITY_EXAMPLESc CREATEARCHIVETIPe DIRECTORY_MAPPINGSg 
DEBUGGING1i CARFILENAME_ERRORk DRIVERm DIRECTORY_PATHo L10N_DEPLFILEq IGNOREVAL_CORBAs BUILD_ARCHIVE_TIPu DIRFILES_TO_INCLUDEw 
WEBSOCKETSy ARCHIVE_HEADER{ CHARTING_EXAMPLES} RESTSERVICES #INCLUDE_EXCLUDE_ASSOC_FILES_FOLDERS� ARCHIVE_URL_ERROR� 
SELECT_ALL� L10N_ARCHSUM� BUILDREADLOGTIMEOUT� COLLECTIONS� UPDATES_EXAMPLES� ARCHIVE_TDLIST� L10N_ARCHINCLUDE� L10N_CREATEARCHIVE� 
PDFSERVICE� BUTTON_APPLY� BUILDWITHERRORS� DEPLOYWIZARD_STATUS_PAGETITLE� PICK_ARCHIVE_FILE� BROWSWSERVER� BUILD_ARCHIVE� IGNOREVAL_DEBUG� IGNOREKEY_RESTPATH� CUSTOMTAGPATHS� POST_RESTORE_TO_DO_LIST� L10N_ARCHPOST� DELETE_ARCHIVE_CONFIRMATION� BROWSE� PAGENAME� IGNOREKEY_RDS� CACHING_EXAMPLES� LOGICAL_PATH� IGNOREVAL_SANDBOX� EVENTGATEWAYTYPES� VERITY_COLLECTIONS� REGISTEREDPDFSERVICES� REMOTEINSPECT� L10N_ARCHJAVAAPP� CREATEARCHIVE� BUILDWIZARD_PICKFILE_PAGETITLE� ARCHIVE_TO_DO_LIST� LOGGING_EXAMPLES� EXCLUDED_PATHS� CF_MAPPINGS� NAME_AND_FILE_LOCATION� HOSTNAME� DEPLOYEARCHIVETIP� APPLETS� FILES_AND_DIRECTORIES� IGNOREKEY_DAEFDATASRC� REGISTEREDREST� L10N_ARCHDATA1Z1� BKBTNDW� CUSTOMTAGPATHS_EXAMPLES� PDFSERVICES� ARCHIVE_DIRMAP� ARCHIVE_RESTSERVICES�
 H t
 H w metaData Ljava/lang/Object;��	 � &coldfusion/runtime/AttributeCollection� java/lang/Object� 	Functions� 
Properties� ([Ljava/lang/Object;)V �
�� getMetadata ()Ljava/lang/Object; this Lcfarchives_en2ecfm1625257982; LocalVariableTable varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value processingdirective1 /Lcoldfusion/tagext/lang/ProcessingDirectiveTag; mode1 I silent0  Lcoldfusion/tagext/io/SilentTag; mode0 t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 t14 t15 t16 t17 LineNumberTable java/lang/Throwable <clinit> 1                 7 8    Z 8    y z   ��    ��    "     ��           ��         Q     *+,� **+,� � **+,� � �            ��           �   !    *� $� *L*� .N*� $0� 6*� B-� F� H:*� L� P� U� YY6��*� ^� F� `:*� L� U� aY6� /*+� eL� h���� � :� �:	*+� lL�	� q� :
� &�r
�� � #:� u� � :� �:� x�� |**� � ~Y�S� �� ��  �       �  �  �  �  �  �  �  �  �  �  �  �  �  �  �          '  0  9  B  K  T  ]  f  o  x  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �        #  ,  5  >  G  P  Y  b  k  t  }  �  �  �  �  �  �  �  �  �  �  �  �  �           *  4  >  H  R  [  e  o  y  �  �  �  �  �  �  �  �  �  �  �  �  �        #  -  7  A  K  U  _  i  s  }  �  �  �  �  �  �  �  �  �  �  �  �  �        &  0  :  D  N  X  b  l  v  �  �  �  �  �  �  �  �  �  �  �  �  �  	  	  	  	   	*  	4  	>  	H  	Q  	[  	e  	o  	y  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  
  
  
  
"  
,  
6  
@  
I  
S  
]  
g  
q  
z  
�  
�  
�  
�  
�  
�  
�  
�  
�  
�  
�  
�  
�        $  -  7  A  K  U  _  i  s  }  �  �  �  �  �  �  �  �  �  �+�� ��m+�� ��d+�� ��[+�� ��R+�� ��I+�� ��@+�� ��7+�� ��.+�� ��%+�� ��+�� ��+�� ��
+�� ��+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ��z+�� ��q+ö ��h+�� ��_+Ŷ ��V+Ƕ ��M+ɶ ��D+˶ ��;+Ͷ ��2+϶ ��)+Ѷ �� +Ӷ ��+ն ��+׶ ��+ٶ ���+۶ ���+ݶ ���+߶ ���+� ���+� ���+� ���+� ���+� ���+ö ���+� ���+�� ���+� ���+� ���+� ��~+�� ��u+�� ��l+�� ��c+�� ��Z+�� ��Q+�� ��H+� ��>+� ��4+� ��*+�� ��!+� ��+	� ��+� ��+� ���+� ���+� ���+� ���+� ���+� ���+� ���+� ���+� ���+Ӷ ���+� ���+!� ���+#� ���+%� ��x+'� ��n+)� ��d++� ��Z+-� ��P+/� ��F+1� ��<+3� ��2+5� ��(+7� ��+9� ��+;� ��
+=� �� +?� ���+A� ���+C� ���+E� ���+G� ���+I� ���+K� ���+M� ���+O� ���+Q� ���+S� ���+U� ���+W� ��~+Y� ��t+�� ��k+[� ��a+]� ��W+_� ��M+a� ��C+U� ��9+c� ��/+e� ��%+g� ��+i� ��+k� ��+m� ���+o� ���+q� ���+s� ���+u� ���+w� ���+y� ���+{� ���+}� ���+� ���+�� ���+�� ���+�� ���+�� ��{+�� ��q+�� ��g+�� ��]+�� ��S+�� ��I+�� ��?+�� ��5+�� ��++�� ��!+�� ��+�� ��+�� ��+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ��x+�� ��n+�� ��d+�� ��Z+�� ��P+ö ��F+Ŷ ��<+Ƕ ��2+ɶ ��(+˶ ��+Ͷ ��+϶ ��
+Ѷ �� +Ӷ ���+ն ���+׶ ���+�� ���+ö ���+Ŷ ���+Ƕ ���+�� ���+ٶ ���+۶ ���+ݶ ���+߶ ���+�� ���+� ��w+� ��m+ٶ ��c+� ��Y+� ��O+� ��E+� ��;+_� ��1+�� ��'+� ��+� ��+� ��	+�� �� �+�� �� �+�� �� �+�� �� �+�� �� �+ݶ �� �+�� �� �+� �� �+� �� �+� �� �+� �� �+	� �� �+� �� �+� �� ~+�� �� t+� �� j+� �� `+� �� V+� �� L+� �� B+� �� 8+� �� .+� �� $+� �� +!� �� *� #�)� � h��`� q� :� #�� � #:�� � :� �:���  e z } } � } Z � � � � � Z � � � � � � � � � � � 5 �� ������ 5 �
 ��
��
�


     �   ��       �    + ,   	
               � 	  � 
        �   �         �   � � @  �  �  �  � h q z � � � !� #� (� *� ,� .� 0� 2� 9� ;� =� ? A
 C E G% I. K7 M@ OI QR S[ Ud Wm Yv [ ]� _� a� c� e� g� i� k� m� o� q� s� u� w� y { } ! �* �3 �< �E �N �W �` �i �r �{ �� �� �� �� �� �� �� �� �� �� �� �� �� � � � �! �+ �5 �> �H �R �\ �f �p �z �� �� �� �� �� �� �� �� �� �� �� �� �� � � � �$ �. �8 �B �L �V �` �j �s �} ������	��������			!	#	'&	1(	;+	E-	O0	Y2	c5	m7	w9	�;	�=	�?	�A	�C	�E	�G	�I	�K	�M	�O	�Q	�S
U
W
Y
![
+]
4_
>a
Hc
Re
\g
fi
pk
zm
�o
�q
�s
�u
�w
�y
�{
�}
�
��
��
��
�����#�,�6�@�J�T�]�g�q�{������������������������������$�.�8�B�L�V�`�j�t�~����������������������������� �            #     *� 
�           ��       �    �:� @� B\� @� ^�+Y�,.|�24y�26�28 ��2: ��2< ζ2> ��2@ ��2B&�2D ��2F�2H ��2Js�2L ��2N ɶ2PW�2Ri�2T*�2V Զ2X ��2Z ��2\�2^ ��2` ��2bC�2d�2f�2hK�2j<�2lZ�2n�2p`�2r ��2tm�2v ��2x ��2z Ѷ2| ��2~B�2� ��2� ��2� ��2�_�2��2� ��2� ��2� ��2� ն2��2��2�Q�2��2�j�2�h�2�@�2� ¶2�I�2�t�2�O�2� ��2�c�2�,�2�(�2� ��2�n�2� ϶2� ʶ2� ��2� ��2� ��2��2�H�2�u�2�l�2�!�2� ׶2�~�2�{�2�9�2� Ӷ2� Ҷ2� ��2�o�2��2� ��2�^�2� ��2�2�2�>�2��2� ��2� ܶ2��2� ��2� ��2� ��2� ��2� Ͷ2� ��2�+�2�J�2�R�2��2 1�2 Ķ2z�2P�2 ��2
�2U�2\�2 ��2$�2 ��2�2a�2:�2 Ƕ2 ��2  ��2" ��2$ ��2&
�2( ö2*�2, ��2.b�20 ݶ22�24 ۶26 ��28 ��2:�2<�2>}�2@?�2Bk�2Dr�2F7�2H"�2J	�2Lw�2NS�2P/�2R ��2T[�2V4�2XY�2Z ̶2\ ��2^p�2`N�2b ��2dx�2f�2h#�2j ��2l ƶ2nM�2pG�2r ��2t ض2v�2x �2z ��2|�2~ ��2�-�2�V�2� ȶ2�;�2�A�2� ��2�%�2� ��2� ��2�E�2��2� ��2�T�2� Ŷ2� ��2� ��2��2��2� ڶ2� ٶ2� ��2�0�2� ��2��2�X�2� ��2� ˶2�v�2�F�2aq�2� ֶ2�'�2�6�2�d�2� ��2�=�2��2� ��2�8�2� ��2�]�2�5�2�3�2�e�2��2�)�2��2� ж2�g�2�L�2� ��2� ��2�.�2�D�2�f�2� |��Y��Y�SY��SY�SY��S����          ���             