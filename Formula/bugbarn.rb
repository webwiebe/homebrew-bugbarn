class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.41"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.41.tar.gz"
      sha256 "95155757ff1a8bee989f72ff26db8ac454c1edd6b7f34c81941ea80d77a6b3c6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.41.tar.gz"
      sha256 "da70cc90beaf456684356d206a3bfddd527ad9e5ba5053246b5b238f281f99e0"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
