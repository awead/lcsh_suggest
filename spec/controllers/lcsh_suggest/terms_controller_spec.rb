require 'spec_helper'

module LcshSuggest
  describe TermsController do
  
    describe "#index" do
    
      it "should return nil if there's no query" do
        get :index, { :q => nil, :use_route => :lcsh_suggest }
        expect(assigns(:results)).to be_nil
      end

      it "should return a set of terms for a given query" do
        get :index, { :use_route => :lcsh_suggest, :q => "Blues" }
        expect(assigns(:results)).not_to be_nil
      end
    
    end
  end
end
