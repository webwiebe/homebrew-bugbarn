class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.66"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.66.tar.gz"
      sha256 "9b926bfb35d40e169da34bf5c6080cc57939e88010e55c1cfbbdcacd7d1117fa"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.66.tar.gz"
      sha256 "ebb70f5b82951057656d2644e799c5f0ba034741f848dab20ac856a385bf508d"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
