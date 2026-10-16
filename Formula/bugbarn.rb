class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.257"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.257.tar.gz"
      sha256 "bb0fe1d6b9f3852cf07fd5e7326ce8ef0b8c765ebb9e80fd0551a6b675da34c8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.257.tar.gz"
      sha256 "8fc1cdf1976bb021242f89d7e46572b92d7c96ef030d320e92548b0fe068eac2"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
