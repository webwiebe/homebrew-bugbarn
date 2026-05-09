class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.106"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.106.tar.gz"
      sha256 "78c8cb58834f680e8b1144590207623556189dcc190773f0c0ae3791016377a8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.106.tar.gz"
      sha256 "00e63969c670a63760990b6c1791b75d142fc594ab01dc685687b48e81eae0cb"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
