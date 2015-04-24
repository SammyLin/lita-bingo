require "spec_helper"

describe Lita::Handlers::Bingo::Designer, lita_handler: true do
  it { is_expected.to route_command("設計師").to(:designer) }
  it { is_expected.to route_command("找designer").to(:designer) }
  it "should return a random string" do
    send_command("designer")
    expect(replies.last).to be_an_instance_of(String)
    expect(replies.last.length).to be >= 2
  end
end
