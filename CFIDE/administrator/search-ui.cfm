����  -p 
SourceFile "/CFIDE/administrator/search-ui.cfm cfsearch2dui2ecfm427204720  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   REQUEST Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   	SCRIPTSRC   	   com.macromedia.SourceModTime  h���  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	  # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	  - Cp1252 / setPageEncoding (Ljava/lang/String;)V 1 2 !coldfusion/runtime/NeoPageContext 4
 5 3 $class$coldfusion$tagext$io$SilentTag Ljava/lang/Class; coldfusion.tagext.io.SilentTag 9 forName %(Ljava/lang/String;)Ljava/lang/Class; ; < java/lang/Class >
 ? = 7 8	  A _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; C D
  E coldfusion/tagext/io/SilentTag G _setCurrentLineNo (I)V I J
  K 	hasEndTag (Z)V M N coldfusion/tagext/GenericTag P
 Q O 
doStartTag ()I S T
 H U 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; W X
  Y 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag \ [ 8	  ^ !coldfusion/tagext/lang/IncludeTag ` auditlog.cfm b setTemplate d 2
 a e _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z g h
  i LOCALE k REQUEST.LOCALE m en o checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V q r
  s java/lang/String u 
LOCALEFILE w java/lang/StringBuilder y resources/settings_ {  2
 z } _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;  �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder; � �
 z � .cfm � toString ()Ljava/lang/String; � � java/lang/Object �
 � � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � doAfterBody � T
 Q � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � T #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 Q � 	doFinally � 
 Q � 

<html>
<head>
 � write � 2 java/io/Writer �
 � � 
styles.cfm � $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag � � 8	  � coldfusion/tagext/io/OutputTag �
 � U 
<script src=" � _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � "ajax/jquery/jquery.js"></script>
 �
 � � coldfusion/tagext/QueryLoop �
 � �
 � �
 � � 

 � _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V � �
  � (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag � � 8	  � "coldfusion/tagext/lang/ImportedTag � l10n � cftags/ � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � id � in � var � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � �
 � U &nbsp;in&nbsp; �
 � �
 � �
 � �f

	<script>

		window.addEventListener("message",getSearchWords,false);

		var search_result_highlight = -1;
		
		function doesLocalStorageExists(){
			var mod = 'modernizr';
			try {
				localStorage.setItem(mod, mod);
				localStorage.removeItem(mod);
				return true;
			} catch(e) {
				return false;
			}
		}

		function getSearchWords(event){
			var url = window.location.href;
			var arr = url.split("/");
			var url = arr[0] + "//" + arr[2];
			var search_keywords = '';
			if(url == event.origin){
				if(doesLocalStorageExists()){
					var temp = localStorage.getItem('cf_search');
					if(temp != null){
						search_keywords = temp;
					}
					localStorage.removeItem('cf_search');
				}
				var contentIframe = window.parent.document.getElementById("content-iframe").contentWindow;
				contentIframe.postMessage(search_keywords,url);
			}
			$("#search-text").val('');
			$("#search-table").empty();
		}

		var listener = function(event) {
			if(event.keyCode == 40){
				// down arrow
				search_result_highlight++;
				highlightResult();
			} else if(event.keyCode == 38){
				// up arrow
				search_result_highlight--;
				highlightResult();
			} else if(event.keyCode == 13){
				document.getElementsByClassName("search-tr")[search_result_highlight].firstChild.firstChild.click();
			} else if(event.keyCode == 27){
				localStorage.setItem('cf_search', '');
				toggleSearchUi(false);
			}
			if(search_result_highlight < -1)
				search_result_highlight = -1;
			if(search_result_highlight > document.getElementsByClassName("search-tr").length)
				search_result_highlight = document.getElementsByClassName("search-tr").length;

			window.parent.keyDownListener(event);
		};

		var keylistener = function(event){
			window.parent.keyUpListener(event);
		}

		function highlightResult(){
			var elements = document.getElementsByClassName("search-tr");
			for(var i=0; i<elements.length; i++){
				if(search_result_highlight == i){
					elements[i].className = "search-tr selected";
				} else {
					elements[i].className = "search-tr";
				}
			}
		}

		function activateSearch(){
			window.addEventListener('keydown', listener, false);
			window.addEventListener('keyup', keylistener, false);
			$("#search-text").focus();
		}

		function toggleSearchUi(value){
			$("#search-text").blur();
			window.parent.toggleSearchUi(value);
		}

		var fetchCategory = 'All';
		var tempArray = [];
		$(document).ready(function(){

			$(document).on("click", ".link-value",function(data){
				window.parent.iframeLink(data.currentTarget.attributes.getNamedItem('dataset-link').value);
			});

			$("#search-container").click(function(e){
				if(e.target.id == "search-container"){
					toggleSearchUi(false);
					localStorage.setItem('cf_search', '');
				}
			});

			$("#close-icon").click(function(e){
				toggleSearchUi(false);
				localStorage.setItem('cf_search', '');
			});

			$("#search-results").click("a",function(e){
				if(e.target.className == "cat" || e.target.className == "subcat" || (e.srcElement && e.srcElement.tagName == "A") || e.target.firstChild.className == "subcat"){
					window.removeEventListener('keydown', listener, false);
					toggleSearchUi(false);
					$("#search-text").blur();
				}
			});

			//Make a request to get the categories of the left nav
			$.ajax({url: " � THISURL ��search.cfm", success: function(result){
				var categories = [],tempCategories=[];
        		var temp = JSON.parse(result);
        		var i=0,j=0;
        		while(i<temp.length){
        			tempCategories.push(temp[i].CATEGORY);
        			tempArray.push(temp[i]);
        			i++;
        		}
        		//Get initial layout when no search term is entered
    			createLandingPage("All");
        		$.each(tempCategories, function(i, el){
    				if($.inArray(el, categories) === -1) categories.push(el);
				});
				
				var option = '';
				option += '<li class="option">' + 'All' + '</li>';
				for(var i=0; i<categories.length; i++){
					option += '<li class="option">' + categories[i] + '</li>';
				}
				$("#list").append(option);
    		}});

    		$("#button-categories").click(function(){
    			//$("#button-categories").toggleClass('active');
    			//$("#list").slideToggle(200);
    		});

    		$("#search-arrow-container").click(function(){
    			//$("#button-categories").toggleClass('active');
    			//$("#list").slideToggle(200);
    		});

    		//onClick for each li
    		$("#list").click(function(event){
    			fetchCategory = event.target.innerHTML;
    			$("#button-categories").toggleClass('active');
    			$("#list").slideToggle(200);
    			$("#button-categories").html(fetchCategory);
    			var keywords = $("#search-text").val();
    			if(keywords == '')
    				createLandingPage(fetchCategory);
    			else
    				createSearchResults();

    		});

    		//On focus of text box, drop down should disappear.
    		$("#search-text").focus(function(){
    			if($("#list").is(":visible")){
    				$("#list").slideToggle(200);
    			}
    		});
    		$("#search-table").hover(function(){
    			search_result_highlight = -1;
    			highlightResult();
    		});
    		//write function to send the request, get response and fill the table
    		$("#search-text").keyup(function(event){
    			if(event.keyCode != 38 && event.keyCode != 40){
    				createSearchResults();
    			}
    		});

    		function createSearchResults(){
    			if(search_result_highlight > -1)
    				search_result_highlight = -1;
    			highlightResult();
    			var URL = " ��search.cfm";
				var keywords = $("#search-text").val();
				if(keywords != ""){
					URL = URL + '?keywords=' + keywords;
    				if(fetchCategory != 'All')
    					URL = URL + '&category=' + fetchCategory;
					$.ajax({url: URL, success: function(result){
						$("#search-table").empty();
						try {
					        JSON.parse(result);
					    } catch (e) {
					        window.parent.location =" � �login.cfm";
					    }
						var temp = JSON.parse(result);
						var table = '';
						var length = temp.length;
						if(length >= 10)
							length = 10;
						for(var i=0; i<length; i++){
							b
							table = table + '<tr class="search-tr"><td class="search-td" width="100%"><a href="javascript:void(0)" dataset-link="'+temp[i].LINK+'" class="link-value" onClick="return false;"><div style="width: 100%;"><span class="subcat">'+temp[i].SUBCATEGORY+'</span><span class="cat">&nbsp;in&nbsp;'+temp[i].CATEGORY+'</span></div></a></td></tr>';
							�
						}
						$("#search-table").append(table);
						if(doesLocalStorageExists()){
							localStorage.setItem('cf_search',$("#search-text").val());
						}
    				}});
				}
				else{
					createLandingPage(fetchCategory);
				}
    		}

			function createLandingPage(category){
				category = category.replace(/&amp;/g, '&');
				var categories = {};
				for(var i=0; i<tempArray.length; i++){
					if(categories[tempArray[i].CATEGORY] == undefined)
						categories[tempArray[i].CATEGORY] = [];	
					categories[tempArray[i].CATEGORY].push(tempArray[i]);
				}
				var landingPage='';
				landingPage += '<div id="landing-background">';
				if(category == 'All'){
					for(var i in categories){
						landingPage += '<div id="landing-category-body"><span id="landing-category">'+i+'</span><div id="category-contents">'
						for(var j=0; j<categories[i].length; j++){
							landingPage += '<div id="subcategory"><a href="'+categories[i][j].LINK+'" target="content">'+categories[i][j].SUBCATEGORY+'</a></div>';
						}
						landingPage += '<hr>';
						landingPage += '</div></div>';
					}
				}
				else{
					for(var i in categories){
						if(i == category){
							landingPage += '<div id="landing-category-body"><span id="landing-category">'+i+'</span><div id="category-contents">'
							for(var j=0; j<categories[i].length; j++){
								landingPage += '<div id="subcategory"><a href="'+categories[i][j].LINK+'" target="content">	'+categories[i][j].SUBCATEGORY+'</a></div>';
							}
						}
						landingPage += '<div></div>';
					}
				}
				landingPage += '</div>';
				$("#search-table").empty();
				// $("#search-results").append(landingPage);
			}
		});
	</script>
</head>

<body>
<div id="search-container">
<div id="search-area">
	<div id="first-row" style="display:inline-block; vertical-align:middle; width: 95%;">
	<ul id="list">
	</ul>
	<input type="text" id="search-text" placeholder="What are you looking for?"></input>
	 T<div style="height: 30px; display: inline-block; vertical-align: middle;"><img src=" images/search.png"></div><div>	 �
	</div>
	<div id="search-results" style="width: 100%;">
		<table class="search-table" id="search-table" style="width: 100%;">
		</table>
	</div>
</div>
 $<div class="search-icons"><img src=" (images/close.png" id="close-icon"></div> 
</div>
</body>
</html>
 metaData Ljava/lang/Object;	  	Functions 
Properties getMetadata ()Ljava/lang/Object; this Lcfsearch2dui2ecfm427204720; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value silent2  Lcoldfusion/tagext/io/SilentTag; mode2 I include0 #Lcoldfusion/tagext/lang/IncludeTag; t7 t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 include3 output4  Lcoldfusion/tagext/io/OutputTag; mode4 t17 t18 t19 t20 module5 $Lcoldfusion/tagext/lang/ImportedTag; mode5 t23 t24 t25 t26 t27 t28 output6 mode6 t31 t32 t33 t34 output7 mode7 t37 t38 t39 t40 output8 mode8 t43 t44 t45 t46 output9 mode9 t49 t50 t51 t52 output10 mode10 t55 t56 t57 t58 output11 mode11 t61 t62 t63 t64 LineNumberTable java/lang/Throwablem <clinit> 1                 7 8    [ 8    � 8    � 8            "     ��                    Q     *+,� **+,� � **+,� � �                !"    #$  %    � 
 A  �*� $� *L*� .N*� $0� 6*� B-� F� H:*� L� R� VY6� �*+� ZL*� _� F� a:*� Lc� f� R� j� :� b� ��**� lnp� t*� vYxS� zY|� ~*� vYlS� �� �� ��� �� �� �� ����� � :� �:	*+� �L�	� �� :
� #
�� � #:� �� � :� �:� ��+�� �*� _-� F� a:*'� L�� f� R� j� �*� �-� F� �:*(� L� R� �Y6� &+�� �+**� � ¸ �� �+Ķ �� Ś��� �� :� #�� � #:� ɨ � :� �:� ʩ*+̶ �*� �-� F� �:*,� L���� �� �Y� �Y�SY�SY�SY�S� � �� R� �Y6� 5*+� ZL+�� �� ����� � :� �:*+� �L�� �� :� #�� � #:� �� � :� �:� ��+�� �*� �-� F� �:* �� L� R� �Y6� !+*� vY�S� �� �� �� Ś��� �� :� #�� � #:  � ɨ � :!� !�:"� ʩ"+�� �*� �-� F� �:#* � L#� R#� �Y6$� !+*� vY�S� �� �� �#� Ś��#� �� :%� #%�� � #:&#&� ɨ � :'� '�:(#� ʩ(+ � �*� �-� F� �:)* � L)� R)� �Y6*� !+*� vY�S� �� �� �)� Ś��)� �� :+� #+�� � #:,),� ɨ � :-� -�:.)� ʩ.+� �*� �	-� F� �:/* �� L/� R/� �Y60� +� �/� Ś��/� �� :1� #1�� � #:2/2� ɨ � :3� 3�:4/� ʩ4+� �*� �
-� F� �:5*5� L5� R5� �Y66� /+� �+*� vY�S� �� �� �+
� �5� Ś��5� �� :7� #7�� � #:858� ɨ � :9� 9�::5� ʩ:+� �*� �-� F� �:;*<� L;� R;� �Y6<� /+� �+*� vY�S� �� �� �+� �;� Ś��;� �� :=� #=�� � #:>;>� ɨ � :?� ?�:@;� ʩ@+� �� = ; u �n { � �n � � �n 0 u �n { � �n � � �n 0 un { �n � �n �nnc��n���nc��n���n���n���n%@CnCHCnconilonc~nil~no{~n~�~n���n���n��n��n��nn4iunorun4i�nor�nu��n���n���n���n��n��n�nn<bnnhknn<b}nhk}nnz}n}�}n�� n�� n��n��n nnC��n���nC��n���n���n���n   � A  �    �&'   �(   � + ,   �)*   �+,   �-.   �/   �01   �2 	  �3 
  �41   �51   �6   �7.   �89   �:,   �;   �<1   �=1   �>   �?@   �A,   �B1   �C   �D   �E1   �F1   �G   �H9   �I,   �J   �K1    �L1 !  �M "  �N9 #  �O, $  �P %  �Q1 &  �R1 '  �S (  �T9 )  �U, *  �V +  �W1 ,  �X1 -  �Y .  �Z9 /  �[, 0  �\ 1  �]1 2  �^1 3  �_ 4  �`9 5  �a, 6  �b 7  �c1 8  �d1 9  �e :  �f9 ;  �g, <  �h =  �i1 >  �j1 ?  �k @l  : N E  \  \  E  |  |  |  |  �  �  �  �  �  �  {  {  {  � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! �    4 '4 ' 'u )u )u )u )t )I ( , , , ,� ,� �� �� �� �� �� �@ �@ �@ �@ �? � �� �� �� �� �� �� �  ��5�5�5�5�5�5V<V<V<V<U<'<          #     *� 
�             o      g     I:� @� B]� @� _�� @� �Ӹ @� ջ �Y� �YSY� �SYSY� �S� ��          I             