require 'json'
require "google_client/version"

require 'google_client/engine' if defined?(Rails)

module GoogleClient
  
  autoload :AuthenticationError, 'google_client/error'
  autoload :BadRequestError    , 'google_client/error'
  autoload :Calendar           , 'google_client/calendar'
  autoload :Contact            , 'google_client/contact'
  autoload :Error              , 'google_client/error'
  autoload :Event              , 'google_client/event'
  autoload :Format             , 'google_client/format'
  autoload :HttpConnection     , 'google_client/http_connection'
  autoload :NotFoundError      , 'google_client/error'
  autoload :Profile            , 'google_client/profile'
  autoload :User               , 'google_client/user'

  class << self
    def create_client(oauth_credentials)
      User.new(oauth_credentials)
    end
  end

end
