class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.111"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.111.tar.gz"
      sha256 "3a438e83a3a554555428a0a1815c8a6a176989c408427a11928368a1a2892e07"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.111.tar.gz"
      sha256 "39d232a8eb7c30fe6638f3669079f3ec178b8a8247fd00f926e3a228d56abf82"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
