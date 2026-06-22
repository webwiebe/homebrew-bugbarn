class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.91"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.91.tar.gz"
      sha256 "69b0ba75415362561a0915e8f18d58c20d3cad28a594aca4022d163f3553a574"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.91.tar.gz"
      sha256 "e023081f2bf304b5ec7ebac99a71fbf8333ff9df9a6c843f65a38d628cf4d463"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
