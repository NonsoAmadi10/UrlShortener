module Queries
    class ShortenUrl < Queries::BaseQuery
    
      type Types::UrlType, null: false
      argument :url, String, required: true
  
      def resolve(url:)
        begin
            shorten_url = Url.create!(full_url: url)
            shorten_url
            
        rescue ActiveRecord::RecordInvalid => e
            GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
              " #{e.record.errors.full_messages.join(', ')}")
        end
      end
    end
end