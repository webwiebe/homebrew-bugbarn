class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.1.tar.gz"
      sha256 "2f934ff6f41c80db4a89f46990e38cd87ea5c59d8234e972237ebb6e3bc05311"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.1.tar.gz"
      sha256 "40de04b6b435b74a8092dfd8d6c420f6fa64e6e214ebf7826eb2712a03e50e85"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
