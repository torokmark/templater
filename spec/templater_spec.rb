require 'spec_helper'

describe Templater do
  context "#replace" do
    let (:string) { "{{apple}} pear peach {{plum}} nut" }
    let (:hash_sym) { {apple: "carrot", plum: "parsley", nut: "celery"} }
    let (:hash_s) { {"apple" => "carrot", "plum" => "parsley", "nut" => "celery"} }
    let (:array) { ["carrot", "parsley", "celery"] } 

    subject { Templater }

    it "returns replaced string with `values` from Hash when keys are strings" do
        ret_str = subject.replace(string, hash_s)
        expect(ret_str).to include("carrot")
        expect(ret_str).to_not include("apple")
    end

    it "returns replaced string with `values` from Hash when keys are symbols" do
        ret_str = subject.replace(string, hash_sym)
        expect(ret_str).to include("carrot")
        expect(ret_str).to_not include("apple")
    end

    it "returns replaced string with `values` of Array" do
        ret_str = subject.replace(string, array)
        expect(ret_str).to include("carrot")
        expect(ret_str).to_not include("apple")
    end

    it "returns the original string if `values` is not Hash neither Array" do
        ret_str = subject.replace(string, nil)
        expect(ret_str).to eq(string)
    end

  end
end
