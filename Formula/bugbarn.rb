class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.89"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.89.tar.gz"
      sha256 "7481512c4d4e4b6b1ade6cff01de429901f404155a6671e1044b2e520d803c6a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.89.tar.gz"
      sha256 "f68934a7213d42e7b1e965fe744a84394f8467e3ed2856b7659de45274332cb6"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
