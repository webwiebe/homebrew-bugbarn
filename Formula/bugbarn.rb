class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.213"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.213.tar.gz"
      sha256 "e1f21e341f87834a15afe1663a9c2f6ef1469ed117058e774a12c8520388c655"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.213.tar.gz"
      sha256 "d4de85a3db6a85e0fbcd09d7428eb09ca640946e627c558a626b240288bcfe2a"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
