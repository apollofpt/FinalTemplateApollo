var likebuttons = document.getElementsByClassName("like-button");
for (var i = 0; i < likebuttons.length; i++) {
    likebuttons[i].addEventListener("click", function () {
        pid = this.id.split('~')[0];
        doLike(pid, uid);
    });
}

function doLike(pid, uid)
{
    console.log(pid + "," + uid);
    const d = {
        uid: uid,
        pid: pid,
        operation: 'like'
    };

    $.ajax({
        url: "LikeServlet",
        data: d,
        success: function (sdata, textStatus, jqXHR) {
            console.log(sdata);
            if (sdata.trim() === 'true')
            {
                let c = $(".like-counter").html();
                c++;
                $('.like-counter').html(c);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(sdata);
        }
    });
}