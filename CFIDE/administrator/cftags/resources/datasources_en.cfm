����  -7 
SourceFile 8/CFIDE/administrator/cftags/resources/datasources_en.cfm cfdatasources_en2ecfm1916238679  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   
ATTRIBUTES Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   CALLER   	   BSUCCESS   	    com.macromedia.SourceModTime  h���u pageContext #Lcoldfusion/runtime/NeoPageContext; % &	  ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
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
  � ;Invalid extension of the file name. Valid extensions are :  � write � 6 java/io/Writer �
 � � DB2 Universal Database � @Data &amp; Services &gt; Datasources &gt; DB2 Universal Database � CF Data Source Name � ColdFusion datasouce name � Database � <Enter the database name that corresponds to the data source. � Server � NEnter the IP address or host name of the server on which the database resides. � Port � :Enter the port that is used to access the database server. � 	User name � <Enter the user name if the database requires authentication. � Password � ZEnter the password corresponding to the User name if the database requires authentication. � Description � Hide Advanced Settings � Show Advanced Settings � Submit � Cancel � Connection String � kEnter name/value pairs for vendor-specific connection string arguments. The format is typically name=value. � Limit Connections � 7Select the checkbox to enable the max connection limit. � Restrict connections to � Maintain Connections � �Select the checkbox to enable server connection pooling for your data source. This is highly recommended to increase performance. � ,Maintain connections across client requests. � String Format � �By default, ColdFusion uses ASCII to format string characters. This optimizes performance for languages with Latin based alphabets. � CEnable Unicode for data sources configured for non-Latin characters � Max Pooled Statements � Timeout (min) � |Enter a time, in minutes, that the server allows a data source connection to remain inactive before closing that connection. � Interval (min) � aEnter a time, in minutes, that the server waits before closing an expired data source connection. � Query Timeout (seconds) � Log Activity � <Log database-related method calls to the specified log file. � Log database calls to � Browse Server � Default Driver � /Data &amp; Services &gt; Datasources &gt; Other � JDBC URL � 2Enter the JDBC Connection URL for this datasource. � Driver Class � Enter the JDBC Class. � Driver Name � Enter the JDBC Driver. � Apache Derby Client � =Data &amp; Services &gt; Datasources &gt; Apache Derby Client � Apache Derby Embedded � ?Data &amp; Services &gt; Datasources &gt; Apache Derby Embedded � CF datasource name � Database Folder � Create Database  5Select the checkbox if the database has to be created ColdFusion User name ColdFusion Password other %
data source updated successfully.

 Data Sources %Data &amp; Services &gt; Data Sources �
Add and manage your data source connections and Data Source Names (DSNs).<br />
You use a DSN to connect ColdFusion to a variety of data sources.
 Add New Data Source Data Source Name Driver  Add  Connected Data Sources Actions Sort by data source name Sort by driver  Status" OK$ Edit& Verify( Delete* 1Are you sure you want to delete this data source?, �This data source is currently the default client variable database. \n You must select a new default client store before deleting this data source.. Verify All Connections0 Informix2 2Data &amp; Services &gt; Datasources &gt; Informix4 Informix Server6 CEnter the Informix server name that corresponds to the data source.8 0JNDI environment variables not in correct format: &format: name=value followed by a comma< 	JNDI Name> (Enter the JNDI name for this datasource.@ JNDI Environment SettingsB nEnter name/value pairs for JNDI environment variables. The format is typically name=value followed by a comma.D JDBC to ODBC BridgeF ODBC DSNH D
