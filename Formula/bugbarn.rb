class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.50"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.50.tar.gz"
      sha256 "3a5e95be412b2bf0a231f6062edc80cb7785b024768ab3f0fce68137c1f341bf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.50.tar.gz"
      sha256 "e1f4be20c28c1b0a90c6b55c4dd8102b8cfed2685a4180e7acde94ae4ce0526a"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
