class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.296"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.296.tar.gz"
      sha256 "44fb49422c81e4203e980fddeb87d2d1774bfaea2bb136df19ef8eb736846d4c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.296.tar.gz"
      sha256 "a75999cb3dd84bca7df20691b43087a0b8e606cc4857d92205fe61692dda31d8"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
