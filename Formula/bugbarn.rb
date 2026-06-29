class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.108"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.108.tar.gz"
      sha256 "45c7915e6b0f85f7fa324c7d1334ef3618ee73f6b51074f5c3c7de76704e8843"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.108.tar.gz"
      sha256 "69e40d174b5a6c6b75b46f26ad15da6a2b8db020fae022c134e9b3a6d48f0a03"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
