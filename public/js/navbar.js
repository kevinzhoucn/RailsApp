window.onload=function()
{
    setMenuBackground();
}

function setMenuBackground()
{
    var url = document.URL;//取得当前页的URL
    
    if(/company/.test(url.toLowerCase()))
    {
        $("#home").removeClass("active");
        $("#company").removeClass("inactive").addClass("active");
    }else if(/products/.test(url.toLowerCase()))
    {
        $("#home").removeClass("active");
        $("#products").removeClass("inactive").addClass("active");
    }else if(/fields/.test(url.toLowerCase()))
    {
        $("#home").removeClass("active");
        $("#fields").removeClass("inactive").addClass("active");
    }else if(/intmarkets/.test(url.toLowerCase()))
    {
        $("#home").removeClass("active");
        $("#internationalmarkets").removeClass("inactive").addClass("active");
    }else if(/equipments/.test(url.toLowerCase()))
    {
        $("#home").removeClass("active");
        $("#equipments").removeClass("inactive").addClass("active");
    }else if(/contactus/.test(url.toLowerCase()))
    {
        $("#home").removeClass("active");
        $("#contactus").removeClass("inactive").addClass("active");
    }
}