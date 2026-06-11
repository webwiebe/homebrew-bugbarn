class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.67"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.67.tar.gz"
      sha256 "f71efe19c9640312a6c0ebceedd7e3a965c1f58f6714b91b547adfbe5d7d9467"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.67.tar.gz"
      sha256 "a32b113747dd7a0053bd83a8a773d9b0adefb9a12d0bb5add2e1d2381446d3e6"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
