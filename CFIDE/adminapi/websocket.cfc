����  - 
SourceFile /CFIDE/adminapi/websocket.cfc *cfwebsocket2ecfc1386832419$funcSETPROPERTY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - PROPERTYNAME / getVariable  (I)Lcoldfusion/runtime/Variable; 1 2 %coldfusion/runtime/ArgumentCollection 4
 5 3 _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; 7 8
  9 PROPERTYVALUE ; 
	         = _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V ? @
   A _setCurrentLineNo (I)V C D
   E 	component G CFIDE.adminapi.accessmanager I CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; K L coldfusion/runtime/CFPage N
 O M set (Ljava/lang/Object;)V Q R coldfusion/runtime/Variable T
 U S _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; W X
   Y checkAdminRoles [ java/lang/Object ] coldfusion.serversettings _ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; a b
   c 

			
			 e 	__HTSWT_1 Lcoldfusion/util/FastHashtable; g h	  i java/lang/String k _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; m n
   o _String &(Ljava/lang/Object;)Ljava/lang/String; q r coldfusion/runtime/Cast t
 u s Trim &(Ljava/lang/String;)Ljava/lang/String; w x
 O y __caseValue 4(Lcoldfusion/util/FastHashtable;Ljava/lang/Object;)I { |
   } 	VARIABLES  WEBSOCKETSERVICE � _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
   � setWebSocketServiceEnabled � setProxyEnabled � setNormalPortListenerEnabled � setPort � setMaxFrameSize � setFlashFallBackEnabled � setClusterEnabled � setMulticastPort � setSSLEnabled � 
setSSLPort � setKeyStorePath � setKeyStorePassword � coldfusion/runtime/SwitchTable �
 � 	 ENABLESECUREWEBSOCKET � addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable; � �
 � � MULTICASTPORT � PORT � ENABLEWEBSOCKETSERVER � ENABLENORMALPORTLISTENER � STARTFLASHPOLICYSERVER � KEYSTOREPATH � MAXDATASIZE � ENABLEPROXYPORT � KEYSTOREPASSWORD � SSLPORT � ENABLEWEBSOCKETCLUSTER � 
	 � setProperty � metaData Ljava/lang/Object; � �	  � any � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � /Sets the value of a WebSocket property setting. � 
