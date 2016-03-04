module CinesTHE
  module Catchers
    class CinemasTeresina
      def url
        'http://cinemasteresina.com.br'
      end

      def html
        response.body
      end

      private

      def uri
        URI(url)
      end

      def request
        Net::HTTP::Get.new(uri)
      end

      def response
        Net::HTTP.start(uri.host, uri.port) do |http|
          http.request(request)
        end
      end
    end
  end
end
