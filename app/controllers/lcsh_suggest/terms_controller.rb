require_dependency "lcsh_suggest/application_controller"

module LcshSuggest
  class TermsController < ApplicationController

    def index
      if params[:q]
        http = Curl.get("http://id.loc.gov/authorities/suggest/?q="+params[:q])
        array = eval(http.body_str)
        @results = array[1]
      end

      respond_to do |format|
        format.html { render :layout => false, :text => @results.to_json }
        format.json { render :layout => false, :text => @results.to_json }
        format.js   { render :layout => false, :text => @results.to_json }
      end
    end

  end
end
