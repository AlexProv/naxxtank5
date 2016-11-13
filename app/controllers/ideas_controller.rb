require 'json'

class IdeasController < ApplicationController
    respond_to :json

    def index
        h = {:a => 1, :b => 2}
        render :json => { :ok => true }.to_json 
    end
    # private
    #     def parse_request
    #         @json = JSON.parse(request.body.read)
    #     end
end
