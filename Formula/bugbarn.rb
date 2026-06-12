class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.75"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.75.tar.gz"
      sha256 "64e26b4221368e1059edf486938d2ffdc64cad225be05733583fa4b63aebd9be"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.75.tar.gz"
      sha256 "4204732d117a6b38fc19295aa4eed4bb4c2b7c298b335776734849a6be9a3629"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
