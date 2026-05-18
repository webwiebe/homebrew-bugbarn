class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.1.tar.gz"
      sha256 "da5e1d315155323938b27a6489ad5160fd7ac4b4692f69d6e0f3ddba8369a362"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.1.tar.gz"
      sha256 "b47352ff4e58c866747cec6def8f44b6ea8c12f7b76714aca8244ccf9db4058e"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
