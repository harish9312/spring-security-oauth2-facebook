<htm>
<head>
</head>
<body>



<g:javascript>
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8&appId=145244925952453";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</g:javascript>

<g:javascript>
FB.getLoginStatus(function(response) {
  if (response.status === 'connected') {
    console.log(response.authResponse.accessToken);
  }
});
</g:javascript>
<g:javascript>

function checkLoginState() {
  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });
}
</g:javascript>


<g:javascript>


FB.api('/me', function(response) {
    console.log(JSON.stringify(response));
});
</g:javascript>
<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
</fb:login-button>




<div class="fb-login-button" data-max-rows="1" data-size="xlarge" data-show-faces="false" data-auto-logout-link="false"></div>


</body>
</html>
