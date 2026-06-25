class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.98"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.98.tar.gz"
      sha256 "bb1a96929c06360d7d5e0635dde3f577f49576565bbbd041e6418f9bf904df0f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.98.tar.gz"
      sha256 "154a19440f8632a987d5990fe6d8f00727ac63f1ebd8ceabc7291c2231dccf69"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
