window.onload=function()
{
    setMenuBackground();
}

function setMenuBackground()
{
    var url = document.URL;//取得当前页的URL
    
    if(/company/.test(url.toLowerCase()))
    {
        $("#company").removeClass("inactive").addClass("active");
        $("#home").removeClass("active");
    }else if(/products/.test(url.toLowerCase()))
    {
        $("#products").removeClass("inactive").addClass("active");
        $("#home").removeClass("active");
    }else if(/fields/.test(url.toLowerCase()))
    {
        $("#fields").removeClass("inactive").addClass("active");
        $("#home").removeClass("active");
    }else if(/contactus/.test(url.toLowerCase()))
    {
        $("#contactus").removeClass("inactive").addClass("active");
        $("#home").removeClass("active");
    }
}