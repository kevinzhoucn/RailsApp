$(document).ready(function(){
 $('dt:first').addClass('active');
 $('dd:first').css('display','block');
 autoroll();
 hookThumb();
});
var i=-1; //第i+1个tab开始
var offset = 2500; //轮换时间
var timer = null;
function autoroll(){
 n = $('dt').length-1;
 i++;
 if(i > n){
 i = 0;
 }
 slide(i);
    timer = window.setTimeout(autoroll, offset);
 }
function slide(i){
 $('dt').eq(i).addClass('active').siblings().removeClass('active');
 $('dd').eq(i).css('display','block').siblings('dd').css('display','none');
 
 }
function hookThumb(){    
 $('dt').hover(
  function () {
    if (timer) {
                clearTimeout(timer);
    i = $(this).prevAll().length;
             slide(i); 
            }
  },
  function () {
      
            timer = window.setTimeout(autoroll, offset);  
            this.blur();            
            return false;
  }
); 
}
