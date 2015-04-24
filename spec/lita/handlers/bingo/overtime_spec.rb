require "spec_helper"

describe Lita::Handlers::Bingo::Overtime, lita_handler: true do
  it { is_expected.to route_command("我要加班了").to(:overtime) }
  it { is_expected.to route_command("Overtime!").to(:overtime) }
  it "should return a random string" do
    send_command("overtime")
    expect(replies.last).to be_an_instance_of(String)
    expect(replies.last.length).to be >= 3
  end
end
