RSpec.describe UrlsController, type: :request do
    let(:url) { create(:url)}
    
    let(:url_id) { url.short_url }

    describe 'GET /:id' do
        context 'when request is valid' do
          before { get "#{url_id}" }
    
          it 'redirects to the full url' do
            expect(response).to have_http_status(302)
          end
        end
    end

end
