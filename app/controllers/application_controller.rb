class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
end

def title(title = nil)
    content_for :title, title
end
