class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.279"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.279.tar.gz"
      sha256 "559243c5bcafc745e75e5d45f00e983bac863e26831698626a17d8c79c2964a7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.279.tar.gz"
      sha256 "3dfb3dd2edb7ebae6b640986e7eafbe42f65d73047f8da5ef0a9778b3b745c41"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
