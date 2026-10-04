class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.190"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.190.tar.gz"
      sha256 "ec876ddc62dd9b690ec7cb7778d549f8b56d2b9e532a99a46f04ab442a0c813f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.190.tar.gz"
      sha256 "fe1b2ecbe2abfa2e2e7186287924e4747656c00b1022149e7e6fdbcd89256fdb"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
