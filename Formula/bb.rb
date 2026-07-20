class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.153"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.153.tar.gz"
      sha256 "270dc62752c7033190b7f31dfae0dcc6132cbc31393dee28c4f0a4189e91b097"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.153.tar.gz"
      sha256 "018e25cdf6dbad2a78c7cb1f531ca96cfac2e15c96caf828924a24c46beecc0a"
    end
  end

  def install
    bin.install "bb"
  end
end