Enter the ODBC data source name that the bridge will connect to.
J Microsoft AccessL �
The ColdFusion ODBC Server service is not running or has not been installed.
You may also use the "MS Access with Unicode" driver to connect to MS Access datasources.
N :Data &amp; Services &gt; Datasources &gt; Microsoft AccessP Database FileR System Database FileT Use Default User nameV Page TimeoutX Max Buffer SizeZ Default User Name\ DEnter the default user name if the database requires authentication.^ Default Password` AEnter the default password corresponding to the default username.b Return TimeStamp as Stringd GData &amp; Services &gt; Datasources &gt; Microsoft Access with Unicodef �
The standalone MySQL JDBC driver is no longer shipped with ColdFusion.<br />
Please download it, put it in cf_root/lib folder and restart ColdFusion.<br />
h MySQL 5j 1Data &amp; Services &gt; Datasources &gt; MySQL 5l Usernamen YEnter the password corresponding to the Username if the database requires authentication.p MySQL_DDr 2Data &amp; Services &gt; Datasources &gt; MySQL_DDt ColdFusion datasource namev ODBC Socketx P
The ColdFusion ODBC Server service is not running or has not been installed.
z 5Data &amp; Services &gt; Datasources &gt; ODBC Socket| Trusted Connection~ Oracle� 0Data &amp; Services &gt; Datasources &gt; Oracle� SID Name� @Enter the System Identifier that corresponds to the data source.� Oracle Linked Servers� LCheck this to enable Oracle linked servers. This is the recommended setting.� %Enable Oracle linked servers support.� 
PostgreSQL� 4Data &amp; Services &gt; Datasources &gt; PostgreSQL� Microsoft SQL Server� >Data &amp; Services &gt; Datasources &gt; Microsoft SQL Server� Select Method� ]Enable High ASCII characters and Unicode for data sources configured for non-Latin characters� ApplicationIntent� Sybase� 0Data &amp; Services &gt; Datasources &gt; Sybase� Application name prefix to use� AValidation query to use. If not specified JDBC APIs will be used.� Disable Connections� 6Check this box to disable connections to data sources.� Suspend all client connections.� Login Timeout (sec)� CLOB� -Check this box to enable long text retrieval.� "Enable long text retrieval (CLOB).� BLOB� 7Check this box to enable binary large object retrieval.� ,Enable binary large object retrieval (BLOB).� Long Text Buffer (chr)� Blob Buffer(bytes)� Disable Autogenerated Keys� 9Check this box to disable retrieving auto generated keys.� 'Disable retrieval of autogenerated keys� Allowed SQL� SELECT� CREATE� GRANT� INSERT� DROP� REVOKE� UPDATE� ALTER� Stored Procedures� DELETE� Validate Connection� Enable connection validation� Validation Query� Client Information� Client Hostname� Client Username� Application Name� Prefix� $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag�� <	 � coldfusion/tagext/io/OutputTag�
� \ #
Error editing/creating this dsn (� DSN� _String &(Ljava/lang/Object;)Ljava/lang/String;�� coldfusion/runtime/Cast�
�� EncodeForHTML &(Ljava/lang/String;)Ljava/lang/String;��
 � 	)<br />
� CFCATCH  MESSAGE <br />
 DETAIL
� k coldfusion/tagext/QueryLoop	

 r

 x
� { _factor0 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;
  �
Trying to create a data source with a name that is the same as an existing data source.<br />
Please enter in a unique data source name, or edit the existing data source.
 �
Trying to create a data source with a name that is invalid. Data source Names must match ColdFusion variable naming conventions
 (
You must select a valid driver type.
 %
Please enter in a valid dsn name.
 
Select a valid driver type:
 Not Specified Error -
A ODBC Datasource Name is required.<br />
  =
A page timeout value greater then zero is required.<br />
" _factor1$
 % +
Unable to update the NT registry.<br />
' 6
Unable to update the ColdFusion ODBC Server.<br />
) _factor2+
 , G
A ODBC Datasource must be selected before submitting changes.<br />
. _factor30
 1 0
Error accessing available odbc datasources. - 3 
STACKTRACE5 _factor47
 8 2
Connection verification failed for data source: : REQUEST< 
ESAPIUTILS> _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;@A
 B encodeForHTMLFilePathD java/lang/ObjectF _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;HI
 J _factor5L
 M falseO set (Ljava/lang/Object;)VQR coldfusion/runtime/VariableT
US coldfusion/runtime/SwitchTableW
X 	 	SID_TITLEZ addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable;\]
X^ JNDIENVIROSETTINGS_TITLE` DRIVER NAMEb SENDSTRINGPARAMETERSASUNICODEd DATABASE_TITLEf DRIVER_TITLEh MSACCESS_PAGEHEADERj ADD_NEW_DSNl "SENDSTRINGPARAMETERSASUNICODELABELn 
DS_STAT_OKp CONNECTIONSTRINGr ACCESS_SQLEXECUTIVE_UPDATEERRORt MYSQLPASSWORD_TITLEv LARGEOBJECTRETRIEVAL_BLOB_TITLEx SERVERz APPNAMEPREFIXHINT| DEFAULTPASSWORD_TITLE~ SHOWADVANCEDSETTINGS� BUTTON_VERIFY� VALIDATIONQUERYLABEL� BUTTON_DELETE� MAXPOOLEDSTATEMENTS� APPLICATIONINTENT� DESCRIPTION� MYSQLDRIVER� BUTTON_VERIFYALL� DEFAULTUSERNAME_TITLE� ODBC_DSN_TIP� USETRUSTEDCONNECTION� ERROR_DRIVER_NOT_SPECIFIED� SQLSERVERDRVR� DRIVERCLASS� 
CFUSERNAME� USETRUSTEDCONNECTION_TITLE� BRIDGE� MSACCESSJETEDIT_ERROR� USESPYLOGLABEL� DEFAULTDRIVER� DRIVERTYPE_ERROR� ACTIONS� MSACCESSEDIT_ERROR� DB2_PAGEHEADER� SUPPORTLINKSLABEL� ODBC_NO_DSN_SELECTED_ERROR� ERRORACCESSINGODBCDATASOURCE� JNDINAME_TITLE� PORT� #SENDSTRINGPARAMETERSASUNICODE_TITLE� TIMEOUT_TITLE� MYSQLDD_DATASOURCENAME_TITLE� INTERVAL_TITLE� SUSPENDALLCONNECTIONS� RETURNTIMESTAMP� BROWSESERVER� DERBYDATASOURCENAME_TITLE� DATASOURCENAME� VALIDATECONNECTIONTEXT� WELCOME� SEQUELLINKDISABLEDODBC� 
SOCKETDRVR� 
SYBASEDRVR� PAGETIMEOUT� ODBC_ACCESS_SQLEXECUTIVE_ERROR� DISABLEAUTOGENKEYS� JAR_WARNING� DERBYEMBEDDED_PAGEHEADER� 
BLOBBUFFER� SUBMIT� INFORMIXSERVER� ODBC_DSN� ERRMSG� CLIENTHOSTNAME� MAXCONNECTIONS_ENABLE� LONGTEXTBUFFER� DATABASEFOLDER� JDBCURL_TITLE� MSSQL_PAGEHEADER� LOGINTIMEOUT� 	CONNECTED� VALIDATEQUERYHINT� PASSWORD� MYSQL_PAGEHEADER  MAXCONNECTIONS_LIMIT ACCESS_REGISTRY_ERROR PAGETIMEOUT_ERROR CONNECTIONSTRING_TITLE SUPPORTLINKS
 VALIDATECONNECTIONLABEL MYSQLDDD_PAGEHEADER ENABLEMAXCONNECTIONS_TITLE 
