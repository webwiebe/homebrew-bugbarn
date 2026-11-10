class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.341"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.341.tar.gz"
      sha256 "1bfa31f27da8065ede16b5cd86a078b4df8d16b8d898c67096a96b5a39accc1b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.341.tar.gz"
      sha256 "247d1e8cdde6576fc1e02d89357f3bcfefe8c2b9491019480bee48723a020e69"
    end
  end

  def install
    bin.install "bb"
  end
end
