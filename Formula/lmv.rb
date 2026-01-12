class Lmv < Formula
  desc "Local Markdown Viewer - view and edit markdown files in your browser"
  homepage "https://github.com/dmmulroy/lmv"
  version "v0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dmmulroy/lmv/releases/download/vv0.2.0/lmv-darwin-arm64.tar.gz"
      sha256 "e8a851fdada9f78e1de06434a39e2f4216ed9a2932a781e2f3f221c978cfc839"
    else
      url "https://github.com/dmmulroy/lmv/releases/download/vv0.2.0/lmv-darwin-x64.tar.gz"
      sha256 "e9f5c3805ba101d08f3ecaf8e568ae5ee16777b7d12d0e62adb3fbe003c9f831"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dmmulroy/lmv/releases/download/vv0.2.0/lmv-linux-arm64.tar.gz"
      sha256 "4a040cce7d680bf6ef5296e0c15d1f806f3d50fde3cdf48efab9e41208355028"
    else
      url "https://github.com/dmmulroy/lmv/releases/download/vv0.2.0/lmv-linux-x64.tar.gz"
      sha256 "64c2ad8c4fa8e0d571f166952469f930593e380037cfcd88a5b39566c4f62117"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "lmv-darwin-arm64" => "lmv"
      else
        bin.install "lmv-darwin-x64" => "lmv"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "lmv-linux-arm64" => "lmv"
      else
        bin.install "lmv-linux-x64" => "lmv"
      end
    end
  end

  test do
    assert_match "lmv", shell_output("#{bin}/lmv --help")
  end
end
