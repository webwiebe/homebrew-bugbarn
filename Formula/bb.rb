class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.85"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.85.tar.gz"
      sha256 "3f1c18b36f720905836f3f22701fb6d1e4eff58311fcc75db4113cb264294e99"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.85.tar.gz"
      sha256 "7bd56ed00e35173912bd0d2aaaf0cf2ce3fe2cc6d7a1276d9eed3591932fc551"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
