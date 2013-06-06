require 'spec_helper'

module LcshSuggest
  describe TermsController do
  
    describe "#index" do
    
      it "should return nil if there's no query" do
        get :index, { :q => nil, :use_route => :lcsh_suggest }
        @results.should be_nil
      end

      it "should return a set of terms for a given query" do
        get :index, { :use_route => :lcsh_suggest, :q => "Blues" }
        @results.should_not be_nil
      end
    
    end
  end
end
