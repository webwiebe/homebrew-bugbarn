class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.129"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.129.tar.gz"
      sha256 "40d997a358d1af4e97c00a5eebf3434af52b207e1c32fd99fd09f362fd792b3e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.129.tar.gz"
      sha256 "f58c055ac0ea714f0dc91d934ffa6be1f4dd9f7eaaaf7605b9fe0b309715ed53"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
