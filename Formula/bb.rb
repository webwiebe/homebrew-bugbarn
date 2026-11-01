class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.314"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.314.tar.gz"
      sha256 "e1f42180617d8a4ef90f18d7391295803786030d2e80e60290f5e6c4dad0530f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.314.tar.gz"
      sha256 "bbcdd035653cf72d2c555f3627cc830469c33bffc5f02951b5538cd4ae73e081"
    end
  end

  def install
    bin.install "bb"
  end
end
