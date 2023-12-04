$(function(){
	$(".drop_down").click(function(){
		$(".menu_item").slideToggle("slow");
	  })

	//Datatables
	$(document).ready(function() {
		$('#dataTable').DataTable();
	});

	$('.accordion-list > li > .sidebar-submenu').hide();
	    
	  $('.accordion-list > li').click(function() {
	    if ($(this).hasClass("active")) {
	      $(this).removeClass("active").find(".sidebar-submenu").slideUp();
	    } else {
	      $(".accordion-list > li.active .sidebar-submenu").slideUp();
	      $(".accordion-list > li.active").removeClass("active");
	      $(this).addClass("active").find(".sidebar-submenu").slideDown();
	    }
	    //return false;
	});

	$(".close_btn").click(function(){
		$(".sidebar-left").toggleClass("opens")		
		if ($(".sidebar-left").hasClass("opens")){
			$(".sidebar-right").addClass("sidebar-right-wide");
			$(".close_btn i").removeClass("fa-bars").addClass("fa-times-circle")			
		}else{
		$(".close_btn i").removeClass("fa-times-circle").addClass("fa-bars")
		$(".sidebar-right").removeClass("sidebar-right-wide");
		}
		console.log("aaa")
	})


})

       

