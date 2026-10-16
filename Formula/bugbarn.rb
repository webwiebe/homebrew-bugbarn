class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.263"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.263.tar.gz"
      sha256 "59b3694a1630712c147a4bfc041283c5e88216310d7615f6cc9f34d3b2c7d177"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.263.tar.gz"
      sha256 "1e04c6d841bdc40e21ecde82c83a17a22de0406eb946e8726007dc45db1345c0"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
