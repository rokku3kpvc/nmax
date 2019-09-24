RSpec.describe Nmax do
  it "has a version number" do
    expect(Nmax::VERSION).not_to be nil
  end

  describe "when execute" do
    context "with invalid params" do
      it "should raise TypeError" do
        expect { described_class.call('sample') }
          .to raise_error(Nmax::ArgumentTypeError)
      end

      it "should raise ValueError" do
        expect { described_class.call(0) }
          .to raise_error(Nmax::ArgumentValueError)
      end
    end

    context "with valid params" do
      let(:limit) { 3 }
      let(:limit_num) { ('9' * 1000).to_i }
      let(:nums) { [limit_num.to_s, '4', '548', '-10', '1'] }
      let(:answer) { [limit_num, 548, 10] }
      let(:text) do
        %(
          I don't want to make parse#{nums[4]}logic with regex
          But in Ruby it is so easy#{nums[1]}and beautiful!
          So I had to :D#{nums[0]}
          It will handle small#{nums[2]}files
          But for large it#{nums[3]}will be two small because of regex
        )
      end

      before do
        stub_const('ARGF', StringIO.new(text))
      end

      subject { described_class.call(limit) }

      it "should return array with integers" do
        expect { to all(be_an(Integer)) }
      end

      it "should return valid answer" do
        expect { to eq(answer) }
      end
    end
  end
end
