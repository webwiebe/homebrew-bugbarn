class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.104"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.104.tar.gz"
      sha256 "d4b68c82eee39a5208a9ab7ee31d0cc002634c9e0354794df040427286c061af"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.104.tar.gz"
      sha256 "47f0a5bb6f6e74a420c776ff92ea5a2621a43625f6921fb3904fc469c6ad7536"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
