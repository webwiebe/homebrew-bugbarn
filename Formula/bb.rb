class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.49"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.49.tar.gz"
      sha256 "01dbb36f13f7803fe26e6af029386e03ba89004312cc3e93029bab101e124c87"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.49.tar.gz"
      sha256 "60e9d631e528df6c838cc833252adfd5d3aa2340cdb907d13dd9862c2b5c3486"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
