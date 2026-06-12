class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.75"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.75.tar.gz"
      sha256 "a4696696f4b7e9220562c2a57c0aeca7f844d64dcd72375387b8ab865f291625"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.75.tar.gz"
      sha256 "a8b6dd8e498b7fea47599a8ec3eea47003f57ab88caa65a985c3474ff51ab6ce"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
