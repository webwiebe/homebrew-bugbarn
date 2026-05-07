class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.77"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.77.tar.gz"
      sha256 "c3d81f574187a86f1c9501bf17ca193ae05cf515b62f3e700d30bb1f49618464"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.77.tar.gz"
      sha256 "db878da91d5ef547a7904e222198598907313c56dfbd6501082d9ffd2c3e6623"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
