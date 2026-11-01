class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.316"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.316.tar.gz"
      sha256 "b924677196b512526a918688e04bb20c1a9e637a99fd26b45165530c80bf4c17"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.316.tar.gz"
      sha256 "c018ebf8a7647a9c9f6aa318f70dbb71df17efa307cd81c546606634a283d440"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
