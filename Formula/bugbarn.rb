class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.232"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.232.tar.gz"
      sha256 "a66a55ac550580d5b74c4336234d46a566a1eb115b641db275bec6d0432c7567"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.232.tar.gz"
      sha256 "a789b1de810f27a7812a9a1783a6f9fd71306457bc10c71a90b0ad590a723fda"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
