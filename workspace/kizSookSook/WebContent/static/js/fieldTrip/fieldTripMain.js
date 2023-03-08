function change(e, fieldTripId) {
	if(!`${userIdSession}`) {
		alert('로그인 안하나');
		return false;
	}
    var checkColor = $(e).attr("fill");
    if($(e).attr("fill") == "red"){
    	$.ajax({
			url: contextPath + "/likeDeleteAction.fieldTrip",
			data: {fieldTripId: fieldTripId},
			success: function() {
				alert('좋아요 삭제 성공!'); 	
				$(e).attr("fill", "transparent");
			}
		});
    } else {
   		$.ajax({
			url: contextPath + "/likeInsertAction.fieldTrip",
			data: {fieldTripId: fieldTripId},
			success: function() {
				alert('좋아요 성공!');        	
		   		$(e).attr("fill", "red");
			}
		});
    }
}

showBestCategoryList();
showFieldTripMain();

function showBestCategoryList() {
	bestCategoryList = JSON.parse(bestCategoryList);
	let text = "";
	bestCategoryList.forEach(bestCategory => {
		text += `
			<div data-index="-4" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true">
                <div>
                    <article class="bestBannerG">
                        <a href="${contextPath}/getDetailPageAction.fieldTrip?fieldTripId=${bestCategory.fieldTripId}" class="bestBannerH">
                            <div class="bestBannerI">
                                <img src="${contextPath}/upload/${bestCategory.fieldTripSystemName}" class="bestBannerJ">
                            </div>
                            <div class="bestBannerK">
                                <h3>${bestCategory.fieldTripName}</h3>
                                <div class="bestBannerL">
                                    <div class="bestBannerM">${bestCategory.sumHeadCount}명 체험!</div>
                                    <div class="bestBannerM">${bestCategory.fieldTripPlace}</div>
                                </div>
                            </div>
                        </a>
                    </article>
                </div>
            </div>
		`;
	});
	$('.slick-track').append(text);
}

function checkLike(fieldTripId) {
	if(!`${userIdSession}`) {
		return false;
	}
	let check = false;
	$.ajax({
		url: contextPath + "/selectLike.fieldTrip",
		data: {fieldTripId: fieldTripId},
		async: false,
		success: function(result) {
			check = result;
		}
	});
	return check;
}

function showFieldTripMain() {
	fieldTripTop10 = JSON.parse(fieldTripTop10);
	$appendDiv = $(".top-list-container");
	let text = "";
	fieldTripTop10.forEach(fieldTripTop10 => {
		text += `
			<div class="topListC">
                <div class="topListD">
                    <div class="topListE">
                        <div onclick="javascript:location.href='${contextPath}/getDetailPageAction.fieldTrip?fieldTripId=${fieldTripTop10.fieldTripId}'" class="topListF">
                            <div class="topListG">
                                <img src="${contextPath}/upload/${fieldTripTop10.fieldTripSystemName}" class="topListH">
                            </div>
                        </div>
                    </div>
                    <div class="topListI">
                        <button class="topListJ">
                            <span role="img" color="#ffffff" rotate="0" class="topListZ">
                                <svg class="like-svg" width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="topList-svg">
                                    <defs>
                                        <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
                                    </defs>
                                    <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
                                	<path class="like-btn" d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="`;
                                	
                                    if(checkLike(`${fieldTripTop10.fieldTripId}`) == 'true') {
	                                	text += `red`;
                                    } else {
	                                	text += `transparent`;
                                    }
                                    
                                	text += `" fill-rule="nonzero" onclick="change(this, ${fieldTripTop10.fieldTripId})"></path>
                                        <mask id="mask-2" fill="white">
                                            <use xlink:href="#heart-outlined-fill-icon"></use>
                                        </mask>
                                        <use id="Shape" xlink:href="#heart-outlined-fill-icon"></use>
                                    </g>
                                </svg>
                            </span>
                        </button>
                    </div>
                </div>
                <div class="topListK" onclick="javascript:location.href='${contextPath}/getDetailPageAction.fieldTrip?fieldTripId=${fieldTripTop10.fieldTripId}'">
                    <div class="topListL">
                        <span class="topListM">${fieldTripTop10.categoryName}</span>
                    </div>
                    <h3 class="topListN">${fieldTripTop10.fieldTripContextDescription}</h3>
                    <div class="topListO">
                        <div class="topListP">
                            <div class="topListR" id="topListRR">${fieldTripTop10.fieldTripPrice}원</div>
                        </div>
                    </div>
                </div>
                <div class="topListQ">
                    <div class="topListT">
                       ${fieldTripTop10.fieldTripDeadlineDate} 마감
                    </div>
                </div>
           	</div>
		`;
	});
	
	$appendDiv.append(text);
}