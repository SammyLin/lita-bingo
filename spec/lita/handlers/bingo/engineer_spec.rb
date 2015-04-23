require "spec_helper"

describe Lita::Handlers::Bingo::Engineer, lita_handler: true do
  it { is_expected.to route_command("工程師").to(:engineer) }
  it { is_expected.to route_command("找工程師").to(:engineer) }
  it { is_expected.to route_command("找engineer").to(:engineer) }
  it { is_expected.to route_command("可以凹他嗎").to(:engineer) }
end