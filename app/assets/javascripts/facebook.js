// FacebookSDK
// https://developers.facebook.com/docs/plugins/page-plugin/

/*Log app Events*/
window.fbAsyncInit = function() {
    FB.init({
        appId      : '326019507801319',
        xfbml      : true,
        version    : 'v2.9'
    });
    FB.AppEvents.logPageView();
};

/*Facebook likes*/
 (function(d, s, id) {
 var js, fjs = d.getElementsByTagName(s)[0];
 if (d.getElementById(id)) return;
 js = d.createElement(s); js.id = id;
 js.src = "//connect.facebook.net/de_DE/sdk.js#xfbml=1&version=v2.8&appId=326019507801319";
 fjs.parentNode.insertBefore(js, fjs);
 }(document, 'script', 'facebook-jssdk'));

// Compatibility with Turbolinks 5
(function($) {
  var fbRoot;

  function saveFacebookRoot() {
    if ($('#fb-root').length) {
      fbRoot = $('#fb-root').detach();
}
};

function restoreFacebookRoot() {
  if (fbRoot != null) {
    if ($('#fb-root').length) {
      $('#fb-root').replaceWith(fbRoot);
} else {
  $('body').append(fbRoot);
}
}

if (typeof FB !== "undefined" && FB !== null) { // Instance of FacebookSDK
  FB.XFBML.parse();
}
};

document.addEventListener('turbolinks:request-start', saveFacebookRoot)
document.addEventListener('turbolinks:load', restoreFacebookRoot)
}(jQuery));