require "spec_helper"

describe Lita::Handlers::Bingo::Designer, lita_handler: true do
  it { is_expected.to route_command("設計師").to(:designer) }
  it { is_expected.to route_command("找designer").to(:designer) }
end