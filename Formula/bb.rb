class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.70"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.70.tar.gz"
      sha256 "39c77a79bab226185f734d5d017b064f6db9640bf2c2fce4e53316d148c07116"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.70.tar.gz"
      sha256 "362125e6512642ebf42fef23e7c2d31ff876dbc5cc2b72893ce764e4729f6454"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