Parameters � REQUIRED � Yes � HINT ��<br><br>Valid Properties are:
			<UL>
			<LI>EnableWebSocketServer</LI>
			<LI>EnableProxyPort</LI>
            <LI>EnableNormalPortListener</LI>
			<LI>Port</LI>            
			<LI>MaxDataSize</LI>
			<LI>StartFlashPolicyServer</LI>
			<LI>EnableWebSocketCluster</LI>
			<LI>MulticastPort</LI>
			<LI>EnableSecureWebSocket</LI>
			<LI>SSLPort</LI>
			<LI>KeyStorePath</LI>
			<LI>KeyStorePassword</LI>
			</UL> � NAME � propertyName � ([Ljava/lang/Object;)V  �
 � � (Value to set for the specified property. � propertyValue � getMetadata ()Ljava/lang/Object; this ,Lcfwebsocket2ecfc1386832419$funcSETPROPERTY; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       g h    � �   	  � �  �   "     � Ű    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     ǰ    �        � �    � �  �   -     � lY0SY<S�    �        � �    � �  �  D    �+� � :+� ,� :	+� :
-� $� *:-� .:*0� 6� ::*<� 6� ::->� B
-|� F-HJ� P� V->� B-}� F--
� Z\� ^Y`S� dW-f� B� j- �� F-� lY0S� p� v� z� ~�    �          ?   u   �   �    M  �  �  �  %  [  �- �� F--�� lY�S� ��� ^Y-� lY<S� pS� d��U- �� F--�� lY�S� ��� ^Y-� lY<S� pS� d��- �� F--�� lY�S� ��� ^Y-� lY<S� pS� d���- �� F--�� lY�S� ��� ^Y-� lY<S� pS� d���- �� F--�� lY�S� ��� ^Y-� lY<S� pS� d��}- �� F--�� lY�S� ��� ^Y-� lY<S� pS� d��G- �� F--�� lY�S� ��� ^Y-� lY<S� pS� d��- �� F--�� lY�S� ��� ^Y-� lY<S� pS� d�� �- �� F--�� lY�S� ��� ^Y-� lY<S� pS� d�� �- �� F--�� lY�S� ��� ^Y-� lY<S� pS� d�� o- �� F--�� lY�S� ��� ^Y-� lY<S� pS� d�� 9- �� F--�� lY�S� ��� ^Y-� lY<S� pS� d�� -�� B�    �   �   � � �    � � �   �  �   �   �   �   � �   � + ,   �    �  	  �  
  � /   � ; 	  " �   j T | ] | ] | _ | _ | \ | \ | \ | \ | T | T | v } v } � } � } u } u } u } u } � � � � � � � � � � � � � � � � � � � � � � � � � �' �* �I �I �1 �1 �1 �1 �1 �] �` � � �g �g �g �g �g �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � �! �! �	 �	 �	 �	 �	 �5 �8 �W �W �? �? �? �? �? �k �n �� �� �u �u �u �u �u �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � �/ �/ � � � � � �C �F �e �e �M �M �M �M �M �y � � � �      �   #     *� 
�    �        � �   
   �  $    � �Y� ��� ��� ��� ��� ��� ��� ��
� ��� ��� ��� ��	� ��� �� j� �Y� ^Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� ^Y� �Y� ^Y�SY�SY�SY�SY�SY�S� �SY� �Y� ^Y�SY�SY�SY�SY�SY�S� �SS� � ű    �       � �    �  �   !     ɰ    �        � �        ����  - 
SourceFile /CFIDE/adminapi/websocket.cfc *cfwebsocket2ecfc1386832419$funcGETPROPERTY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - PROPERTYNAME / getVariable  (I)Lcoldfusion/runtime/Variable; 1 2 %coldfusion/runtime/ArgumentCollection 4
 5 3 _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; 7 8
  9 
	         ; _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V = >
   ? _setCurrentLineNo (I)V A B
   C 	component E CFIDE.adminapi.accessmanager G CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; I J coldfusion/runtime/CFPage L
 M K set (Ljava/lang/Object;)V O P coldfusion/runtime/Variable R
 S Q 
		 U _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; W X
   Y checkAdminRoles [ java/lang/Object ] coldfusion.serversettings _ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; a b
   c 	
			 e 	__HTSWT_0 Lcoldfusion/util/FastHashtable; g h	  i java/lang/String k _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; m n
   o _String &(Ljava/lang/Object;)Ljava/lang/String; q r coldfusion/runtime/Cast t
 u s Trim &(Ljava/lang/String;)Ljava/lang/String; w x
 M y __caseValue 4(Lcoldfusion/util/FastHashtable;Ljava/lang/Object;)I { |
   } 	VARIABLES  WEBSOCKETSERVICE � _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
   � isWebSocketServiceEnabled � isProxyEnabled � isNormalPortListenerEnabled � getPort � getMaxFrameSize � isFlashFallBackEnabled � isClusterEnabled � getMulticastPort � isSSLEnabled � 
getSSLPort � getKeyStorePath � getKeyStorePassword � coldfusion/runtime/SwitchTable �
 � 	 ENABLESECUREWEBSOCKET � addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable; � �
 � � MULTICASTPORT � PORT � ENABLEWEBSOCKETSERVER � ENABLENORMALPORTLISTENER � STARTFLASHPOLICYSERVER � KEYSTOREPATH � MAXDATASIZE � ENABLEPROXYPORT � KEYSTOREPASSWORD � SSLPORT � ENABLEWEBSOCKETCLUSTER � getProperty � metaData Ljava/lang/Object; � �	  � any � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � 2Returns the value of a WebSocket property setting. � 
Parameters � REQUIRED � Yes � HINT ��<br><br>Valid Properties are:
			<UL>
			<LI>EnableWebSocketServer</LI>
			<LI>EnableProxyPort</LI>
            <LI>EnableNormalPortListener</LI>
			<LI>Port</LI>
			<LI>MaxDataSize</LI>
			<LI>StartFlashPolicyServer</LI>
			<LI>EnableWebSocketCluster</LI>
			<LI>MulticastPort</LI>
			<LI>EnableSecureWebSocket</LI>
			<LI>SSLPort</LI>
			<LI>KeyStorePath</LI>
			<LI>KeyStorePassword</LI>            
			</UL> � NAME � propertyName � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this ,Lcfwebsocket2ecfc1386832419$funcGETPROPERTY; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       g h    � �   	  � �  �   "     � ð    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     Ű    �        � �    � �  �   (     
� lY0S�    �       
 � �    � �  �  �    �+� � :+� ,� :	+� :
-� $� *:-� .:*0� 6� ::-<� @
-/� D-FH� N� T-V� @-0� D--
� Z\� ^Y`S� dW-f� @� j-4� D-� lY0S� p� v� z� ~�     �          @   c   �   �   �   �    5  X  {  �  �-7� D--�� lY�S� ��� ^� d���-;� D--�� lY�S� ��� ^� d��a-?� D--�� lY�S� ��� ^� d��>-C� D--�� lY�S� ��� ^� d��-G� D--�� lY�S� ��� ^� d�� �-K� D--�� lY�S� ��� ^� d�� �-O� D--�� lY�S� ��� ^� d�� �-S� D--�� lY�S� ��� ^� d�� �-W� D--�� lY�S� ��� ^� d�� l-Z� D--�� lY�S� ��� ^� d�� I-]� D--�� lY�S� ��� ^� d�� &-`� D--�� lY�S� ��� ^� d�� -V� @�    �   z   � � �    � � �   � � �   � � �   � � �   � �    � �   � + ,   �    �  	  �  
  � /   � p    D / M / M / O / O / L / L / L / L / D / D / f 0 f 0 t 0 t 0 e 0 e 0 e 0 e 0 � 4 � 4 � 4 � 4 � 4 � 4 � 6 � 7 � 7 � 7 � 7 � 7 8 : ; ; ; ; ;' <* >0 ?0 ?0 ?0 ?0 ?J @M BS CS CS CS CS Cm Dp Fv Gv Gv Gv Gv G� H� J� K� K� K� K� K� L� N� O� O� O� O� O� P� R� S� S� S� S� S� T� V W W W W W X Y% Z% Z% Z% Z% Z? [B \H ]H ]H ]H ]H ]b ^e _k `k `k `k `k `� a � 4 � 1     �   #     *� 
�    �        � �      �   �     ٻ �Y� ��� ��� ��� ��� ��� ��� ��
� ��� ��� ��� ��	� ��� �� j� �Y� ^Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� ^Y� �Y� ^Y�SY�SY�SY�SY�SY�S� �SS� � ñ    �       � � �    �  �   !     ǰ    �        � �        ����  - � 
SourceFile /CFIDE/adminapi/websocket.cfc cfwebsocket2ecfc1386832419  coldfusion/runtime/CFComponent  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   REQUEST Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   FACTORY   	   com.macromedia.SourceModTime  h���� pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	  # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	  - Cp1252 / setPageEncoding (Ljava/lang/String;)V 1 2 !coldfusion/runtime/NeoPageContext 4
 5 3 LOCALE 7 REQUEST.LOCALE 9 _setCurrentLineNo (I)V ; <
  = java ? java.util.Locale A CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; C D coldfusion/runtime/CFPage F
 G E 
getDefault I java/lang/Object K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
  O getLanguage Q checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V S T
  U 	VARIABLES W java/lang/String Y  coldfusion.server.ServiceFactory [ _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V ] ^
  _ WEBSOCKETSERVICE a _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; c d
  e getWebsocketService g setProperty Lcoldfusion/runtime/UDFMethod; *cfwebsocket2ecfc1386832419$funcSETPROPERTY k
 l 	 i j	  n SETPROPERTY p registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)V r s
  t getProperty *cfwebsocket2ecfc1386832419$funcGETPROPERTY w
 x 	 v j	  z GETPROPERTY | metaData Ljava/lang/Object; ~ 	  � &coldfusion/runtime/AttributeCollection � _implicitMethods Ljava/util/Map; � �	  � displayname � 	websocket � extends � base � hint � Manages websocket settings. � Name � 	Functions �	 l �	 x � 
