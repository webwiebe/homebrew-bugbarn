class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.108"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.108.tar.gz"
      sha256 "9cb3e3057d74dc16d18c3efe53e36f3eefb4fe22b2f5567e8b959e8c2c59f6c3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.108.tar.gz"
      sha256 "50a854ec8a41edbe5e9b885a10fa0396fb81a7a28e3b89612374d6c8b8e4e3a7"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
