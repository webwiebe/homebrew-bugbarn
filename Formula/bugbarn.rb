class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.110"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.110.tar.gz"
      sha256 "9e4652f42a1105f04e63316dee47b80b15c1772e663e1cfee330e633cf4f6832"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.110.tar.gz"
      sha256 "a5fa635a3a39abb0a9e4e15d5206dfc74806041212d432d53906aeb9acf953b9"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
