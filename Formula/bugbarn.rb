class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.45"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.45.tar.gz"
      sha256 "cdf932c625fe69baafeff5508aa5d5e8a4b79f5c5ca725555682a93caa3e5be8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.45.tar.gz"
      sha256 "0ee7b4a3502c7b427088557fe15d667d14e8701766ccba0bcbc86e7c31fe1bb2"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
