class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.90"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.90.tar.gz"
      sha256 "a8a75ab86ee1c97b023141c7a8ecb10ef7a1866d8222583e25320d13c0a1714a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.90.tar.gz"
      sha256 "82a2af713c5976d59eb53feb4d389f72b26330a198e0af8e088249db750d69e1"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
