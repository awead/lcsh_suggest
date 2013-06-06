Rails.application.routes.draw do

  mount LcshSuggest::Engine => "/lcsh_suggest"
end
