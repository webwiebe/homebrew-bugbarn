class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.363"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.363.tar.gz"
      sha256 "5db605028b1025e516d8551102b16a0138737f1f01bf01a46753d9550c9524ca"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.363.tar.gz"
      sha256 "028a6cdcc5371a03b2905944c01350325be3418622925f6f180fcdd888d18e2c"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
