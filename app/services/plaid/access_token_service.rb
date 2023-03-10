module Plaid
  class AccessTokenService < PlaidService
    attr_reader :access_token

    def initialize
      super()
    end

    def call
      access_token_creater
    end

    def access_token_creater
      exchange_token_response = client.item_public_token_exchange(@link_token)
      access_token = exchange_token_response['access_token']
      
      stripe_response = client.processor_stripe_bank_account_token_create(access_token, '{{ACCOUNT_ID}}')
      bank_account_token = stripe_response['stripe_bank_account_token']
      
    end

  end
end
