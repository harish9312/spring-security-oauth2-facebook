package com.demo.LoginNew

import grails.transaction.Transactional

@Transactional
class FacebookAuthService {


void onCreate(FacebookUser user, FacebookAuthToken token) {
  Facebook facebook = new FacebookTemplate(token.accessToken.accessToken)
  FacebookProfile fbProfile = facebook.userOperations().userProfile

  //fill the name
  //fieldname ('fullname' at this example) is up to you
  user.fullname = fbProfile.name
}

    }
