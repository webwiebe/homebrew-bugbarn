class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.161"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.161.tar.gz"
      sha256 "3789793a95772dcf0f75c247751e3797b41871a188531ac0193d059fd03c551b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.161.tar.gz"
      sha256 "eb5518b3f2b35230f45233dde2e6dc0096b9d0f39053347cf34f530cb676276a"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
