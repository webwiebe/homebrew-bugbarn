class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.4.tar.gz"
      sha256 "c3bf3ba63aa3808d77f635707aa294e4f6f5f63dfdd2952d700304e6113d47df"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.4.tar.gz"
      sha256 "89ea1a9ed6f7ff6aa6f6d9145576e4a88d4b1eca541111380a16d77517a0e201"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
