class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.48"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.48.tar.gz"
      sha256 "e572eab836d5d7fbc2a713be7038de14f9a4f60e86286aef1206efd6fd73b52e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.48.tar.gz"
      sha256 "02cd88a0e20db3e35b7758214ec1d305e0ff62875d4b5d812f11c10b811e76f5"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
