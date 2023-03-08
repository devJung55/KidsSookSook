<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main/dropdown.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/font/font.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/joinLogin/login/login.css">

</head>
<body>
	
	<c:choose>
	<c:when test="${sessionScope.userId != null}">
		<header class="wrap-h">
			<section class="wrap-s">
				<a class="logo" href="${pageContext.request.contextPath}/main.main">
                    <!-- 크몽 logo 이미지 -->
				<img src="${pageContext.request.contextPath}/static/resources/img/kids-logo.png">
				</a>
				<div></div>
				<div style="flex-grow: 1;"></div>
				<form class="search" name="searchForm" action="${pageContext.request.contextPath}/searchAction.main?keyword=${keyword}">
					<div class="search-d">
						<input type="text" placeholder="검색어를 입력하세요" class="search-input" maxlength="30">
                                <!-- 검색 이미지 -->
                              <div class="search-svg">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
									<path xmlns="http://www.w3.org/2000/svg" d="M11.2307008,3.5 C15.5002489,3.5 18.9614015,6.96828437 18.9614015,11.24663 C18.9614015,13.0978372 18.3133954,14.7973826 17.2322825,16.1299241 L20.2742127,19.178378 
									C20.5762688,19.4810023 20.5764739,19.9714482 20.2746708,20.2738195 C19.9728678,20.5761908 19.4833433,20.5759857 19.1812873,20.2733614 L19.1812873,20.2733614 L16.1426973,17.2288066 C14.8071694,18.3312107 
									13.0960911,18.9932599 11.2307008,18.9932599 C6.96115262,18.9932599 3.5,15.5249756 3.5,11.24663 C3.5,6.96828437 6.96115262,3.5 11.2307008,3.5 Z M11.2307008,5.04932599 C7.81506225,5.04932599 5.04614015,7.82395349 5.04614015,
									11.24663 C5.04614015,14.6693064 7.81506225,17.4439339 11.2307008,17.4439339 C14.6463393,17.4439339 17.4152614,14.6693064 17.4152614,11.24663 C17.4152614,7.82395349 14.6463393,5.04932599 11.2307008,5.04932599 Z"></path>
								</svg>
							</div>
					</div>
				</form>
				<div class="wrap-btn">
					<a color="default" class="btn-1" href="${pageContext.request.contextPath}/customer-main.notice">
					    <span>고객센터</span>
					</a>
					<a color="default" class="btn-2" href="${pageContext.request.contextPath}/logout.member">
					    <span>로그아웃</span>
					</a>
                    <!-- 마이페이지 이동 -->
                    <div>
                        <a class="mypage" href="${pageContext.request.contextPath}/mypage.mypage">
                            <span>
                                <div class="default-profile">
                                    <img src="${pageContext.request.contextPath}/static/resources/img/main/profile.png" class="profile-img">
                                </div>
                            </span>
                        </a>
                    </div>
				</div>
			</section>

            <section class="categroyContainer">
                <div class="categoryWrap">
                    <div class="category">
                        <div class="categoryContent">
                            <button type="button" class="category-btn">
                                <span class="img">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
                                        <path xmlns="http://www.w3.org/2000/svg" d="M19,17 C19.5522847,17 20,17.4477153 20,18 C20,18.5522847 19.5522847,19 19,19 L5,19 C4.44771525,19 4,18.5522847 4,18 C4,17.4477153 4.44771525,17 5,17 L19,17 Z M19,11 C19.5522847,11 20,11.4477153 
                                        20,12 C20,12.5522847 19.5522847,13 19,13 L5,13 C4.44771525,13 4,12.5522847 4,12 C4,11.4477153 4.44771525,11 5,11 L19,11 Z M19,5 C19.5522847,5 20,5.44771525 20,6 C20,6.55228475 19.5522847,7 19,7 L5,7 C4.44771525,7 4,6.55228475 4,6 C4,5.44771525 4.44771525,5 5,5 L19,5 Z"></path>
                                    </svg>
                                </span>
                            </button>

                            <!-- dropdown -->
                        <div class="dropdown-container">
                            <button type="button" class="category-s" onclick="dp_menu()">전체 카테고리</button>
                            <div style="display: none;" id="drop-content">
                                    <a href="javascript:location.href='${pageContext.request.contextPath}/fieldTripMainAction.fieldTrip'">카테고리메인</a>
                                    <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=1&categoryName=science'">과학IT</a>
                                    <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=2&categoryName=mike'">방송</a>
                                    <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=3&categoryName=study'">사회</a>
                                    <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=4&categoryName=activity'">엑티비티</a>
                                    <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=5&categoryName=history'">역사</a>
                                    <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=6&categoryName=art'">예술</a>
                                    <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=7&categoryName=cook'">요리</a>
                                    <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=8&categoryName=medical'">의료</a>
                             </div>
                        </div>
                            <span class="categoryImg">
                                <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
                                    <polygon id="Triangle" transform="translate(12.000000, 12.000000) rotate(-180.000000) translate(-12.000000, -12.000000) " points="12 9 18 15 6 15">
                                    </polygon>
                                </svg>
                            </span>
                        </div>
                    </div>
                 </div> 
            </div>
    </section>
	</header>
	</c:when>
	<c:otherwise>
		<header class="wrap-h">
			<section class="wrap-s">
				<a class="logo" href="${pageContext.request.contextPath}/main.main">
                    <!-- logo 이미지 -->
                   <img src="${pageContext.request.contextPath}/static/resources/img/kids-logo.png">
				</a>
				<div style="flex-grow: 1;"></div>
				<form class="search" name="searchForm" action="${pageContext.request.contextPath}/seachAction.main?keyword=${keyword}">
					<div class="search-d">
						<input type="text" name="keyword" placeholder="검색어를 입력하세요" class="search-input" maxlength="30">
                        <!-- 검색 이미지 -->
                        <div class="search-svg">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
								<path xmlns="http://www.w3.org/2000/svg" d="M11.2307008,3.5 C15.5002489,3.5 18.9614015,6.96828437 18.9614015,11.24663 C18.9614015,13.0978372 18.3133954,14.7973826 17.2322825,16.1299241 L20.2742127,19.178378 
								C20.5762688,19.4810023 20.5764739,19.9714482 20.2746708,20.2738195 C19.9728678,20.5761908 19.4833433,20.5759857 19.1812873,20.2733614 L19.1812873,20.2733614 L16.1426973,17.2288066 C14.8071694,18.3312107 
								13.0960911,18.9932599 11.2307008,18.9932599 C6.96115262,18.9932599 3.5,15.5249756 3.5,11.24663 C3.5,6.96828437 6.96115262,3.5 11.2307008,3.5 Z M11.2307008,5.04932599 C7.81506225,5.04932599 5.04614015,7.82395349 5.04614015,
								11.24663 C5.04614015,14.6693064 7.81506225,17.4439339 11.2307008,17.4439339 C14.6463393,17.4439339 17.4152614,14.6693064 17.4152614,11.24663 C17.4152614,7.82395349 14.6463393,5.04932599 11.2307008,5.04932599 Z"></path>
							</svg>
						</div>
					</div>
				</form>
				<div class="wrap-btn">
					<a color="default" class="btn-1" href="${pageContext.request.contextPath}/customer-main.notice">
					    <span>고객센터</span>
					</a>
					<a color="default" class="btn-2 btn-login-modal">
					    <span>로그인</span>
					</a>
                    <a color="yellow" href="${pageContext.request.contextPath}/firstJoin.member" class="join">
                        <span>무료 회원가입</span>
                    </a>

				</div>
			</section>
			<section class="categroyContainer">
                <div class="categoryWrap">
                     <div class="category">
                        <div class="categoryContent">
                                <button type="button" class="category-btn">
                                    <span class="img">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
                                            <path xmlns="http://www.w3.org/2000/svg" d="M19,17 C19.5522847,17 20,17.4477153 20,18 C20,18.5522847 19.5522847,19 19,19 L5,19 C4.44771525,19 4,18.5522847 4,18 C4,17.4477153 4.44771525,17 5,17 L19,17 Z M19,11 C19.5522847,11 20,11.4477153 
                                            20,12 C20,12.5522847 19.5522847,13 19,13 L5,13 C4.44771525,13 4,12.5522847 4,12 C4,11.4477153 4.44771525,11 5,11 L19,11 Z M19,5 C19.5522847,5 20,5.44771525 20,6 C20,6.55228475 19.5522847,7 19,7 L5,7 C4.44771525,7 4,6.55228475 4,6 C4,5.44771525 4.44771525,5 5,5 L19,5 Z"></path>
                                        </svg>
                                    </span>
                                </button>

                                    <!-- dropdown -->
                                <div class="dropdown-container">
                                    <button type="button" class="category-s" onclick="dp_menu()">전체 카테고리</button>
                                    <div style="display: none;" id="drop-content">
                                    		<a href="javascript:location.href='${pageContext.request.contextPath}/fieldTripMainAction.fieldTrip'">카테고리메인</a>
                                            <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=1&categoryName=science'"'>과학IT</a>
                                            <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=2&categoryName=mike'">방송</a>
                                            <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=3&categoryName=study'">사회</a>
                                            <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=4&categoryName=activity'">엑티비티</a>
                                            <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=5&categoryName=history'">역사</a>
                                            <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=6&categoryName=art'">예술</a>
                                            <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=7&categoryName=cook'">요리</a>
                                            <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=8&categoryName=medical'">의료</a>
                                     </div>
                                </div>
                                    <span class="categoryImg">
                                        <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
                                            <polygon id="Triangle" transform="translate(12.000000, 12.000000) rotate(-180.000000) translate(-12.000000, -12.000000) " points="12 9 18 15 6 15">
                                            </polygon>
                                        </svg>
                                    </span>
                                </div>
                            </div>
                         </div> 
                    </div>
            </section>
		</header>
		
		<div class="login-modal">
        <div data-testid="backdrop" aria-hidden="true" class="modal-background"></div>
        <div role="dialog" tabindex="0" class="modal-position">
            <div class="modal-detail-position">
                <div id="modal-content" class="modal-content">
                    <div class="modal-close">
                        <button role="button" color="default" data-testid="close-button" class="modal-btn-close">
                            <span>
                                <span role="img" color="#303441" rotate="0" class="modal-close-img">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="x-button">
                                        <path xmlns="http://www.w3.org/2000/svg" d="M6.34314575,4.92893219 L12.000039,10.585039 L17.6568542,4.92893219 C18.0473785,4.5384079 18.6805435,4.5384079 19.0710678,4.92893219 C19.4615921,5.31945648 19.4615921,5.95262146 19.0710678,6.34314575 L13.415039,12.000039 L19.0710678,17.6568542 C19.4615921,18.0473785 19.4615921,18.6805435 19.0710678,19.0710678 C18.6805435,19.4615921 18.0473785,19.4615921 17.6568542,19.0710678 L12.000039,13.415039 L6.34314575,19.0710678 C5.95262146,19.4615921 5.31945648,19.4615921 4.92893219,19.0710678 C4.5384079,18.6805435 4.5384079,18.0473785 4.92893219,17.6568542 L10.585039,12.000039 L4.92893219,6.34314575 C4.5384079,5.95262146 4.5384079,5.31945648 4.92893219,4.92893219 C5.31945648,4.5384079 5.95262146,4.5384079 6.34314575,4.92893219 Z"></path>
                                    </svg>
                                </span>
                            </span>
                        </button>
                    </div>
                    <div class="modal-inner">
                        <div class="modal-background-img">
                            <img alt="로그인모달 배경이미지" src="${pageContext.request.contextPath}/static/resources/img/logo/logo.png" width="600" height="656" decoding="async" data-nimg="1" loading="lazy" style="color: transparent;">
                            <p class="modal-background-introduce">
                                <!-- <span>현재 2,544,436명의 회원이 크몽에서 활동하고 있습니다.</span>
                                <br>
                                <span style="font-weight: 500;">2,544,437</span>
                                번째 크몽회원이 되어보세요 :) -->
                            </p>
                        </div>
                        <div class="modal-login">
                            <h2 class="modal-login-title">로그인</h2>
                            <form novalidate="" class="modal-login-form" action="${pageContext.request.contextPath}/loginAction.member">
                                <div class="modal-login-div-outer">
                                    <div class="modal-login-div-inner">
                                        <input type="text" required="" placeholder="아이디를 입력해 주세요." name="userIdentification" autocomplete="username" class="modal-login-id" value="">
                                    </div>
                                    <div class="modal-login-between"></div>
                                </div>
                                <div class="modal-login-div-outer">
                                    <div class="modal-login-div-inner">
                                        <input type="password" required="" placeholder="비밀번호를 입력해 주세요." id="password" name="userPassword"  class="modal-login-id" value="">
                                    </div>
                                    <div class="modal-login-between"></div>
                                </div>
                                <button role="button" color="yellow" class="modal-login-btn">
                                    <span>로그인</span>
                                </button>
                                <div class="modal-login-addition">
                                    <label color="#ffd400" class="modal-keep-login-label">
                                        <span class="modal-keep-login-span">
                                            <input data-testid="checkbox" type="checkbox" name="remember" class="modal-keep-login">
                                            <span color="#ffd400" class="modal-checkbox-inner"></span>
                                            <span class="modal-keep-login-text">로그인 유지</span>
                                        </span>
                                    </label>
                                    <div class="modal-keep-find">
                                        <a href="${pageContext.request.contextPath}/findId.member" class="modal-keep-find-text">아이디•비밀번호 찾기</a>
                                    </div>
                                </div>
                            </form>
                            <div class="modal-sns-login">
                                <p class="modal-sns-login-text">SNS계정으로 간편하게 로그인하세요.</p>
                                <div class="SnsLoginBtn">
                                    <a class="flex-center-center btn btn-default width-100 btn-sns-signup NGM border-none" style="background-color: rgb(99, 195, 61);">
                                        <div class="flex-left-center">
                                            <img src="https://d2v80xjmx68n4w.cloudfront.net/assets/icon/icon_naver.png" alt="sns아이콘" class="width-30px margin-right-5">
                                            <span style="font-size: 15px; color: rgb(255, 255, 255); border-color: rgb(255, 255, 255);">네이버 간편 가입 하기</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="SnsLoginBtn">
                                    <a class="flex-center-center btn btn-default width-100 btn-sns-signup NGM border-none" style="background-color: rgb(252, 232, 77);">
                                        <div class="flex-left-center">
                                            <img src="https://d2v80xjmx68n4w.cloudfront.net/assets/icon/icon_kakao.png" alt="sns아이콘" class="width-30px margin-right-5">
                                            <span style="font-size: 15px; color: rgb(51, 51, 51); border-color: rgb(51, 51, 51);">카카오톡 간편 가입 하기</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="SnsLoginBtn">
                                    <a class="flex-center-center btn btn-default width-100 btn-sns-signup NGM border-none" style="background-color: rgb(208, 83, 63);">
                                        <div class="flex-left-center">
                                            <img src="https://d2v80xjmx68n4w.cloudfront.net/assets/icon/icon_google.png" class="width-30px margin-right-5">
                                            <span style="font-size: 15px; color: rgb(255, 255, 255); border-color: rgb(255, 255, 255);">구글 간편 가입 하기</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <hr orientation="horizontal" class="modal-line">
                            <div>
                                <p class="modal-adver">
                                    
                                </p>
                                <a role="link" color="denim" href="${pageContext.request.contextPath}/firstJoin.member" class="modal-join">
                                    <span>키즈쑥쑥 회원가입 하기</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	</c:otherwise>
</c:choose>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
const $map = $(".search-svg");

$map.on("click", function(){
	document.searchForm.submit();
});

</script>
<script src="${pageContext.request.contextPath}/static/js/mainpage/dropdown.js"></script>
<script src="${pageContext.request.contextPath}/static/js/joinLogin/login/login.js""></script>
</html>