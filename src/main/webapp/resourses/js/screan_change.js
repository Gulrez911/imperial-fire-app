$(window).resize(function (e) {
             screen_resize();
        });
        function screen_resize() {
             var h = parseInt(window.innerHeight);
             var w = parseInt(window.innerWidth);

             if (w <= 800) {
                  //max-width 500px
                  // actions here...
                  rotateX();
             } else {
                  // 850px and beyond
                  // actions here...
                  rotateY();
             }

        }

        function rotateX() {
             console.log("sssss");
             // $("p:first").addClass("intro");
             // $(".nav-links").css("display", "none");
             if ($('.arrow').hasClass('temparrow')) {
                  // clearInterval(classListener);
                  //Do your work here or
                  // doWorkFunctionCall();

                  // $(".arrow").removeClass("temparrow");
             }


             if ($('.nav-links').hasClass('tempnav-links')) {
                  $(".nav-links").addClass("tempnav-links");
             }

             if ($('#yourID').css('display') == 'none') {
                  $(".nav-links").css("display", "block");
             }

        } function rotateY() {
             console.log("yyyyyyyyyy");
             // $("p:first").removeClass("intro");

             if (!$('.arrow').hasClass('temparrow')) {
                  // clearInterval(classListener);
                  //Do your work here or
                  // doWorkFunctionCall();

                  $(".arrow").addClass("temparrow");
             }

             if (!$('.nav-links').hasClass('tempnav-links')) {
                  // clearInterval(classListener);
                  //Do your work here or
                  // doWorkFunctionCall();

                  $(".nav-links").removeClass("tempnav-links");
             }
        }
        