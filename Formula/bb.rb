class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.91"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.91.tar.gz"
      sha256 "b367bcd856c87ef28e07330e2bbb95fd097289b3da10df96d12c02fdd8333372"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.91.tar.gz"
      sha256 "7cb422912a5209cfae271d22ceb2dddc8672d791f3c81c4225c6b5d1abae3c95"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
