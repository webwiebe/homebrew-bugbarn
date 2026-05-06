class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.54"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.54.tar.gz"
      sha256 "3b635f9f253cde6299e3c2bb1456713abae090b473e7db9ef89625af5ddedced"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.54.tar.gz"
      sha256 "9642fea697f84b66bde943a3da8beed05573fbedf241c7fa76ef5ace7e4a711e"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
