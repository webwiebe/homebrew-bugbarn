class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.253"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.253.tar.gz"
      sha256 "f046cab73cbb60c434b135fac0243e255df5cf83662c3d20642cce7b7b7015c2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.253.tar.gz"
      sha256 "4d480fc56993b3c137582de06dc8abe451c3a63cfc406ae2f59a3a71ef693ab1"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
