class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.70"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.70.tar.gz"
      sha256 "8627ffcd03b8fdc477bb854c5d7fcdf082c6a6da91e35910dcc6a8fb7d60edfd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.70.tar.gz"
      sha256 "d434ef8040cfe4069f5913d52c9c76a54330c56c9dd3c85f48a36cf063477d4d"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
