require "spec_helper"

describe Lita::Handlers::Bingo::Oops, lita_handler: true do
  it { is_expected.to route_command("oops!").to(:oops) }
  it { is_expected.to route_command("找理由").to(:oops) }
  it { is_expected.to route_command("出包了").to(:oops) }
  it "should return a random string" do
    send_command("oops")
    expect(replies.last).to be_an_instance_of(String)
    expect(replies.last.length).to be >= 3
  end
end
