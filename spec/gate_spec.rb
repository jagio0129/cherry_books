require "spec_helper"
require "./gate"
require "./ticket"

describe "Gate" do
  let(:umeda)   { Gate.new(:umeda) }
  let(:juso)    { Gate.new(:juso) }
  let(:mikuni)  { Gate.new(:mikuni) }

  context "梅田 〜 十三間" do
    before { umeda.enter(ticket) }

    context "運賃が足りる" do
      let(:ticket) { Ticket.new(150) }
      it { expect(juso.exit(ticket)).to be true }
    end
  end

  context "梅田 〜 三国間" do
    before { umeda.enter(ticket) }

    context "運賃が足りない" do
      let(:ticket) { Ticket.new(150) }
      it { expect(mikuni.exit(ticket)).to be false }
    end

    context "運賃が足りる" do
      let(:ticket) { Ticket.new(190) }
      it { expect(mikuni.exit(ticket)).to be true }
    end
  end

  context "十三 〜 三国間" do
    before { juso.enter(ticket) }
    
    context "運賃が足りる" do
      let(:ticket) { Ticket.new(150) }
      it { expect(mikuni.exit(ticket)).to be true }
    end
  end
end
