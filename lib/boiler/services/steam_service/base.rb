module Boiler
  module SteamService
    class Base
      include HTTParty

      private

      def default_headers
        {}
      end

      def default_params
        {}
      end

      def get(url, query: nil, headers: nil)
        request_headers ||= default_headers
        request_headers.merge!(headers) unless headers.nil?

        params ||= default_params
        params.merge!(query) unless query.nil?

        options = {
          headers:  request_headers,
          query:    params
        }

        self.class.get(url, options)
      end

    end
  end
end
