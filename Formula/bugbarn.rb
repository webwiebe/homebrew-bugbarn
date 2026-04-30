class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.8.tar.gz"
      sha256 "edbcb8f37ccd45856ce3c0111cb34e3b9790aabfbb859202304005ee9d816333"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.8.tar.gz"
      sha256 "368ab9a6be5523e3f00c2a1d1bcbbad98fbf40dd7c875a5a458079b5680c0db0"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
