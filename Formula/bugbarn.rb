class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.308"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.308.tar.gz"
      sha256 "a94c274e142b2b631b3cb59640e4ec41b7c0aae39b500751f870adbfaab1b834"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.308.tar.gz"
      sha256 "06f81777fea6fa370e8b0cb8b507255a816d2bd562ab3d37941d73a882b6def0"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
