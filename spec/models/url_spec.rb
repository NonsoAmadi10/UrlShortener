RSpec.describe Url, type: :model do
  subject { Url.new(full_url: "https://google.com")}

  before { subject.save }
  it "is not valid with empty attributes" do
    expect(Url.new).to_not be_valid
  end

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is valid when the full_url is a valid url link" do
    subject.full_url = "http://googlecom"

    expect(subject).to_not be_valid
  end

  it "should generate a short_url" do
    expect(subject.short_url).to be_truthy
  end

  it "should generate a url consisting of host and string path of 6 characters" do
    expect(subject.short_url).to match(/(http[s]?:\/\/)?([^\/\s]+\/)(.*)/)
    split_url = subject.short_url.split('/')

    expect(split_url.last.length).to eq(6)
  end

end