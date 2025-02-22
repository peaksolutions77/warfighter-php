����  -` 
SourceFile +/CFIDE/administrator/security/pstrength.cfm cfpstrength2ecfm561600020  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   PASSWORD_STRONG Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   PASSWORD_VERY_WEAK   	   PASSWORD_WEAK   	    PASSWORD_VERY_STRONG " " 	  $ PASSWORD_TOO_SHORT & & 	  ( PASSWORD_UNSAFE * * 	  , PASSWORD_MEDIUM . . 	  0 com.macromedia.SourceModTime  h���2 pageContext #Lcoldfusion/runtime/NeoPageContext; 5 6	  7 getOut ()Ljavax/servlet/jsp/JspWriter; 9 : javax/servlet/jsp/JspContext <
 = ; parent Ljavax/servlet/jsp/tagext/Tag; ? @	  A Cp1252 C setPageEncoding (Ljava/lang/String;)V E F !coldfusion/runtime/NeoPageContext H
 I G (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag M forName %(Ljava/lang/String;)Ljava/lang/Class; O P java/lang/Class R
 S Q K L	  U _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; W X
  Y "coldfusion/tagext/lang/ImportedTag [ _setCurrentLineNo (I)V ] ^
  _ l10n a 
../cftags/ c admin e setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V g h
 \ i &coldfusion/runtime/AttributeCollection k java/lang/Object m id o password_very_weak q var s ([Ljava/lang/Object;)V  u
 l v setAttributecollection (Ljava/util/Map;)V x y  coldfusion/tagext/lang/ModuleTag {
 | z 	hasEndTag (Z)V ~  coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 | � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � 	Very Weak � write � F java/io/Writer �
 � � doAfterBody � �
 | � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � � #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 | � 	doFinally � 
 | � password_weak � Weak � password_medium � Medium � password_strong � Strong � password_very_strong � Very Strong � password_unsafe � Unsafe Password � password_too_short � 	Too Short �'

<script type="text/javascript">
/* jQuery Password Strength Plugin (pstrength) - A jQuery plugin to provide accessibility functions
 * Author: Tane Piper (digitalspaghetti@gmail.com) 
 * Website: http://digitalspaghetti.me.uk
 * Licensed under the MIT License: http://www.opensource.org/licenses/mit-license.php
 * This code uses a modified version of Steve Moitozo's algorithm (http://www.geekwisdom.com/dyn/passwdmeter)
 */
(function($){
	$.extend($.fn, {
		pstrength : function(options) {
			var options = $.extend({
				verdects:	[" � $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag � � L	  � coldfusion/tagext/io/OutputTag �
 � � _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � �
 � � coldfusion/tagext/QueryLoop �
 � �
 � �
 � � "," ��"],
				colors: 	["#f00","#c06", "#f60","#3c0","#3f0"],
				scores: 	[10,15,30,40],
				common:		["password","sex","god","123456","123","liverpool","letmein","qwerty","monkey"],
				minchar:	8
			},options);		
			return this.each(function(){
				var infoarea = $(this).attr('id');
				$(this).after('<div class="pstrength-info" id="' + infoarea + '_text"></div>');
				$(this).after('<div class="pstrength-bar" id="' + infoarea + '_bar" style="font-size: 1px; height: 2px; width: 0px;"></div>');
				$(this).keyup(function(){				
					$.fn.runPassword($(this).val(), infoarea, options);
				});
			});
		},
		runPassword : function (password, infoarea, options){
			// Check password
			nPerc = $.fn.checkPassword(password, options);
			// Get controls
	    	var ctlBar = "#" + infoarea + "_bar"; 
	    	var ctlText = "#" + infoarea + "_text";		
			// Color and text
			if (nPerc == -200) {
				strColor = '#f00';
				strText = ' � �';
				$(ctlBar).css({width: "0%"});
			}		
			else if (nPerc < 0 && nPerc > -199) {
				strColor = '#ccc';
				strText = ' �l';
				$(ctlBar).css({width: "1%"});
			}
			else if(nPerc <= options.scores[0])
			{
		   		strColor = options.colors[0];
				strText = options.verdects[0];
				$(ctlBar).css({width: "1%"});
			}
			else if (nPerc > options.scores[0] && nPerc <= options.scores[1])
			{
		   		strColor = options.colors[1];
				strText = options.verdects[1];
				$(ctlBar).css({width: "25%"});
			}
			else if (nPerc > options.scores[1] && nPerc <= options.scores[2])
			{
			   	strColor = options.colors[2];
				strText = options.verdects[2];
				$(ctlBar).css({width: "50%"});
			}
			else if (nPerc > options.scores[2] && nPerc <= options.scores[3])
			{
			   	strColor = options.colors[3];
				strText = options.verdects[3];
				$(ctlBar).css({width: "75%"});
			}
			else
			{
			   	strColor = options.colors[4];
				strText = options.verdects[4];
				$(ctlBar).css({width: "99%"});
			}
			$(ctlBar).css({backgroundColor: strColor});
			$(ctlText).html("<span style='color: " + strColor + ";'>" + strText + "</span>");
		},
		checkPassword : function(password, options)
		{
			var intScore = 0;
			var strVerdict = options.verdects[0];	
			// PASSWORD LENGTH
			if (password.length < options.minchar)                         // Password too short
			{
				intScore = (intScore - 100)
			}
			else if (password.length >= options.minchar && password.length <= (options.minchar + 2)) // Password Short
			{
				intScore = (intScore + 6)
			}
			else if (password.length >= (options.minchar + 3) && password.length <= (options.minchar + 4))// Password Medium
			{
				intScore = (intScore + 12)
			}
			else if (password.length >= (options.minchar + 5))                    // Password Large
			{
				intScore = (intScore + 18)
			}
			if (password.match(/[a-z]/))                              // [verified] at least one lower case letter
			{
				intScore = (intScore + 1)
			}
			if (password.match(/[A-Z]/))                              // [verified] at least one upper case letter
			{
				intScore = (intScore + 5)
			}
			// NUMBERS
			if (password.match(/\d+/))                                 // [verified] at least one number
			{
				intScore = (intScore + 5)
			}
			if (password.match(/(.*[0-9].*[0-9].*[0-9])/))             // [verified] at least three numbers
			{
				intScore = (intScore + 7)
			}
			// SPECIAL CHAR
			if (password.match(/.[!,@,#,$,%,^,&,*,?,_,~]/))            // [verified] at least one special character
			{
				intScore = (intScore + 5)
			}
			// [verified] at least two special characters
			if (password.match(/(.*[!,@,#,$,%,^,&,*,?,_,~].*[!,@,#,$,%,^,&,*,?,_,~])/))
			{
				intScore = (intScore + 7)
			}
			// COMBOS
			if (password.match(/([a-z].*[A-Z])|([A-Z].*[a-z])/))        // [verified] both upper and lower case
			{
				intScore = (intScore + 2)
			}
			if (password.match(/([a-zA-Z])/) && password.match(/([0-9])/)) // [verified] both letters and numbers
			{
				intScore = (intScore + 3)
			}
		 	// [verified] letters, numbers, and special characters
			if (password.match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/))
			{
				intScore = (intScore + 3)
			}
			for (var i=0; i < options.common.length; i++) {
				if (password.toLowerCase() == options.common[i]) {
					intScore = -200;
				}
			}
			return intScore;
		}
	});
})(jQuery);
</script> � metaData Ljava/lang/Object; � �	  � 	Functions � 
Properties � getMetadata ()Ljava/lang/Object; this Lcfpstrength2ecfm561600020; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value module0 $Lcoldfusion/tagext/lang/ImportedTag; mode0 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module1 mode1 t14 t15 t16 t17 t18 t19 module2 mode2 t22 t23 t24 t25 t26 t27 module3 mode3 t30 t31 t32 t33 t34 t35 module4 mode4 t38 t39 t40 t41 t42 t43 module5 mode5 t46 t47 t48 t49 t50 t51 module6 mode6 t54 t55 t56 t57 t58 t59 output7  Lcoldfusion/tagext/io/OutputTag; mode7 t62 t63 t64 t65 output8 mode8 t68 t69 t70 t71 output9 mode9 t74 t75 t76 t77 output10 mode10 t80 t81 t82 t83 output11 mode11 t86 t87 t88 t89 output12 mode12 t92 t93 t94 t95 output13 mode13 t98 t99 t100 t101 LineNumberTable java/lang/Throwable] <clinit> 1     
                 "     &     *     .     K L    � L    � �     � �  �   "     � �    �        � �       �   �     [*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1�    �        [ � �     [ � �    [ � �   � �  �    f  �*� 8� >L*� BN*� 8D� J*� V-� Z� \:*� `bdf� j� lY� nYpSYrSYtSYrS� w� }� �� �Y6� 5*+� �L+�� �� ����� � :� �:*+� �L�� �� :� #�� � #:		� �� � :
