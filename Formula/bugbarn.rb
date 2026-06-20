class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.84"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.84.tar.gz"
      sha256 "8d16492bc34f640df22b6258269af1fb774c71f96c2d0c149e6290a4cf0a3ed8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.84.tar.gz"
      sha256 "9a670177ac99aa212fa1a9eafcd6bf3e7d2bc8794044130aa91783450c26031d"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
