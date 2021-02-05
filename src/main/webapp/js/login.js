$(document).ready(function () {
    $("input").focus(function () {
        $(".msg").empty();
    });

    $("#terms").hide();

    $("input[name='terms']").click(function () {
        if ($(this).prop("checked")) {
            $("button[name='signup']").attr("disabled", false);
        } else {
            $("button[name='signup']").attr("disabled", true);
        }
    });

    $("a[href='#']").click(function (){
        $("#terms").show();
    });

    $(".delete").click(function (){
        $("#terms").hide();
    });
})