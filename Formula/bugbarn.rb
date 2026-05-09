class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.101.tar.gz"
      sha256 "299f51bb67e272ec4e75e559cca483f0d487d91d7a887fa4865c48f9b07e598c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.101.tar.gz"
      sha256 "68ac36f2949c3ea6d4ba69605fbcd142a8895cee1fa21b1e0590002ed854b1ed"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
