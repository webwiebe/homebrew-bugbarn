class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.120"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.120.tar.gz"
      sha256 "690c653d057bb3f397042b1a39347510b22686d43ba6d3cbec1ff7d29d25a6ea"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.120.tar.gz"
      sha256 "a16bca6c70a283ae3010f5b78981336df30f2f2545b82eeaa273f74988af874d"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
