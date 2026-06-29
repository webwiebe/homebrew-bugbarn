class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.110"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.110.tar.gz"
      sha256 "323c7e2d8c6032cb8e16fc709903905c1563591927f287b7f51da16be80ebbad"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.110.tar.gz"
      sha256 "f03862f5883819749021209b3f0c2c9e7ea6bd42fb17c515771d9885e71d14c1"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
