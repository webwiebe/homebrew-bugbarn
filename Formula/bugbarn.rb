class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.3.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.3.11.tar.gz"
      sha256 "4ea9a0b30ac08583cf7c702296834e9a147993bc542cc37fb1b0dc86867a76c8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.3.11.tar.gz"
      sha256 "40c6cc32795068e3affae6b352214bebc5697bb705263175fe687beb87dee5e5"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
