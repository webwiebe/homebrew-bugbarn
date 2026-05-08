class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.82"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.82.tar.gz"
      sha256 "b528bb5cfd529cbc27f6786c9af7aba47ac983321de6d3bdb57369cb72613040"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.82.tar.gz"
      sha256 "3d636a05d4951f2431694ec34bea4cc0a3510ba29f06adc19ba927a8605168d1"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
