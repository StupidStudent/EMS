/*班级下拉列表*/
/*
$("#class").change(function(){
	$.ajax(
		{
			type:"post",
			url:"getCourseList",
 			data:"classId="+$("#class").find("option:selected").attr("id"),
			dataType:'html',
			success:function(result){
				$("#course").html(result);
			}
		}
	);
});
*/
/*专业下拉列表*/
$("#profession").change(function(){
	$.ajax(
		{
			type:"post",
			url:"getClassList",
 			data:"proId="+$("#profession").find("option:selected").attr("id"),
			dataType:'html',
			success:function(result){
				$("#class").html(result);
			}
		}
	);
});

