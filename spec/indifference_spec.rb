require 'spec_helper'

describe Indifference do
  it 'has a version number' do
    expect(Indifference::VERSION).not_to be nil
  end

  it 'adds #with_indifferent_access to hash' do
    expect({}.respond_to?(:with_indifferent_access)).to eq(true)

    hash = { foo: "foo", "bar" => "bar" }.with_indifferent_access

    expect(hash[:foo]).to eq("foo")
    expect(hash["foo"]).to eq("foo")
    expect(hash[:bar]).to eq("bar")
    expect(hash["bar"]).to eq("bar")
  end
end
