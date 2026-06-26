class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.106"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.106.tar.gz"
      sha256 "853ab30ba3409a1fa6a6d10ee215144ac4702b548c50183dfd24394bc639bded"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.106.tar.gz"
      sha256 "dc108bf3fd8a72a7325a90a1dcfb8c2d1b584446a3e385ad98c255c6b5416ad8"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
