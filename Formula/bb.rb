class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.105"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.105.tar.gz"
      sha256 "531aada5776c44c32af002e6ff321197bd13f28efe346a32381691542b5a3118"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.105.tar.gz"
      sha256 "c243dfb2184fa21c35f3f6f6243f8c9e1b694943f0652fdde61d3a1c04dfc1ed"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
