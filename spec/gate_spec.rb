require "spec_helper"
require "./gate"
require "./ticket"

describe "Gate" do
  describe "#test_gate" do
    let(:umeda) { Gate.new(:umeda) }
    let(:juso) { Gate.new(:juso) }
    let(:ticket) { Ticket.new(150) }

    before { umeda.enter(ticket) }

    it { expect(juso.exit(ticket)).to be true }
  end
end
