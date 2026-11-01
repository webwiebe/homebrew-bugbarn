class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.314"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.314.tar.gz"
      sha256 "d0e622d2a7cbcd0ef5a2588452a572e9d3498bc40530dc84aa3b481c6b37df3e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.314.tar.gz"
      sha256 "c1cbd95061d7de6512c637fd0f6048805461cb26de558d760dbc7ed7f3aba0bc"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
