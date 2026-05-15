class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.152"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.152.tar.gz"
      sha256 "b3ddb4e3efc2a4c5f979cc9b66ef638b2c9aa28fde19e6e49fd30a15bb51c3ad"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.152.tar.gz"
      sha256 "01f713458f2f3835f094cf0447298d30f4d111168bd51526f4b1e82c14669146"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
