class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.43"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.43.tar.gz"
      sha256 "81b3d8bfb6ff2d7923f645d42a559360610108f75a97a014834f4f80a7f722a7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.43.tar.gz"
      sha256 "3767f28fa73f04dbfbb79c3d4a8ab373d90151f3200af2eb40d90f82f072ca68"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
