RSpec.describe ClassName, type: :helper do

  include ClassName

  it "has a version number" do
    expect(ClassName::VERSION).not_to be nil
  end

  describe "#class_name helper" do
    describe "generates a pretty class name" do
      context "strings" do
        it "returns 'this' from ('this')" do
          expect(class_name("this")).to eq("this")
        end
        it "returns 'this' from ('this','that')" do
          expect(class_name("this","that")).to eq("this that")
        end
        it "returns 'this' from ('this','that','foo')" do
          expect(class_name("this","that","foo")).to eq("this that foo")
        end
        it "returns 'this' from ('this','that','foo','bar')" do
          expect(class_name("this","that","foo","bar")).to eq("this that foo bar")
        end
      end

      context "arrays" do
        it "returns 'this' from (['this'])" do
          expect(class_name(["this"])).to eq("this")
        end
        it "returns 'this that' from (['this','that'])" do
          expect(class_name(["this","that"])).to eq("this that")
        end
        it "returns 'this that foo' from (['this','that'],['foo'])" do
          expect(class_name(["this","that"],["foo"])).to eq("this that foo")
        end
        it "returns 'this that foo bar' from ([],['this'],['that','foo','bar'])" do
          expect(class_name([], ["this"],["that","foo","bar"])).to eq("this that foo bar")
        end
      end

      context "hashes" do
        it "returns 'this' from ({this: true})" do
          expect(class_name({this: true})).to eq("this")
        end
        it "returns 'this bar' from ({this: true, foo: false},{bar: true})" do
          expect(class_name({this: true, foo: false}, {bar: true})).to eq("this bar")
        end
      end

      context "integers" do
        it "returns 'one' from (1)" do
          expect(class_name(1)).to eq("one")
        end
        it "returns 'two twelve' from (2,12)" do
          expect(class_name(2,12)).to eq("two twelve")
        end
        it "returns 'two twelve sixteen' from (2,[12, 16])" do
          expect(class_name(2,[12, 16])).to eq("two twelve sixteen")
        end
      end

      context "mixed types" do
        it "returns 'base carl-the-fog hidden foo bar' from ('base','carl-the-fog',hidden:true,[:foo,:bar]=>true,[:foobar]=>false)" do
          expect(class_name(
            "base",
            "carl-the-fog",
            hidden: true,
            [:foo, :bar] => true,
            [:foobar] => false
          )).to eq("base carl-the-fog hidden foo bar")
        end
        it "returns 'base carl-the-fog foobar' from ('base','carl-the-fog',hidden:false,[:foo,:bar]=>true,[:foobar]=>false)" do
          expect(class_name(
            "base",
            "carl-the-fog",
            hidden: false,
            [:foo, :bar] => false,
            [:foobar] => true
          )).to eq("base carl-the-fog foobar")
        end
      end
    end
  end
end
