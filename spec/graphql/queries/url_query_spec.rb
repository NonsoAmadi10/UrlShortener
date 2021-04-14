module Queries

    RSpec.describe ShortenUrl, type: :request do 

        describe 'shorten_url' do 
            context 'with full_url' do 
                it 'changes the count of the database' do 
                    expect{
                        post '/graphql', params: { query: query(full_url: "https://facebook.com")}
                    }.to change { Url.count }.by(1)
                end

                it 'returns a shortened url ' do 
                    post '/graphql', params: { query: query(full_url: "https://google.com") }
                    json = JSON.parse(response.body)
                    data = json['data']['shortenUrl']['shortUrl']
                    expect(data).to match(/(http[s]?:\/\/)?([^\/\s]+\/)(.*)/)
                end 

            end

        end






        
        def query(full_url:)
            <<~GQL
            query {
                shortenUrl(url: "#{full_url}"){
                  shortUrl
                }
              }
              
            GQL
        end

    end

end