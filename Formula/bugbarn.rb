class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.92"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.92.tar.gz"
      sha256 "c519a6b0481a44f6983f734101800c163da9c056b37d6757902f33f1f240d2a1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.92.tar.gz"
      sha256 "1bc5295d86f3c3d23b0f6c5075641f0a0fec55d578e87a820979b37532173ad4"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
