$(document).on('turbolinks:load', function () {

    $(function() {

        window.cookieconsent_options = {
            message: 'Diese Website nutzt Cookies (auch von Drittanbietern), um bestmögliche Funktionalität bieten zu können.',
            dismiss: 'Ok, verstanden',
            learnMore: 'Mehr Infos',
            link: 'http://www.sporting-nerds.com/impressum',
            theme: 'light-floating'
        };
    });

    //Info and alerts fading out
    $('.alert').delay(2000).fadeOut(1500);

    // div same height
    $('.card').matchHeight();

    //Bootstrap Carousel
    $(document).ready(function() {
        $('.carousel').carousel({
            interval: 1200
        })
    });

    /*Google Analytics*/
//    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
//      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
//      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
//      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
//
//    ga('create', 'UA-98336087-1', 'auto');
//    ga('set', 'anomymizeIp', true);
//    ga('send', 'pageview');
//    ga('require', 'displayfeatures');
//
//    var gaProperty = 'UA-98336087-1';
//    var disableStr = 'ga-disable-' + gaProperty;
//    if (document.cookie.indexOf(disableStr + '=true') > -1) {
//      window[disableStr] = true;
//    }
//    function gaOptout() {
//      document.cookie = disableStr + '=true; expires=Thu, 31 Dec 2099 23:59:59 UTC; path=/';
//      window[disableStr] = true;
//    }


})


;
