class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.243"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.243.tar.gz"
      sha256 "f539f662fac409e4d3ddaab432829a7e18f3bd78136c045103c069a99e93e5c6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.243.tar.gz"
      sha256 "875471d1951c15f1372bd8b99ef97fafa720a2fb62604471cb09daf5b08ce1fe"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
