class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.9.tar.gz"
      sha256 "d8978fa75122bc3a03e38dd8e84f1268742390efabbab56072f774f3d8ab5e8c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.9.tar.gz"
      sha256 "b74a84a67c8fca84a52aeb31c31de8ebe7776d08201c7499be7ecee30556ee97"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
