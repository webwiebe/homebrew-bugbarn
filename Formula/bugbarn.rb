class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.2.tar.gz"
      sha256 "aa54c5e37191787b4e56ac9a868f1df4150cca788351881b3daad0b34be6d8d3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.2.tar.gz"
      sha256 "43bbd6c9418bafe00982f4f5420e34da58ba8bb4cab3a23fc15473196459ca34"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
