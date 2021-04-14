
class Url < ApplicationRecord
    validates :full_url, presence: true, uniqueness: true, length: { minimum: 14}
    validates_format_of :full_url, :with => %r{((http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,6}(:[0-9]{1,5})?(\/.*)?)\z}, :message => 'invalid url'
    validates :short_url, uniqueness:true
    before_create :generate_short_link
    
    
    private
    def generate_short_link
        link = Time.now.to_i.to_s(36)
        self.short_url = "#{ENV['ROOT_URL']}#{link}"
    end
end
