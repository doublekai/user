window.onload = function () {
    var wrap = document.getElementById('wrap');
    var img1 = document.getElementById('Image1');
    var img2 = document.getElementById('Image2');
    img2.style.display = "none";
    var s = true;
    // 定义并调用自动播放函数
    timer = setInterval(autoPlay, 2000);

    // 鼠标划过整个容器时停止自动播放
    wrap.onmouseover = function () {
        clearInterval(timer);

    }

    // 鼠标离开整个容器时继续播放至下一张
    wrap.onmouseout = function () {
        timer = setInterval(autoPlay, 2000);
    }


    function autoPlay() {
        if (s) {
            img1.style.display = "none";
            img2.style.display = "block";
            s = false;
        }
        else {
            img2.style.display = "none";
            img1.style.display = "block";
            s = true;
        }

    }



};