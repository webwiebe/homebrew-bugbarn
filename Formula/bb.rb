class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.200"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.200.tar.gz"
      sha256 "7a089861a3c1e3062a76353a5944b7b138258223cb51b8d4167babbc7b86b4b8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.200.tar.gz"
      sha256 "bd789670f5ef8dce1623f26b48040a834587814e685735327fa69daa95408909"
    end
  end

  def install
    bin.install "bb"
  end
end
