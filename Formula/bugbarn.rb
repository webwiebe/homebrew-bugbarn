class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.16.tar.gz"
      sha256 "4a278cf6e1341268c78be386ea8faf48630eda70bfb5840d0c0cd8b35dde3650"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.16.tar.gz"
      sha256 "32d2bb4dc08f600cd6005c2be940b8ff5a0451890edb575b783fbe45cb79b3bf"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
