
tyrano.base = {

    //読み込み対象のモジュール
    tyrano: null,
    modules: [],
    options: {

    },

    init: function (tyrano) {
        this.tyrano = tyrano;
    },

    setBaseSize: function (width, height) {

        this.tyrano.get(".tyrano_base").css("width", width).css("height", height).css("background-color", "black");

    },

    //画面サイズをぴったりさせます
    fitBaseSize: function (width, height) {

        var view_width = $.getViewPort().width;
        var view_height = $.getViewPort().height;

        var width_f = view_width / width;
        var height_f = view_height / height;

        var scale_f = 1;

        $(".tyrano_base").css("transform-origin", "0 0");

        var space_width = 0;

        var screen_ratio = this.tyrano.kag.config.ScreenRatio;

        var newWidth = width;
        var newHeight = height;

        //比率を固定にしたい場合は以下　以下のとおりになる
        if (screen_ratio == "fix")
        {
            // keep aspect ratio
            if (width_f > height_f)
     		{
                scale_f = height_f;
            } else {
                scale_f = width_f;
            }
            //alert("screen ratio scale" + scale_f);
		    /*if(width_f > height_f && width_f > 1)
			{
				$(".tyrano_base").css("transform", "scaleX(" + scale_f + ") scaleY(" + 1 + ")");
				newWidth = newWidth * scale_f;
			}
			else if(height_f > 1)
			{
				$(".tyrano_base").css("transform", "scaleX(" + 1.1 + ") scaleY(" + scale_f + ")");
				newWidth = newWidth * 1.1;
			}*/
			$(".tyrano_base").css("transform", "scale(" + scale_f + ")");
			newWidth = newWidth * scale_f;
            newHeight = newHeight * scale_f;
           
        } else if (screen_ratio == "fit")
        {
            // fit to screen
            //スクリーンサイズに合わせて自動的に調整される
            $(".tyrano_base").css("transform", "scaleX(" + width_f + ") scaleY(" + height_f + ")");

            newWidth = newWidth * width_f;
            newHeight = newHeight * height_f;

        } else
        {

            if (width_f > height_f)
     		{
                scale_f = height_f;
            } else {
                scale_f = width_f;
            }
            //alert("screen ratio scale" + scale_f);
			
			if(width_f > height_f && width_f > 1)
			{
				$(".tyrano_base").css("transform", "scaleX(" + scale_f + ") scaleY(" + 1 + ")");
				newWidth = newWidth * scale_f;
			}
			else
			{
				$(".tyrano_base").css("transform", "scaleX(" + 1.1 + ") scaleY(" + scale_f + ")");
				newWidth = newWidth * 1.1;
			}
			
            newHeight = newHeight * scale_f;
        }

        var transformX = (window.innerWidth - newWidth) / 2;
        var transformY = ((window.innerHeight - newHeight) / 2);
        var test = "";
        var screenXLocatiom = test + Math.round(transformX).toString();
        var screenYLocatiom = test + Math.round(transformY).toString();
        screenXLocatiom = screenXLocatiom + "px";
        screenYLocatiom = screenYLocatiom + "px";

        $('.tyrano_base').css({ "position": "relative", "top": screenYLocatiom, "left": screenXLocatiom });

        // $('.tyrano_base').css({'transform-origin': transform, '-webkit-transform-origin': transform, '-moz-transform-origin': transform, 'ms-transform-origin': transform, '-o-transform-origin': transform});

    },

    test: function () {
        //alert("tyrano test");
    }

};
