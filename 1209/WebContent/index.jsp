<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<!-- meta 선언 -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- link 선언 -->
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/style_index.css">

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/bootstrap.css.map.css">
<link rel="stylesheet" href="css/bootstrap-theme.css.map.css">

<!-- script 선언 -->
<script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript">

</script>


<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <script>
        $(document).ready(function() {
          
           $(".imgTrain").css("width",$(".imgTrain ul").width()*$(".imgTrain ul").size()+"px");
           $(".imgTrain ul").last().prependTo(".imgTrain"); 
            $(".imgTrain").css("margin-left",-$(".imgTrain ul").width())

            
         $("a.prev").click(function(){
             $("a.prev,a.next").hide();
            $(".imgTrain").stop().animate({
                marginLeft:parseInt($(".imgTrain").css("margin-left"))+1024
            
            },"slow","swing",function(){
                $(".imgTrain ul").last().prependTo(".imgTrain");
                $(".imgTrain").css("margin-left",-$(".imgTrain ul").width()+"px");
                $("a.prev,a.next").show();
            });
         
         });   
            
        $("a.next").click(function(){
            $("a.prev,a.next").hide();
            $(".imgTrain").stop().animate({
                "margin-left":parseInt($(".imgTrain").css("margin-left"))-1024
            },"slow","swing",function(){
                $(".imgTrain ul").first().appendTo(".imgTrain");
                $(".imgTrain").css("margin-left",-$(".imgTrain ul").width()+"px");
                $("a.prev,a.next").show();
                
            });
        });    
            

        });

    </script>
    
<title>Free? Flea!</title>
</head>
<body>

	<header id="header">
	<div class="inner">
			
			<h1 class="logo">
			<a href="./index.jsp">Free? Flea!</a>
			</h1>
			
		
			<h2 class="name">Free? Flea!</h2>

    <hr/>
    
       
			
		<div class="info">
				<ul class="login">
					<c:choose>
						<c:when test="${name eq null}">
							<li class="menu_login"><a class="menu_title"
								href="login.jsp">로그인</a></li>
							<li class="menu_join"><a class="menu_title"
								href="join.jsp">회원가입</a></li>
							
						</c:when>
						<c:otherwise>
						<li class="menu_login">${name}님 환영합니다!</li>
							<li class="menu_login"><a class="menu_title"
								href="mypage.jsp? uib = ${uib}" >마이페이지</a></li>
							<li class="menu_join"><a class="menu_title"
								href="LogOut">로그아웃</a></li>
							<button onclick="location.href='bList'">게시판 글 보러가기</button>
						
							
							
							
							<c:if test="${level eq '관리자'}">
							<li><input type="button" name="MemberList"
							value="ViewMemberList" onclick="MemberListWeb()"></li>	
		  					</c:if>
		  		
					
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</header>
	<div id="container">
     <div class="inner">
        <div class="slide_banner">
        <div class="btns">
            <a href="#none" class="prev">이전</a><a href="#none" class="next">이후</a>
        </div>
        <div class="imgTrain_wrap">
           <div class="imgTrain">
           
                <ul>
                    <li><a href="./StoreList.jsp"><img src="img/zz1.png" alt="banner"></a></li>
                    <li><a href="./StoreList.jsp"><img src="img/zz2.png" alt="banner"></a></li>
                    <li><a href="./StoreList.jsp"><img src="img/zz3.jpg" alt="banner"></a></li>
                </ul>
               
                <ul>
                    <li><a href="./StoreList.jsp"><img src="img/zz1.png" alt="banner"></a></li>
                    <li><a href="./StoreList.jsp"><img src="img/zz2.png" alt="banner"></a></li>
                    <li><a href="./StoreList.jsp"><img src="img/zz3.jpg" alt="banner"></a></li>
                </ul>
                <ul>
                    <li><a href="./StoreList.jsp"><img src="img/zz1.png" alt="banner"></a></li>
                    <li><a href="./StoreList.jsp"><img src="img/zz2.png" alt="banner"></a></li>
                    <li><a href="./StoreList.jsp"><img src="img/zz3.jpg" alt="banner"></a></li>
                </ul>
           </div>
        </div>
    </div> 
        
        
     </div>
	</div>
	<footer>
		<div class="footer_container">
			<div class="footA">류하윤구</div>
			<div class="footB">qwer12@naver.com</div>
		</div>
	</footer>
</body>
<script>
	function MemberListWeb() {
		location.href = "MemberListController"
		
	}
	function pageController() {
		location.href = "bList";
	}
</script>
</html>