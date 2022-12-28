module Plaid
  class LinkTokenService < PlaidService
    attr_reader :link_token

    def initialize
      super()
    end
  
    def call
      link_token_creater
    end

    def link_token_creater
      client_user_id = 'Stripe test'

      link_token_response = client.link_token_create(
        user: {
          client_user_id: client_user_id
        },
        client_name: 'My App',
        products: ['auth'],
        country_codes: ['US'],
        language: 'en',
        webhook: 'https://sample.webhook.com',
      )
    end
  end
end