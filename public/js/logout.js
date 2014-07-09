$(document).ready(function(){
$("a#logout").click(function() {
    $.ajax({
        type: "DELETE",
        url: "/admin/logout",
        data: "",
        success: function(){
            $('tr.selector').remove();
            $('div.success').fadeIn();
        }
    });
return false;
});
});
