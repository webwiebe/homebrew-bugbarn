class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.90"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.90.tar.gz"
      sha256 "674c0eda2f55a43ac228c10721f5e96628d3ae4603b918b682e7725bcf0e64ae"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.90.tar.gz"
      sha256 "96c7d3a2f4678dc80f202a9ed0ea6960f51a2e8bf5b27309a5477989a627322c"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
