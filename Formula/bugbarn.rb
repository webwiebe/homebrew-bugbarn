class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.101.tar.gz"
      sha256 "ca948b581df96e5766245bbb6373444e66052b5b90f27e6a66fc03c33d64b069"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.101.tar.gz"
      sha256 "65a8c5d3b9b024bf4ba9e6ceb67d4142b5d0a8bf8c928ea274100b4a9cd771ef"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
