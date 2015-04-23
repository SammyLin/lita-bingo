require "spec_helper"

describe Lita::Handlers::Bingo::Overtime, lita_handler: true do
  it { is_expected.to route_command("我要加班了").to(:overtime) }
  describe "#cowsay" do
    it "responds with text formatted with cowsay" do
      send_command "我要加班了"
      p replies.first
    end
  end
end