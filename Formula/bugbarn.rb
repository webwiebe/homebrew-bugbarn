class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.60"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.60.tar.gz"
      sha256 "96e68b31660db17e0350b40e338a4c91a93bcaa1b91362fe72fbc72aa3f5993f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.60.tar.gz"
      sha256 "3370bada0daa23f7850ff44d21c991145fc696332374e25a3b307cc951d202b9"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
