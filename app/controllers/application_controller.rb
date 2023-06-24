class ApplicationController < ActionController::Base
    Pagy::DEFAULT[:items] = 10
    include Pagy::Backend
    require "pagy/extras/bootstrap"
end
