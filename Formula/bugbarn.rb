class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.131"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.131.tar.gz"
      sha256 "6f99296538bb9fbfcc823dcf1bc8cbd8bfcb6bd8ed91d03bbe96864d87625b86"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.131.tar.gz"
      sha256 "a8cf87f804300bd0cb92c87492eb4cba24066ecfbc2a6d496b1806c45d7ff6b4"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
