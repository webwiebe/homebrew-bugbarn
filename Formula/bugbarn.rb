class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.3.tar.gz"
      sha256 "b7fa858e4ed8170928d429bdded9f4107822bd6d14dc8694deb1ed1e700f3bd8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.3.tar.gz"
      sha256 "287afa1221eaf51d023cea39494f77ec2cb10de16a003422afa8197fb2ca3ec0"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
