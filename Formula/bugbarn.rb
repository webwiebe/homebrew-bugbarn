class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.324"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.324.tar.gz"
      sha256 "dcf5d630e6f8bb2637945d9c31f9e76857c5ff0e9974bf3c085cd55ec0797140"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.324.tar.gz"
      sha256 "309dfb10760944d2bffa0a535aa47828cf3df2c366f6ed424475552b7006a173"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
