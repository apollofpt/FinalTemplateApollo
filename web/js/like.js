var likebuttons = document.getElementsByClassName("like-button");
var likecounts = document.getElementsByClassName("like-count");
for(let i = 0; i < likecounts.length; i++){
    let likecountsId = likecounts[i].id.split("-")[0];
    getLike(likecountsId);
}

for (let i = 0; i < likebuttons.length; i++) {
    likebuttons[i].addEventListener("click", function () {
        pid = this.id.split('-')[0];
        doLike(pid, uid);
    });
}

function getLike(pid){
    const d = {
        pid: pid,
        operation: 'getlike'
    };
    
    $.ajax({
        url: "LikeServlet",
        data: d,
        success: function (sdata, textStatus, jqXHR) {
            sdata = sdata.trim();
            $("#" + pid + "-like").html(sdata);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown);
        }
    });
}

function doLike(pid, uid)
{
    if(uid === null) return;
    console.log(pid + "," + uid);
    const d = {
        uid: uid,
        pid: pid,
        operation: 'dolike'
    };

    $.ajax({
        url: "LikeServlet",
        data: d,
        success: function (sdata, textStatus, jqXHR) {
            console.log(sdata);
            sdatas = sdata.trim().split(" ");
            let counterid = "#"+ pid +"-like";
            if(sdatas[1] === 'true'){
                likeiconid = "#"+ pid +"-post i";
                if (sdatas[0] === 'like')
                {   
                    $(likeiconid).removeClass("far").addClass("fas like-animated");
                    setTimeout(function(){
                        $(likeiconid).removeClass("like-animated");
                    }, 750);
                } else  if(sdatas[0] === 'unlike'){
                    $(likeiconid).removeClass("fas").addClass("far");
                }
                console.log(counterid);
                console.log(sdatas[2]);
                $(counterid).html(sdatas[2]);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown);
        }
    });
}