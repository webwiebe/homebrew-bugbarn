class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.311"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.311.tar.gz"
      sha256 "46decc281875e87d7bc860d5037bfab59f4ef71ce5c8265af61303b803198abc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.311.tar.gz"
      sha256 "4d2e9cf1d4aa36bb6e657deaefdf6545ac5c77121b40afbe85a94b38d77e7410"
    end
  end

  def install
    bin.install "bb"
  end
end
