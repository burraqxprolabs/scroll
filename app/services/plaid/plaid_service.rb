require 'plaid'

module Plaid
  class PlaidService < ApplicationService
    attr_reader :client

    def initialize
      @client = Plaid::PlaidApi.new(plaid_api_client)     
    end

    def

    private

    def plaid_api_client
      configuration = Plaid::Configuration.new
      configuration.server_index = Plaid::Configuration::Environment['development' || 'sandbox']
      configuration.api_key['PLAID-CLIENT-ID'] = ENV['PLAID_CLIENT_ID']
      configuration.api_key['PLAID-SECRET'] = ENV['PLAID_SECRET']
      configuration.api_key['Plaid-Version'] = '2020-09-14'
      
      api_client = Plaid::ApiClient.new(configuration)
    end
  end
end
