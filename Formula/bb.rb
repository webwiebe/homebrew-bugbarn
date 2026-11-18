class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.377"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.377.tar.gz"
      sha256 "fe957116a5ea8104e1ce86d80d482633766da5581e002cdd8c13822c5fd90d78"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.377.tar.gz"
      sha256 "d363bae37ca03c364f4ba352d8ff67f2de456dbae3338aeac190d1435b12231c"
    end
  end

  def install
    bin.install "bb"
  end
end
