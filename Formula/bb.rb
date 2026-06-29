class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.107"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.107.tar.gz"
      sha256 "8ee5ee8149e40ea321accb9ff3c134a8675a90cec4a8c75dcc2ac752bdbab2fc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.107.tar.gz"
      sha256 "90c51f3fc926eb80a309438451619ba137cc07cd3f1dd5d7f5f5b48d361c637e"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
