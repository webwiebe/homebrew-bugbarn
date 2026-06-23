class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.96"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.96.tar.gz"
      sha256 "a0f5c3875a9a70b617db1b120e71e0db36d4e194ace80ef0d74b1a1d1eacc01c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.96.tar.gz"
      sha256 "027bc06ef14d65580d5d09ab4ca31c825272410b980d794ff04feb506d3e1e00"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
