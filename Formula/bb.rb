class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.69"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.69.tar.gz"
      sha256 "c52b87233fcfd20fc22fa3ff67f444a47eeb12b0441e5bfc8646f39bf75ae65f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.69.tar.gz"
      sha256 "cdf1df7ec351ab38b76a33bef606b6e06bf3ec0b7a8091f7ac071a74bc6015c6"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
