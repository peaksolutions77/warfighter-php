����  - 
SourceFile !/CFIDE/adminapi/accessmanager.cfc 0cfaccessmanager2ecfc1290200798$funcCANACCESSPAGE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ISADMINAPI  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - PAGE / string 1 getVariable  (I)Lcoldfusion/runtime/Variable; 3 4 %coldfusion/runtime/ArgumentCollection 6
 7 5 3coldfusion/tagext/validation/CFTypeValidatorFactory 9 STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ; <	 : = _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; ? @
  A 
		 C _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V E F
   G *coldfusion/runtime/TransientVariableHolder I &(Lcoldfusion/runtime/NeoPageContext;)V  K
 J L 
			 N FCONTEXT P _setCurrentLineNo (I)V R S
   T GetPageContext %()Lcoldfusion/runtime/NeoPageContext; V W coldfusion/runtime/CFPage Y
 Z X getFusionContext \ java/lang/Object ^ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; ` a
   b _set '(Ljava/lang/String;Ljava/lang/Object;)V d e
   f _get &(Ljava/lang/String;)Ljava/lang/Object; h i
   j 
isAdminAPI l set (Ljava/lang/Object;)V n o coldfusion/runtime/Variable q
 r p _isNull (Ljava/lang/Object;Z)Z t u
   v _Object (Z)Ljava/lang/Object; x y coldfusion/runtime/Cast {
 | z _boolean (Ljava/lang/Object;)Z ~ 
 | � isFlashRemoting � 
				 � setIsAdminAPI � coldfusion/runtime/CFBoolean � f_false Lcoldfusion/runtime/CFBoolean; � �	 � � t_true � �	 � � 

			
			 � SECURITY � canAccessPage � _autoscalarize � i
   � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � � coldfusion/runtime/NeoException �
 � � t0 [Ljava/lang/String; java/lang/String � ANY � � �	  � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I � �
 � � CFCATCH � bind � e
 J � unbind � 
 J � 			
			
			 � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
   � 
	 � metaData Ljava/lang/Object; � �	  � boolean � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � GIndicates whether or not the current user can access the specified page � 
Parameters � REQUIRED � true � TYPE � NAME � page � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 2Lcfaccessmanager2ecfc1290200798$funcCANACCESSPAGE; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t12 ,Lcoldfusion/runtime/TransientVariableHolder; t13 t14 #Lcoldfusion/runtime/AbortException; t15 Ljava/lang/Exception; __cfcatchThrowable2 Ljava/lang/Throwable; t17 t18 LineNumberTable !coldfusion/runtime/AbortException java/lang/Exception
 java/lang/Throwable <clinit> 	getOutput 1       � �    � �   	  � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     ��    �        � �    � �  �   (     
� �Y0S�    �       
 � �    � �  �  j    +� � :+� ,� :	+� :
-� $� *:-� .:*02� 8� >� B:-D� H� JY-� $� M:-O� H-Q-x� U--x� U-� []� _� c� g-O� H
-y� U--Q� km� _� c� s-O� H-Q� w�� }Y� �� W-z� U--Q� k�� _� c� �� 3-�� H-{� U--Q� k�� _Y� �S� cW-O� H� <-Q� w�� 0-�� H-}� U--Q� k�� _Y� �S� cW-O� H-�� H- �� U--�� k�� _Y-0� �S� c:� n�-D� H� `� �:�:� �:� �� ��      3           �� �-O� H�-D� H� �� � E:� �:� �-�� H- �� U--Q� k�� _Y-
� �S� cW-D� H�-�� H�  Tj~	p{~	 Tj�p{� Tj�p{�~�����  �   �    � �     � �    � �    � �    � �    � �    � �    + ,     �     � 	    � 
   / �    � �    � �    �              �   6 M   u l x l x e x e x e x e x \ x \ x � y � y � y � y � y � y � y � y � y � z � z � z � z � z � z � z � z � z � z � z � z � z � z � z � z � { � { � { � { � { � { � { � { | | | | | |" }" }0 }0 }! }! }! }! } | � zP �P �^ �^ �O �O �O �O �O �� �� �� �� �� �� �� �� �� � G w     �   #     *� 
�    �        � �      �   �     �� �Y�S� �� �Y� _Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� _Y� �Y� _Y�SY�SY�SY2SY�SY�S� �SS� � ��    �       � � �    �  �   !     °    �        � �        ����  -$ 
SourceFile !/CFIDE/adminapi/accessmanager.cfc 5cfaccessmanager2ecfc1290200798$funcCHECKROOTADMINUSER  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ISADMINAPI  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - 
		 / _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 1 2
   3 *coldfusion/runtime/TransientVariableHolder 5 &(Lcoldfusion/runtime/NeoPageContext;)V  7
 6 8 
			 : FCONTEXT < _setCurrentLineNo (I)V > ?
   @ GetPageContext %()Lcoldfusion/runtime/NeoPageContext; B C coldfusion/runtime/CFPage E
 F D getFusionContext H java/lang/Object J _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; L M
   N _set '(Ljava/lang/String;Ljava/lang/Object;)V P Q
   R _get &(Ljava/lang/String;)Ljava/lang/Object; T U
   V 
isAdminAPI X set (Ljava/lang/Object;)V Z [ coldfusion/runtime/Variable ]
 ^ \ _isNull (Ljava/lang/Object;Z)Z ` a
   b _Object (Z)Ljava/lang/Object; d e coldfusion/runtime/Cast g
 h f _boolean (Ljava/lang/Object;)Z j k
 h l isFlashRemoting n 
				 p setIsAdminAPI r coldfusion/runtime/CFBoolean t f_false Lcoldfusion/runtime/CFBoolean; v w	 u x t_true z w	 u { 

			 } SECURITY  isRootAdminUser � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
   � coldfusion/tagext/lang/ThrowTag � cfthrow � message � INVALIDUSER � _autoscalarize � U
   � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 h � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
   � 
setMessage (Ljava/lang/String;)V � �
 � � cfadminapiSecurityError � setType � �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 	_emptyTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
   � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � � coldfusion/runtime/NeoException �
 � � t0 [Ljava/lang/String; java/lang/String � ANY � � �	  � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I � �
 � � CFCATCH � bind � Q
 6 � unbind � 
 6 � 			
			
			 � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
   � 
	 � checkRootAdminUser � metaData Ljava/lang/Object; � �	  � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint � MChecks whether the current user is the root admin user, else throws an error. � 
Parameters � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 7Lcfaccessmanager2ecfc1290200798$funcCHECKROOTADMINUSER; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t11 ,Lcoldfusion/runtime/TransientVariableHolder; throw5 !Lcoldfusion/tagext/lang/ThrowTag; t13 t14 #Lcoldfusion/runtime/AbortException; t15 Ljava/lang/Exception; __cfcatchThrowable1 Ljava/lang/Throwable; t17 t18 LineNumberTable !coldfusion/runtime/AbortException java/lang/Exception java/lang/Throwable  <clinit> 	getOutput 1       � �    � �    � �     � �  �   "     � ߰    �        � �    � �  �   !     ۰    �        � �    � �  �         �    �        � �    �   �   #     � °    �        � �     �  �    W+� � :+� ,� :	+� :
-� $� *:-� .:-0� 4� 6Y-� $� 9:-;� 4-=-`� A--`� A-� GI� K� O� S-;� 4
-a� A--=� WY� K� O� _-;� 4-=� c�� iY� m� W-b� A--=� Wo� K� O� m� 3-q� 4-c� A--=� Ws� KY� yS� OW-;� 4� <-=� c�� 0-q� 4-e� A--=� Ws� KY� |S� OW-;� 4-~� 4-h� A--�� W�� K� O� m�� \-q� 4-� �� �� �:-i� A��-�� �� �� �� ��� �� �� �� :� v�-;� 4-0� 4� `� �:�:� �:� Ƹ ʪ      3           �� �-;� 4�-0� 4� �� � D:� �:� �-Զ 4-p� A--=� Ws� KY-
� �S� OW-0� 4�-ٶ 4�  A����� A����� A�!��!�	!!  �   �   W � �    W   W �   W   W	   W
   W �   W + ,   W    W  	  W  
  W   W   W �   W   W   W   W   W �   R T   ^ Y ` Y ` R ` R ` R ` R ` I ` I ` q a z a z a y a y a y a y a q a q a � b � b � b � b � b � b � b � b � b � b � b � b � b � b � b � b � c � c � c � c � c � c � c � c � d � d � d � d � d � d e e e e e e e e � d � b< h< h; h; h; h; h; h; hv iv iv iv i� i� i[ i; h� l* p* p8 p8 p) p) p) p) p 4 _     �   #     *� 
�    �        � �   "   �   z     \�� �� �� �Y�S� ƻ �Y
� KY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� KS� �� ߱    �       \ � �   # �  �   !     �    �        � �        ����  -� 
SourceFile !/CFIDE/adminapi/accessmanager.cfc 2cfaccessmanager2ecfc1290200798$funcCHECKADMINROLES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ISROOT  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
ISADMINAPI  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / get (I)Ljava/lang/Object; 1 2 %coldfusion/runtime/ArgumentCollection 4
 5 3 REQUIREDROLES 7   9 put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; ; <
 5 = getVariable  (I)Lcoldfusion/runtime/Variable; ? @
 5 A CHECKALLROLES C true E boolean G 3coldfusion/tagext/validation/CFTypeValidatorFactory I BOOL_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; K L	 J M _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; O P
  Q 
		
		 S _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V U V
 " W *coldfusion/runtime/TransientVariableHolder Y &(Lcoldfusion/runtime/NeoPageContext;)V  [
 Z \ 
			 ^ FCONTEXT ` _setCurrentLineNo (I)V b c
 " d GetPageContext %()Lcoldfusion/runtime/NeoPageContext; f g coldfusion/runtime/CFPage i
 j h getFusionContext l java/lang/Object n _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; p q
 " r _set '(Ljava/lang/String;Ljava/lang/Object;)V t u
 " v _get &(Ljava/lang/String;)Ljava/lang/Object; x y
 " z 
isAdminAPI | set (Ljava/lang/Object;)V ~  coldfusion/runtime/Variable �
 � � _isNull (Ljava/lang/Object;Z)Z � �
 " � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � isFlashRemoting � 
				 � setIsAdminAPI � coldfusion/runtime/CFBoolean � f_false Lcoldfusion/runtime/CFBoolean; � �	 � � t_true � �	 � � 

			
			 � SECURITY � isRootAdminUser � _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
 " � arguments.requiredRoles � 	IsDefined (Ljava/lang/String;)Z � �
 j � � y
 " � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � jrun � ListContains '(Ljava/lang/String;Ljava/lang/String;)I � �
 j � � 2
 � � _compare (Ljava/lang/Object;D)D � �
 " � 
standalone � j2ee � 
enterprise � standard � windows � unix � 
		
			
			 � isAdminUser � admin � IsUserInRole � �
 j � coldfusion.adminapi � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 " � coldfusion/tagext/lang/ThrowTag � cfthrow � message � INVALIDUSER � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 " � 
setMessage (Ljava/lang/String;)V � �
 � � cfadminapiSecurityError � setType � �
 � � 	errorcode � CFACCESSDENIED setErrorcode �
 � 	hasEndTag (Z)V coldfusion/tagext/GenericTag	

 	_emptyTag !(Ljavax/servlet/jsp/tagext/Tag;)Z
 " 

			
			 ROLE 
				
			 , bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;
 " java/util/StringTokenizer '(Ljava/lang/String;Ljava/lang/String;)V 
 	nextToken ()Ljava/lang/String;!"
# 
					
					% Trim &(Ljava/lang/String;)Ljava/lang/String;'(
 j) 
					+ 5jrun,standalone,j2ee,enterprise,standard,windows,unix- 
						/ CFLOOP1 checkRequestTimeout3 �
 "4 hasMoreTokens ()Z67
8 ISINROLE: 
		< unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;>? coldfusion/runtime/NeoExceptionA
B@ t0 [Ljava/lang/String; java/lang/StringF ANYHDE	 J findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)ILM
BN CFCATCHP bindR u
 ZS unbindU 
 ZV 			
			
			X 
	Z checkAdminRoles\ metaData Ljava/lang/Object;^_	 ` falseb &coldfusion/runtime/AttributeCollectiond namef accessh publicj outputl hintn ^Checks whether the current user is in the required administrative roles, else throws an error.p 
Parametersr REQUIREDt Nov DEFAULTx HINTz List of required roles.| NAME~ requiredRoles� ([Ljava/lang/Object;)V �
e� TYPE� checkAllRoles� getMetadata ()Ljava/lang/Object; this 4Lcfaccessmanager2ecfc1290200798$funcCHECKADMINROLES; LocalVariableTable Code getName 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t14 ,Lcoldfusion/runtime/TransientVariableHolder; t15 throw2 !Lcoldfusion/tagext/lang/ThrowTag; t17 t18 Ljava/lang/String; t19 t20 I t21 t22 Ljava/util/StringTokenizer; throw3 t24 t25 t26 t27 t28 t29 throw4 t31 t32 #Lcoldfusion/runtime/AbortException; t33 Ljava/lang/Exception; __cfcatchThrowable0 Ljava/lang/Throwable; t35 t36 LineNumberTable !coldfusion/runtime/AbortException� java/lang/Exception� java/lang/Throwable� <clinit> 	getOutput 1       � �   DE   ^_    �� �   "     �a�   �       ��   �" �   "     ]�   �       ��   �� �         �   �       ��   �� �   -     �GY8SYDS�   �       ��   �� �  �  %  p+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:� 6� 8:� >W� B:� 6� DF� >W*DH� B� N� R:-T� X� ZY-� &� ]:-_� X-a-� e--� e-� km� o� s� w-_� X- � e--a� {}� o� s� �-_� X-a� ��� �Y� �� W-!� e--a� {�� o� s� �� 3-�� X-"� e--a� {�� oY� �S� sW-_� X� <-a� ��� 0-�� X-$� e--a� {�� oY� �S� sW-_� X-�� X
-)� e--�� {�� o� s� �-_� X-
� �Y� ��PW-+� e-�� ��� �Y� ��7W-,� e-8� �� ��� �� ��� ��~�� �Y� �� )W--� e-8� �� �ĸ �� ��� ��~�� �Y� �� )W-.� e-8� �� �Ƹ �� ��� ��~�� �Y� �� )W-/� e-8� �� �ȸ �� ��� ��~�� �Y� �� )W-0� e-8� �� �ʸ �� ��� ��~�� �Y� �� )W-1� e-8� �� �̸ �� ��� ��~�� �Y� �� )W-2� e-8� �� �θ �� ��� ��~�� �� �� -�� X:��-_� X-ж X-
� �� ��� �Y� �� TW-8� e--�� {�� o� s� ��� �Y� �� W-8� e-Զ ��� �Y� �� W-8� e-ٶ ��� �� �� t-�� X-� �� �� �:-9� e��-� �� �� �� ��� �� -� �� �� ����� :�7�-_� X-� X-:� w-� X-D� �� ��a-�� X-8� �� �::6-+�:�Y� :��$:� �-&� X--A� e-� �� ��*� w-,� X-
� �� ��� �Y� �� 7W-
� �Y� �� )W-C� e.-� �� �� �� ��� ��~� �Y� �� W-D� e--� �� ��� �� �� ^-0� X-� �� �� �:-E� e��-� �� �� �� ��� ���� :���-,� X-�� X2�5`6�9���-_� X�>-�� X-;� �� w-�� X-8� �� �::6-+�:�Y� :� v�$:� �-,� X-K� e--K� e-� �� ��*� י +-0� X-;� �� w-0� X� (-,� X-�� X2�5`6�9���-�� X-;� �� ��� ]-,� X-� �� �� �:-Q� e��-� �� �� �� ��� ���� :� �-�� X-_� X-=� X� `� �:  �:!!�C:""�K�O�    3           Q"�T-_� X"�-=� X� !�� � F:#� #�:$�W-Y� X-Y� e--a� {�� oY-� �S� sW-=� X�$-[� X�  �������P��V������� �������P��V������� �"��"��P"�V�"���"��"�"'"� �  t %  p��    p��   p�_   p��   p��   p��   p�_   p - .   p �   p � 	  p � 
  p �   p 7�   p C�   p��   p�_   p��   p�_   p��   p��   p��   p��   p��   p��   p�_   p��   p��   p��   p��   p��   p��   p�_   p��    p�� !  p�� "  p�� #  p�_ $�  ^�    B  B  ^  ^  �  �  �  �  �  �  �  �  �   �   �   �   �   �   �   �   �   � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! " ", ", " " " " "? #? #? #? #? #? #Z $Z $h $h $Y $Y $Y $Y $? # � !� )� )� )� )� )� )� )� )� )� *� *� *� *� +� +� +� +� +� +� +� +� +� +� ,� ,� ,� ,� ,� ,� ,� ,� ,� ,� ,� ,� ,� ,� -� -� -� - - -� -� - - -� -� -� -� -� -� -� -� -* .* .* .* .3 .3 .* .* .; .; .* .* .* .* .� .� .� .� .W /W /W /W /` /` /W /W /h /h /W /W /W /W /� /� /� /� /� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 2� 2� 2� 2� 2� 2� 2� 2� 2� 2� 2� 2� 2� 2� 2� 2� 2� 2� ,� ,� ,� ,� +� + 3� *$ 7$ 7$ 7$ 7$ 7$ 7$ 7$ 7A 8A 8@ 8@ 8@ 8@ 8@ 8@ 8@ 8@ 8g 8g 8f 8f 8f 8f 8f 8f 8f 8f 8@ 8@ 8@ 8@ 8� 8� 8 8 8 8 8 8 8 8 8@ 8@ 8@ 8@ 8$ 8$ 8� 9� 9� 9� 9� 9� 9� 9� 9� 9� 9� 9$ 7 < < < <
 <
 < > >0 ?0 ?0 ?0 ?~ A~ A~ A~ A~ A~ A~ A~ At At A� B� B� B� B� B� B� B� B� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� C� D� D� D� D� D� D� D� D� D� D� D� D( E( E( E( E: E: E E� Bx ?0 ?� I� I� I� I� I� I� J� J� J� J� K� K� K� K� K� K� K� K L L L L L L  M� KE J� JP PP PP PP PP PP P� Q� Q� Q� Q� Q� Qh QP P� H >
 UA YA YO YO Y@ Y@ Y@ Y@ Y      �   #     *� 
�   �       ��   �  �       �ݸ � ��GYIS�K�eY
� oYgSY]SYiSYkSYmSYcSYoSYqSYsSY	� oY�eY� oYuSYwSYySY:SY{SY}SYSY�S��SY�eY� oYuSYwSY�SYHSYySYFSYSY�S��SS���a�   �       ���   �" �   "     c�   �       ��        ����  -D 
SourceFile !/CFIDE/adminapi/accessmanager.cfc cfaccessmanager2ecfc1290200798  coldfusion/runtime/CFComponent  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   CFACCESSDENIED Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   REQUEST   	   SECURITY   	    FACTORY " " 	  $ com.macromedia.SourceModTime  h���� pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/JspContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 Cp1252 7 setPageEncoding (Ljava/lang/String;)V 9 : !coldfusion/runtime/NeoPageContext <
 = ; set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A LOCALE E REQUEST.LOCALE G _setCurrentLineNo (I)V I J
  K java M java.util.Locale O CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; Q R coldfusion/runtime/CFPage T
 U S 
getDefault W java/lang/Object Y _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; [ \
  ] getLanguage _ checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V a b
  c  coldfusion.server.ServiceFactory e _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; g h
  i getSecurityService k 	VARIABLES m java/lang/String o 
LOCALEFILE q java/lang/StringBuilder s resources/adminapi_ u  :
 t w _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; y z
  { _String &(Ljava/lang/Object;)Ljava/lang/String; } ~ coldfusion/runtime/Cast �
 �  append -(Ljava/lang/String;)Ljava/lang/StringBuilder; � �
 t � .cfm � toString ()Ljava/lang/String; � �
 Z � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � "coldfusion/tagext/lang/ImportedTag � l10n � /CFIDE/adminapi/customtags � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � id � invalidUser � var � file � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � 9The current user is not authorized to invoke this method. � write � : java/io/Writer �
 � � doAfterBody � �
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � � #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � canAccessPage Lcoldfusion/runtime/UDFMethod; 0cfaccessmanager2ecfc1290200798$funcCANACCESSPAGE �
 � 	 � �	  � CANACCESSPAGE � registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)V � �
  � checkAdminRoles 2cfaccessmanager2ecfc1290200798$funcCHECKADMINROLES �
 � 	 � �	  � CHECKADMINROLES � checkRootAdminUser 5cfaccessmanager2ecfc1290200798$funcCHECKROOTADMINUSER �
 � 	 � �	  CHECKROOTADMINUSER metaData Ljava/lang/Object;	  _implicitMethods Ljava/util/Map;	
	  name accessmanager displayname Access Manager hint kProvides functions to check  whether the current user has the access rights required for invoking functions Name 	Functions	 �	 �	 � 
Properties  getMetadata ()Ljava/lang/Object; this  Lcfaccessmanager2ecfc1290200798; LocalVariableTable Code _setImplicitMethods implicitMethods varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; registerUDFs runPage out Ljavax/servlet/jsp/JspWriter; value module1 $Lcoldfusion/tagext/lang/ImportedTag; mode1 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 LineNumberTable java/lang/Throwable? _getImplicitMethods ()Ljava/util/Map; <clinit> 1     
                 "     � �    � �    � �    � �      
	
    "# '   "     ��   &       $%   ( � '   -     +��   &       $%     )
     '   i     7*+,� **+,� � **+,� � **+,� � !**#+,� � %�   &        7$%     7*+    7,-  .  '   ;     *� � �*�� �� �*�� ��   &       $%   /# '  [    �*� ,� 2L*� 6N*� ,8� >*� � D**� FH*� L**� L**� L*NP� VX� Z� ^`� Z� ^� d*� %*� L*Nf� V� D*� !*� L***� %� jl� Z� ^� D*n� pYrS� tYv� x*� pYFS� |� �� ��� �� �� �*� �-� �� �:*� L���� �� �Y� ZY�SY�SY�SY�SY�SY*n� pYrS� |S� �� �� �� �Y6� 5*+� �L+϶ �� ך��� � :� �:*+� �L�� �� :� #�� � #:		� � � :
� 
�:� �� /JM@MRM@$my@svy@$m�@sv�@y��@���@ &   z   �$%    �01   �2   � 3 4   �34   �56   �78   �9   �:   �;8 	  �<8 
  �= >   � ;  
  
  
  
  
  
   =  =  ?  ?  <  <  5  5  .  .  .  .  d  d  f  f  c  c  c  c  Y  y  y  x  x  x  x  n  �  �  �  �  �  �  �  �  �  �  �  �  �  Y  �  �  �  �      �       '   #     *� 
�   &       $%   AB '   "     ��   &       $%   C  '   � 	    ��� �� �� �Y� � � �Y� �� �� �Y� �� �Y� ZYSYSYSYSYSYSYSYSYSY	� ZY�SY�SY�SSY
!SY� ZS� ���   &       �$%  >     q u q u w  w  } ^ } ^       &    '