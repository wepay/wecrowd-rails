module ErrorHelper

  def no_campaigns_error
    code = 100
    message = "There are no campaigns available."
    errorObj = {"error_code"=> code, "error_message"=> message}
    return errorObj
  end

  def campaign_does_not_exist_error
    code = 101
    message = "There are no campaigns that exist corresponding to the campaign ID provided. Please try a different campaign ID."
    errorObj = {"error_code"=> code, "error_message"=> message}
    return errorObj
  end

  def no_featured_campaigns_error
    code = 102
    message = "There are no featured campaigns available."
    errorObj = {"error_code"=> code, "error_message"=> message}
    return errorObj
  end

  def user_invalid_error
    code = 200
    message = "This user is invalid. Please try specifying a different user name and email address."
    errorObj = {"error_code"=> code, "error_message"=> message}
    return errorObj
  end

  def payment_invalid_error
    code = 300
    message = "The payment was unable to be processed due to invalid information."
    errorObj = {"error_code"=> code, "error_message"=> message}
    return errorObj
  end

  def wepay_checkout_create_error
    code = 301
    message = "There was an error with the WePay /checkout/create call"
    errorObj = {"error_code"=> code, "error_message"=> message}
    return errorObj
  end

  def donation_amount_error
    code = 302
    message = "The donation amount must be greater than 1. Please enter in a different amount to donate."
    errorObj = {"error_code"=> code, "error_message"=> message}
    return errorObj
  end

  def password_auth_error
    code = 400
    message = "The user could not be authenticated with the given user email and password. Please try again."
    errorObj = {"error_code"=> code, "error_message"=> message}
    return errorObj
  end

  def token_auth_error

    code = 401
    message = "The user could not be authenticated with the given user_id and token. Please try again."
    errorObj = {"error_code"=> code, "error_message"=> message}
    return errorObj
  end

  def only_get_error
    code = 500
    message = "The only HTTP request that is associated with this API endpoint is GET. Please try again with the appropriate HTTP request configuration."
    errorObj = {"error_code"=> code, "error_message"=> message}
    return errorObj
  end

  def only_post_error
    code = 501
    message = "The only HTTP request that is associated with this API endpoint is POST. Please try again with the appropriate HTTP request configuration."
    errorObj = {"error_code"=> code, "error_message"=> message}
    return errorObj
  end

  def only_get_and_post_error
    code = 502
    message = "The only HTTP request that is associated with this API endpoint are GET and POST. Please try again with the appropriate HTTP request configuration."
    errorObj = {"error_code"=> code, "error_message"=> message}
    return errorObj
  end

  def cannot_edit_error
    code = 503
    message = "Please make edits through the website. This API endpoint does not allow for edits."
    errorObj = {"error_code"=> code, "error_message"=> message}
    return errorObj
  end

  def cannot_create_campaigns_error
    code = 504
    message = "Please create a new campaign through the website. This API endpoint does not allow for creating campaigns."
    errorObj = {"error_code"=> code, "error_message"=> message}
    return errorObj
  end


end