class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.126"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.126.tar.gz"
      sha256 "83268840d96cbc2a65d4d66a34715cbd39315da9cc3ef228a6b0d23eab8afa48"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.126.tar.gz"
      sha256 "7e6868ad58a63fc591cd852756b9e1589ebe28cdcbcd66efa109d6a872df9bbd"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
