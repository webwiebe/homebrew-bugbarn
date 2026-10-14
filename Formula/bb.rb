class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.250"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.250.tar.gz"
      sha256 "b7568cf6ba1909d86623dade8271cc73fa22efc95a0e06d92a7ccfc539d93e97"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.250.tar.gz"
      sha256 "bcea6a7d9533b141d6ec97d9659d4911d7fdae3b778f8f7dbcee38b78dc60f7b"
    end
  end

  def install
    bin.install "bb"
  end
end
