class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.237"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.237.tar.gz"
      sha256 "b3a93b4150d8f1f4389bfd9958b222a73c977da5b0636e62a342a280b0106163"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.237.tar.gz"
      sha256 "9993446bfe26bc4c1dcab5764622d1ec85013f737d3f1ced97591f055792e727"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