CLIENTINFO CLASS_TITLE MYSQLDDDRIVER 
EDIT_ERROR PAGEHEADER_DATASOURCES 
ORACLEDRVR DATASOURCENAME_TITLE HIDEADVANCEDSETTINGS  USEDEFAULTUSERNAME" ERROR_VERIFY$ SQLSERVEREDIT_ERROR& CREATEDATABASE_TITLE( DISABLEAUTOGENKEYS_TITLE* DATABASEFILE, PASSWORD_TITLE. ODBCEDIT_ERROR0 DEFAULTCLIENTSTORE_CANTDELETE2 DEFAULTPASSWORD4 INFORMIXSERVER_TITLE6 OTHER_PAGEHEADER8 SUPPORTLINKS_TITLE: DATABASE< CREATEDATABASE> USERNAME_TITLE@ LONGTEXTRETRIEVAL_CLOBB ENBALELARGEOBJECTRETRIEVAL_BLOBD 
CLIENTUSERF DERBYEMBEDDEDDRIVERH SENDSTRINGPARAMETERSASUNICODE1J ENABLELONGTEXTRETRIEVAL_CLOBL NO_DSN_SELECTED_ERRORN SYBASE_PAGEHEADERP INVALIDNAME_ERRORR !MAINTAINCONNECTIONSACROSSREQUESTST POSTGRESQL_PAGEHEADERV UNIQUENAME_ERRORX SIDZ SORT_DSN\ JDBCURL^ APPLICATIONNAME` DRIVERb USESPYLOG_TITLEd DERBYEMBDATASOURCENAME_TITLEf DS_STAT_ERRORh MSACCESSDRVRj INFORMIX_PAGEHEADERl STOREDPROCEDURESn MYSQLUSERNAMEp LARGEOBJECTRETRIEVAL_BLOBr MSACCESSJET_PAGEHEADERt USERNAMEv DISABLEAUTOGENKEYSSUPPORTx ACCESS_SQLEXECUTIVE_ERRORz SORT_DRIVER| DATASOURCE_UPDATEDSUCCESSFULLY~ MAINTAINCONNECTIONS� JNDIENVIROSETTINGS� 
BUTTON_ADD� ODBCSOCKET_PAGEHEADER� MAXBUFFERSIZE� DERBYCLIENT_PAGEHEADER� DELETE_DATASOURCE_CONFIRMATION� POSTGRESQLDRIVER� DERBYCLIENTDRIVER� 	DSN_ERROR� APPLICATIONNAMEPREFIX� JNDINAME� DISABLECONNECTIONS_TITLE� ERRDTL� RETURNTIMESTAMP_TITLE� SERVER_TITLE� TIMEOUT� INFORMIXDRIVER� DISABLECONNECTIONS� LONGTEXTRETRIEVAL_CLOB_TITLE� DEFAULTUSERNAME� SYSTEMDATABASEFILE� BUTTON_EDIT� QUERYTIMEOUT� 
CFPASSWORD� STATUS� MAINTAINCONNECTIONS_TITLE� DB2� SELECTMETHOD� INTERVAL� PAGENAME_DATASOURCES� DRIVER_ERROR� 	USESPYLOG� 
OTHERMEOMY� SEQUELLINKDISABLED� NEED_VALID_FILE_EXTENSION� ORACLE_PAGEHEADER� 
PORT_TITLE� 
ALLOWEDSQL� CANCEL� 
� _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V��
 � _factor6�
 �
 L x
 L { _factor7�
 � metaData Ljava/lang/Object;��	 � &coldfusion/runtime/AttributeCollection� 	Functions� 
Properties� ([Ljava/lang/Object;)V �
�� getMetadata ()Ljava/lang/Object; this !Lcfdatasources_en2ecfm1916238679; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; __factorParent out Ljavax/servlet/jsp/JspWriter; value silent0  Lcoldfusion/tagext/io/SilentTag; mode0 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 output3  Lcoldfusion/tagext/io/OutputTag; mode3 t14 t15 t16 t17 output4 mode4 t20 t21 t22 t23 output5 mode5 t26 t27 t28 t29 output7 mode7 t32 t33 t34 t35 output9 mode9 t38 t39 t40 t41 LineNumberTable java/lang/Throwable$ processingdirective12 /Lcoldfusion/tagext/lang/ProcessingDirectiveTag; mode12 output1 mode1 output2 mode2 runPage output10 mode10 output11 mode11 output6 mode6 <clinit> output8 mode8 1                      ; <    ^ <    } ~   � <   ��    �� �   "     ��   �       ��      �   ]     +*+,� **+,� � **+,� � **+,� � !�   �        +��     +��    +��     �   #     *� 
�   �       ��   � �  �  *  �*� b+� J� d:*� P� Y� eY6� /*,� iM� l���� � :� �:*,� pM�� u� :� #�� � #:		� y� � :
� 
�:� |�� �**� � �Y�S� �� ��  E       �    "  +  4  =  F  O  X  a  j  s  |  �  �  �  �  �  �  �  �  �  �  �  �  �  �          '  0  9  B  K  T  ]  f  o  x  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �        %  /  9  C  M  W  a  k  u    �  �  �  �  �  �  �  �  �  �  �  �          )  3  =  G  Q  [  e  o  y  �  �  �  �  �  �  �  �  �  �  �  �  �  �        %  /  9  C  M  W  a  k  u    �  �  �  �  �  �  �  �  �  �  �  �          )  3  =  G  Q  [  e  o  y  �  �  �  �  �  �  �  �  �  �  �  �  �  	  	  	  	#  	-  	7  	A  	K  	U  	_  	i  	s  	}  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  
  
  
  
�  �  �  �  �  w  �  '  6,�� ��3,�� ��*,�� ��!,�� ��,�� ��,�� ��,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
,�� ��
v,�� ��
m,�� ��
d,ö ��
[,Ŷ ��
R,Ƕ ��
I,ɶ ��
@,˶ ��
7,Ͷ ��
.,϶ ��
%,Ѷ ��
,Ӷ ��
,ն ��

,׶ ��
,ٶ ��	�,۶ ��	�,ݶ ��	�,߶ ��	�,� ��	�,� ��	�,� ��	�,� ��	�,� ��	�,� ��	�,�� ��	�,� ��	�,� ��	�,� ��	�,�� ��	z,�� ��	q,�� ��	h,�� ��	_,�� ��	V,�� ��	M,�� ��	D,� ��	:,� ��	0,� ��	&,� ��	,	� ��	,� ��	,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,!� ���,#� ���,%� ���,'� ��|,)� ��r,+� ��h,-� ��^,/� ��T,1� ��J,3� ��@,5� ��6,7� ��,,9� ��",;� ��,=� ��,?� ��,A� ���,C� ���,E� ���,G� ���,I� ���,K� ���,M� ���,O� ���,Q� ���,S� ���,U� ���,W� �����,Y� ��,[� ��u,]� ��k,_� ��a,a� ��W,c� ��M,e� ��C,�� ��:,g� ��0,i� ��&,k� ��,m� ��,o� ��,q� ���,s� ���,u� ���,w� ���,y� ���,{� ���,}� ���,� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ��|,�� ��r,�� ��h,�� ��^,�� ��T,�� ��J,�� ��@,�� ��6,�� ��,,�� ��",�� ��,�� ��,�� ��,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ��x,�� ��n,ö ��d,Ŷ ��Z,Ƕ ��P,ɶ ��F,˶ ��<,Ͷ ��2,϶ ��(,Ѷ ��,Ӷ ��,ն ��
,׶ �� ,ٶ ���,۶ ���,ݶ ���,߶ ���,� ���,� ���,� ���,� ���*+,�� ���,� ���,� ���,� ���,� ��y,� ��o,� ��e,� ��[,!� ��Q,#� ��G*+,�&� ��8*��+� J��:*�� P� Y��Y6� r,(� �,*�� P**� � �YSYS� ������ �,� �,*�� P**� � �YSYS� ������ �,� ������� :� #�� � #:�� � :� �:���h*��+� J��:*�� P� Y��Y6� r,*� �,*�� P**� � �YSYS� ������ �,� �,*�� P**� � �YSYS� ������ �,� ������� :� #�� � #:�� � :� �:����*��+� J��:*�� P� Y��Y6� r,*� �,*�� P**� � �YSYS� ������ �,� �,*�� P**� � �YSYS� ������ �,� ������� :� #�� � #:�� � :� �:����*+,�-� ���,/� ���*��+� J��:*ʶ P� Y��Y6� r,*� �,*̶ P**� � �YSYS� ������ �,� �,*Ͷ P**� � �YSYS� ������ �,� ������� : � # �� � #:!!�� � :"� "�:#��#� �*+,�2� �� �*��	+� J��:$*ֶ P$� Y$��Y6%� B,4� �,*׶ P**� � �YSYS� ������ �,� �$����$�� :&� #&�� � #:'$'�� � :(� (�:)$��)� .*+,�9� �� *+,�N� �� *� !P�V� *,Ѷ�*� & $ 9 <% < A <%  \ h% b e h%  \ w% b e w% h t w% w | w%
�]i%cfi%
�]x%cfx%iux%x}x%�-9%369%�-H%36H%9EH%HMH%w�	%	%w�%%	%%a��%���%a�%��%��%%A��%���%A��%���%���%���% �  � *  ���    �� 0   ���   ���   ���   ���   ���   ���   � �   �� 	  �� 
  ��   �   ��   ��   ��   �	�   �
�   �   ��   ��   ��   ��   ��   �   ��   ��   ��   ��   ��   �   ��   ��    �� !  �� "  �� #  � $  �� %  �� &  � � '  �!� (  �"� )#  �&    �  �  �  � � � � � � �  � "� $  &	 ( * ,$ .- 06 2? 4H 6Q 8Z :c <l >u @~ B� D� F� H� J� L� N� P� R� T� V� X� Z� \� ^ ` b d  f) h2 j; lD nM pV r_ th vq xz z� |� ~� �� �� �� �� �� �� �� �� �� �� �  �
 � � �( �2 �< �F �P �Z �d �n �x �� �� �� �� �� �� �� �� �� �� �� �� �� � � � �" �, �6 �@ �J �T �^ �h �k �u � �� �� �� �� �� �� �� ������	 
(2<FPZd!n#x%�'�)�+�-�/�1�3�5�7�9�;�=�?	A	C	E	"G	,I	6K	@M	JO	TQ	^S	hU	rW	|Y	�[	�]	�_	�a	�c	�e	�g	�i	�k	�m	�o	�q	�s
u
w
y
&{
0}
:
D�
S�
]�
g�
q�
{�
��
��
��
��
��
��
��
��
��
��
��
��
��
��!�!�!�!�!�!�!�!��
��
������������������������������������������������������������������������������\�\�,�;�{�{�{�{�{�{�{�{�s�������������������E�E��[�[�[�[�[�[�[�[�S�%�%������������������� �  � �  O     �*� F+� J� L:*� P� T� Y� ]Y6� *,��� :� =�� l���� u� :� #�� � #:�٨ � :	� 	�:
�ک
*�    9 _% ? S _% Y \ _%   9 n% ? S n% Y \ n% _ k n% n s n% �   p    ���     �� 0    ���    ���    �&'    �(�    ���    ���    � �    �� 	   �� 
#         �    
   �*��+� J��:*�� P� Y��Y6� �,� �,*�� P**� � �Y�S� ������ �,�� �,*�� P**� � �YSYS� ������ �,� �,*�� P**� � �YSYS� ������ �,� ����j�� :� #�� � #:�� � :� �:	��	*�   � �% � � �%  � �% � � �% � � �% � � �% �   f 
   ���     �� 0    ���    ���    �)    �*�    ���    ���    � �    �� 	#   r  5� 5� 5� 5� 5� 5� 5� 5� -� _� _� _� _� _� _� _� _� W� �� �� �� �� �� �� �� �� ��  � $ �    
   �*��+� J��:*�� P� Y��Y6� �,� �,*�� P**� � �Y�S� ������ �,�� �,*�� P**� � �YSYS� ������ �,� �,*�� P**� � �YSYS� ������ �,� ����j�� :� #�� � #:�� � :� �:	��	*�   � �% � � �%  � �% � � �% � � �% � � �% �   f 
   ���     �� 0    ���    ���    �+    �,�    ���    ���    � �    �� 	#   r  5� 5� 5� 5� 5� 5� 5� 5� -� _� _� _� _� _� _� _� _� W� �� �� �� �� �� �� �� �� ��  � -� �   l     $*� (� .L*� 2N*� (4� :*-+��� ��   �   *    $��     $��    $��    $ / 0 #       7 �  n  
  **��
+� J��:*ڶ P� Y��Y6� �,� �,*۶ P**� � �Y�S� ������ �,�� �,*ܶ P**� � �YSYS� ������ �,� �,*ݶ P**� � �YSYS� ������ �,� �,*޶ P**� � �YSY6S� ������ �,� ����:�� :� #�� � #:�� � :� �:	��	*�   �%%  �%%%% �   f 
  *��    *� 0   *��   *��   *.   */�   *��   *��   * �   *� 	#   � % 6� 6� 6� 6� 6� 6� 6� 6� .� `� `� `� `� `� `� `� `� X� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��  � L �  B  
  2*��+� J��:*� P� Y��Y6� �,;� �,*� P**� � �Y�S� ������ �,� �,*� P**=� �Y?S�CE�GY**� � �YSYS� �S�K��� �,� �,*� P**=� �Y?S�CE�GY**� � �YSYS� �S�K��� �,� ����2�� :� #�� � #:�� � :� �:	��	*�  %
% %
%%$% �   f 
  2��    2� 0   2��   2��   20   21�   2��   2��   2 �   2� 	#   b  6� 6� 6� 6� 6� 6� 6� 6� .� {� {� `� `� `� `� X� �� �� �� �� �� �� ��  � + �    
   �*��+� J��:*�� P� Y��Y6� �,� �,*�� P**� � �Y�S� ������ �,�� �,*¶ P**� � �YSYS� ������ �,� �,*ö P**� � �YSYS� ������ �,� ����j�� :� #�� � #:�� � :� �:	��	*�   � �% � � �%  � �% � � �% � � �% � � �% �   f 
   ���     �� 0    ���    ���    �2    �3�    ���    ���    � �    �� 	#   r  6� 6� 6� 6� 6� 6� 6� 6� .� `� `� `� `� `� `� `� `� X� �� �� �� �� �� �� �� �� ��  � 4  �  �    �>� D� F`� D� b� D��XY�Y[}�_aZ�_c/�_e�_g�_i0�_k`�_mA�_o�_qJ�_s�_� ��_u ��_wr�_y ��_{�_} ��_j�_��_�L�_� ��_�M�_��_� ��_� ��_��_�o�_�P�_�h�_�]�_�y�_� ��_� ��_�-�_�:�_�d�_�[�_� ��_�%�_�)�_� ��_�F�_� ��_��_�~�_� ��_� ��_�X�_�	�_��_�!�_�u�_�#�_� ��_�k�_�(�_�3�_��_� ��_�@�_�w�_�v�_� ��_�e�_� ��_� ��_�n�_�5�_� ��_��_�S�_�\�_�U�_� ��_� ��_��_� ��_�7�_�,�_� ��_� ��_�E�_� ��_��_p�_�B�_�_ ��_ ��_	�_ ��_ ��_t�_� ��_�_ ��_.�_s�_ ��_?�_z�_�_!�_#c�_% ¶_' ��_)9�_+ ��_-a�_/�_� ��_1 ��_3O�_5i�_7T�_9*�_;�_=�_?8�_A�_C ��_� ��_E ��_G ��_I4�_K ��_M ��_O ��_Q ��_S ��_U�_W ��_Y ��_[|�_]G�__+�_a ��_cC�_e&�_g6�_i ��_k^�_mR�_o ��_qq�_s ��_um�_w�_y ��_{ ��_}H�_=�_��_� ��_�Y�_�D�_�x�_�f�_�2�_�N�_� ��_�1�_� ��_� ��_� ��_�W�_� ��_�V�_�l�_��_� �_�Q�_� ��_� ��_�g�_�b�_�K�_�$�_�;�_�I�_��_��_� ��_�"�_�>�_� ��_�'�_�<�_�_�_��_�{�_� ��_�
�_� ��_��_� ���Y�GY�SY�GSY�SY�GS���   �      ���   0 �    
   �*��+� J��:*ж P� Y��Y6� �,� �,*Ѷ P**� � �Y�S� ������ �,�� �,*Ҷ P**� � �YSYS� ������ �,� �,*Ӷ P**� � �YSYS� ������ �,� ����j�� :� #�� � #:�� � :� �:	��	*�   � �% � � �%  � �% � � �% � � �% � � �% �   f 
   ���     �� 0    ���    ���    �5    �6�    ���    ���    � �    �� 	#   r  6� 6� 6� 6� 6� 6� 6� 6� .� `� `� `� `� `� `� `� `� X� �� �� �� �� �� �� �� �� ��  �       "    #