� 
�:� ��*� V-� Z� \:*� `bdf� j� lY� nYpSY�SYtSY�S� w� }� �� �Y6� 5*+� �L+�� �� ����� � :� �:*+� �L�� �� :� #�� � #:� �� � :� �:� ��*� V-� Z� \:*� `bdf� j� lY� nYpSY�SYtSY�S� w� }� �� �Y6� 5*+� �L+�� �� ����� � :� �:*+� �L�� �� :� #�� � #:� �� � :� �:� ��*� V-� Z� \:*� `bdf� j� lY� nYpSY�SYtSY�S� w� }� �� �Y6� 5*+� �L+�� �� ����� � :� �:*+� �L�� �� : � # �� � #:!!� �� � :"� "�:#� ��#*� V-� Z� \:$*� `$bdf� j$� lY� nYpSY�SYtSY�S� w� }$� �$� �Y6%� 5*$%+� �L+�� �$� ����� � :&� &�:'*%+� �L�'$� �� :(� #(�� � #:)$)� �� � :*� *�:+$� ��+*� V-� Z� \:,*� `,bdf� j,� lY� nYpSY�SYtSY�S� w� },� �,� �Y6-� 5*,-+� �L+�� �,� ����� � :.� .�:/*-+� �L�/,� �� :0� #0�� � #:1,1� �� � :2� 2�:3,� ��3*� V-� Z� \:4*	� `4bdf� j4� lY� nYpSY�SYtSY�S� w� }4� �4� �Y65� 5*45+� �L+�� �4� ����� � :6� 6�:7*5+� �L�74� �� :8� #8�� � #:949� �� � ::� :�:;4� ��;+�� �*� �-� Z� �:<*� `<� �<� �Y6=� +**� � ˸ Ѷ �<� Қ��<� �� :>� #>�� � #:?<?� ֨ � :@� @�:A<� שA+ٶ �*� �-� Z� �:B*� `B� �B� �Y6C� +**� !� ˸ Ѷ �B� Қ��B� �� :D� #D�� � #:EBE� ֨ � :F� F�:GB� שG+ٶ �*� �	-� Z� �:H*� `H� �H� �Y6I� +**� 1� ˸ Ѷ �H� Қ��H� �� :J� #J�� � #:KHK� ֨ � :L� L�:MH� שM+ٶ �*� �
-� Z� �:N*� `N� �N� �Y6O� +**� � ˸ Ѷ �N� Қ��N� �� :P� #P�� � #:QNQ� ֨ � :R� R�:SN� שS+ٶ �*� �-� Z� �:T*� `T� �T� �Y6U� +**� %� ˸ Ѷ �T� Қ��T� �� :V� #V�� � #:WTW� ֨ � :X� X�:YT� שY+۶ �*� �-� Z� �:Z*.� `Z� �Z� �Y6[� +**� -� ˸ Ѷ �Z� Қ��Z� �� :\� #\�� � #:]Z]� ֨ � :^� ^�:_Z� ש_+ݶ �*� �-� Z� �:`*3� ``� �`� �Y6a� +**� )� ˸ Ѷ �`� Қ��`� �� :b� #b�� � #:c`c� ֨ � :d� d�:e`� שe+߶ �� b j � �^ � � �^ _ � �^ � � �^ _ � �^ � � �^ � � �^ � � �^(CF^FKF^fr^lor^f�^lo�^r~�^���^�^	^�$0^*-0^�$?^*-?^0<?^?D?^���^���^���^���^���^���^���^��^d�^���^Y��^���^Y��^���^���^���^#>A^AFA^am^gjm^a|^gj|^my|^|�|^��^^�!-^'*-^�!<^'*<^-9<^<A<^n��^���^n��^���^���^���^�#^ #^�2^ 2^#/2^272^d��^���^d��^���^���^���^�^^�(^(^%(^(-(^Z��^���^Z��^���^���^���^�^	^�^	^^#^P~�^���^P~�^���^���^���^  �  � f  � � �    � � �   � � �   � ? @   � � �   � � �   � � �   � � �   � � �   � � � 	  � � � 
  �  �   � �   � �   � �   � �   � �   � �   � �   � �   �	 �   �
 �   � �   � �   � �   � �   � �   � �   � �   � �   � �   � �   � �    � � !  � � "  � � #  � � $  � � %  � � &  � � '  � � (  � � )  � � *  �  � +  �! � ,  �" � -  �# � .  �$ � /  �% � 0  �& � 1  �' � 2  �( � 3  �) � 4  �* � 5  �+ � 6  �, � 7  �- � 8  �. � 9  �/ � :  �0 � ;  �12 <  �3 � =  �4 � >  �5 � ?  �6 � @  �7 � A  �82 B  �9 � C  �: � D  �; � E  �< � F  �= � G  �>2 H  �? � I  �@ � J  �A � K  �B � L  �C � M  �D2 N  �E � O  �F � P  �G � Q  �H � R  �I � S  �J2 T  �K � U  �L � V  �M � W  �N � X  �O � Y  �P2 Z  �Q � [  �R � \  �S � ]  �T � ^  �U � _  �V2 `  �W � a  �X � b  �Y � c  �Z � d  �[ � e\  > O   F  F  P  P        � � � � � � � � � � P @ @ J J  � � 	 	 � � 	� 	� 	� 	� 	z z z z y S � � � � � � p p p p o I � � � � � � f f f f e ? � .� .� .� .� .� .\ 3\ 3\ 3\ 3[ 35 3       �   #     *� 
�    �        � �   _   �   U     7N� T� V¸ T� Ļ lY� nY�SY� nSY�SY� nS� w� �    �       7 � �         2    3