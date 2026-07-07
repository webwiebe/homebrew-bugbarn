class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.123"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.123.tar.gz"
      sha256 "ecf73e08847214b4893019b1180ccb30d6ecac9fa182944d8d8c8173aaaa8736"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.123.tar.gz"
      sha256 "952cccc722eeaeb5684e87fddbcbba5db12b92594d59d7e061becb3a68a813f0"
    end
  end

  def install
    bin.install "bb"
  end
end
