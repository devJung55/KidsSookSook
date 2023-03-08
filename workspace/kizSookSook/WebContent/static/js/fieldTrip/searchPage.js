function change(e, fieldTripId) {
    var checkColor = $(e).attr("fill");
	var count = 0;
	
    if($(e).attr("fill") == "red"){
    	$.ajax({
			url: contextPath + "/searchLikeDeleteAction.main",
			data: {fieldTripId: fieldTripId},
			success: function() {
				alert('좋아요 삭제 성공!'); 	
				$(e).attr("fill", "transparent");
			}
		});
    } else {
   		$.ajax({
			url: contextPath + "/searchLikeInsertAction.main",
			data: {fieldTripId: fieldTripId},
			success: function() {
				alert('좋아요 성공!');        	
		   		$(e).attr("fill", "red");
			}
		});
    }
}

const $searchMap = $(".search-svg");

$searchMap.on("click", function(){
	document.searchForm.submit();
});


