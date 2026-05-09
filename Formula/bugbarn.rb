class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.104"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.104.tar.gz"
      sha256 "cbd2c3515722d03f667fb5dd4a408c7bcfde4954e0e91405274bf3aff76ed9d5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.104.tar.gz"
      sha256 "ef62e3d8fe0e2470eef1b68d7fe9a4d2c76ebbc6665f8a9a1fff70cea29326ad"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
