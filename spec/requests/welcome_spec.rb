require "rails_helper"

RSpec.describe WelcomeController, type: "request" do
  it "Knows the language" do
    get root_path
    expect(response.body).to match(/Welcome/)
    get root_path(locale: :es)
    expect(response.body).to match(/Bienvenidos/)
  end
end