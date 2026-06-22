class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.92"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.92.tar.gz"
      sha256 "96fba8b56b2fbce2b8ab2a11fc7719731f964a698efaa3d7b8be16f29f395d4f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.92.tar.gz"
      sha256 "852c658886d687db71554fe4335b4d10eeb4f820d3eab2e2dcba4bf7021e1933"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
