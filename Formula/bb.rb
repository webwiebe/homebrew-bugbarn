class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.93"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.93.tar.gz"
      sha256 "9ef12e22816410a1b9dd8f74512d45ea07d007073d91a26971da29c5e0367e78"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.93.tar.gz"
      sha256 "4d0e68e60712864d6fc81e0a991b00743cbf07f02f38be4b9b87c246ef9b56c5"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
