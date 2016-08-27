$(document).ready(function () {
    size_li = $("#myList li").size();
    x=5;
    $('#myList li:lt('+x+')').show();
    $('#loadMore').click(function () {
        x= (x+5 <= size_li) ? x+5 : size_li;
        $('#myList li:lt('+x+')').show();
    });
    $('#showLess').click(function () {
        x=(x-5<0) ? 3 : x-5;
        $('#myList li').not(':lt('+x+')').hide();
    });
});


$(".js-spoiler-block-4").spoiler({
    numberHide: 4,
    elementHide: '.col-md-4 col-sm-6',
    delay: true,
    delaySpeed: 500
});
