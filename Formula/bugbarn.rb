class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.240"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.240.tar.gz"
      sha256 "3eae68c5984d5600a022e0ae15b030f669d925ab5dd8b1c26fa6bdf1deda73fc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.240.tar.gz"
      sha256 "55d57611f5f15f4ee8d78203bd8118da48662a32f11e9623700581126217f34a"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
