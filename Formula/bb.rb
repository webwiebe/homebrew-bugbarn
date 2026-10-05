class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.205"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.205.tar.gz"
      sha256 "59f2a3cc6bd02e23f15eded37924abbc490bdf66b8a6a019fa50f74e1d37c9b9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.205.tar.gz"
      sha256 "1f8970bffb91b6f8fb98383facb5afc0b296f94820742285a22a44b8f9ff9ceb"
    end
  end

  def install
    bin.install "bb"
  end
end
