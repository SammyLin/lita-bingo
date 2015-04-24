require "spec_helper"

describe Lita::Handlers::Bingo::Engineer, lita_handler: true do
  it { is_expected.to route_command("工程師").to(:engineer) }
  it { is_expected.to route_command("找工程師").to(:engineer) }
  it { is_expected.to route_command("找engineer").to(:engineer) }
  it { is_expected.to route_command("可以凹他嗎").to(:engineer) }
  it "should return a random string" do
    send_command("engineer")
    expect(replies.last).to be_an_instance_of(String)
    expect(replies.last.length).to be >= 2
  end
end