Properties � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this Lcfwebsocket2ecfc1386832419; LocalVariableTable Code _setImplicitMethods (Ljava/util/Map;)V implicitMethods varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; 
getExtends ()Ljava/lang/String; registerUDFs runPage out Ljavax/servlet/jsp/JspWriter; value LineNumberTable _getImplicitMethods ()Ljava/util/Map; <clinit> 1                 i j    v j    ~    
 � �   	  � �  �   "     � ��    �        � �    � �  �   -     +� ��    �        � �      � �      �   Q     *+,� **+,� � **+,� � �    �         � �      � �     � �   � �  �   !     ��    �        � �    �   �   1     *q� o� u*}� {� u�    �        � �    � �  �  Z 	    �*� $� *L*� .N*� $0� 6**� 8:*� >**� >**� >*@B� HJ� L� PR� L� P� V*X� ZYS*� >*@\� H� `*X� ZYbS*� >***� � fh� L� P� `�    �   *    � � �     � � �    � �     � + ,  �   �     4  4  6  6  3  3  ,  ,  %  %  %  %  c  c  e  e  b  b  b  b  P  P  �  �          m  m        �   #     *� 
�    �        � �    � �  �   "     � ��    �        � �    �   �   � 	    v� lY� m� o� xY� y� {� �Y� LY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� LY� �SY� �SSY
�SY� LS� �� ��    �       v � �   �     V j V j \  \            