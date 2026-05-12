class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.134"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.134.tar.gz"
      sha256 "d3409f134fcd80fc34b5d4a52052ddf8d03eec29d430c63c118d4d7b4981c665"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.134.tar.gz"
      sha256 "9986e74357d520c5443574b3dfb2ff8762eda1bf5c02f5dce9fc60e3cf06c2cf"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
