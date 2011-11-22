require 'person'

describe Person do
  subject do
    Person.new(:stomach => stomach)
  end

  let(:stomach) { double('stomach', :digest => nil) }

  context "eating food" do

    let(:food) { double('food') }

    it "should make the person full" do
      subject.should_not be_full
      subject.eat food
      subject.should be_full
    end

    it "passes message to stomach" do
      stomach.should_receive(:digest).with(food)
      subject.eat(food)
    end

  end
end

