class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.386"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.386.tar.gz"
      sha256 "68ce333c31aa830020019606c4543c225d1372b72f80964b48fb19e440db506a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.386.tar.gz"
      sha256 "2dbeb5351ac26d5261466427f62e60a31a2bf265021c5f75fe196c9740163c30"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
