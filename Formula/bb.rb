class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.56"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.56.tar.gz"
      sha256 "4cf87aad2744d94520997075f22831b248374a0850e1ca0873156fb29cb71634"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.56.tar.gz"
      sha256 "644fbcb74b9f7832fa26d3f1a54ad98f5b78d96467a31b63e3788a461bbc19f1"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
