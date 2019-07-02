require "spec_helper"
require "./gate"
require "./ticket"

describe "Gate" do
  let(:umeda)   { Gate.new(:umeda) }
  let(:juso)    { Gate.new(:juso) }
  let(:mikuni)  { Gate.new(:mikuni) }

  context "梅田 〜 十三間" do
    let(:ticket) { Ticket.new(150) }
    before { umeda.enter(ticket) }

    it { expect(juso.exit(ticket)).to be true }
  end

  context "梅田 〜 三国間" do
    let(:ticket) { Ticket.new(150) }
    before { umeda.enter(ticket) }

    it { expect(mikuni.exit(ticket)).to be false }
  end
end
