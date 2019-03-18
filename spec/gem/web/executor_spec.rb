require 'spec_helper'

describe Gem::Web::Executor do

  it "should open the documentation" do
    VCR.use_cassette('documentation') do
      expect(Launchy).to receive(:open).with("http://api.rubyonrails.org")
      Gem::Web::Executor.new.open_page("rails", {doc: true})
    end
  end

  it "should open the homepage" do
    VCR.use_cassette('homepage') do
      expect(Launchy).to receive(:open).with("http://www.rubyonrails.org")
      Gem::Web::Executor.new.open_page("rails", {webpage: true})
    end
  end

  it "should open the source code" do
    VCR.use_cassette('sourecode') do
      expect(Launchy).to receive(:open).with("http://github.com/rails/rails")
      Gem::Web::Executor.new.open_page("rails", {sourcecode: true})
    end
  end

  it "should open GitHub" do
    VCR.use_cassette('github') do
      expect(Launchy).to receive(:open).with("http://github.com/rails/rails")
      Gem::Web::Executor.new.open_page("rails", {github: true})
    end
  end

  it "should open rubygems" do
    expect(Launchy).to receive(:open).with("https://rubygems.org/gems/rails")
    Gem::Web::Executor.new.open_page("rails", {rubygems: true})
  end

  it "should open rubytoolbox" do
    expect(Launchy).to receive(:open).with("https://www.ruby-toolbox.com/projects/rails")
    Gem::Web::Executor.new.open_page("rails", {rubytoolbox: true})
  end

  it "should not find unexisting gem" do
    gem = ""
    expect do
      Gem::Web::Executor.new.open_page(gem, {})
    end.to output("Did not find #{gem} on rubygems.org\n").to_stdout
  end

end
