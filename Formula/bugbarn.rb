class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.169"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.169.tar.gz"
      sha256 "0b0cd49a98c6df4614d7002aca6de272315355f9cf95fcb4991ce0ad78911150"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.169.tar.gz"
      sha256 "5f4ced278db0aae6f935c1ab139e52b7d52906e58ba632881eaad7774aea980b"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
