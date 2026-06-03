class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.58"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.58.tar.gz"
      sha256 "c2e37b9de4e9f7e0a05016304e423f485fdfbcd26dbc5b37fe245b3b412ab8a5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.58.tar.gz"
      sha256 "918716103a80ca4dac16c67ec6c3d59471e4fcae88821933f5e01bed484689b5"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
