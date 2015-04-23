require "spec_helper"

describe Lita::Handlers::Bingo::Engineer, lita_handler: true do
  it { is_expected.to route("工程師").to(:engineer) }
  it { is_expected.to route("找工程師").to(:engineer) }
  it { is_expected.to route("找engineer").to(:engineer) }
  it { is_expected.to route("可以凹他嗎").to(:engineer) }
end