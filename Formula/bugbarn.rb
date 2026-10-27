class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.295"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.295.tar.gz"
      sha256 "c75d62afd218ea5de787224f68f84bf5109589ae3da5ded746bc12b7e5a681e3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.295.tar.gz"
      sha256 "93fcaeabf2d04786e4f1ff2bccbb2fa7b566936461221cb938edfcb91788b4a9"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
