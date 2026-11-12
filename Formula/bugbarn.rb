class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.357"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.357.tar.gz"
      sha256 "53d7230214ffff2cfc0b571d151c1a31868207aba7965abe64f860c7e07468c2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.357.tar.gz"
      sha256 "84b0c894033928ba1f5761a3a6c34b64b95da1777dfe7c2ea37b6fa65bf546e9"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
