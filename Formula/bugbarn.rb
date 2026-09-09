class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.179"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.179.tar.gz"
      sha256 "fa07d94ea2d4afc0e1af5aeacde6cd6e1b34691275938b9f88e625d355d89b70"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.179.tar.gz"
      sha256 "184102339d41b2ba0833fb926d7a8f61840576703c63119a77e70fb5946b5a04"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
