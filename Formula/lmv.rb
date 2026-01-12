class Lmv < Formula
  desc "Local Markdown Viewer - view and edit markdown files in your browser"
  homepage "https://github.com/dmmulroy/lmv"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dmmulroy/lmv/releases/download/v0.2.0/lmv-darwin-arm64.tar.gz"
      sha256 "eb323e1ada1c3d17cb3bad5f5bc95d39f37aa6f35bb322d168cd42170b88644f"
    else
      url "https://github.com/dmmulroy/lmv/releases/download/v0.2.0/lmv-darwin-x64.tar.gz"
      sha256 "9fda204dcce96b3ca7098e6383c9b3008ddcc41cf33ddda732522ceca4968bbb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dmmulroy/lmv/releases/download/v0.2.0/lmv-linux-arm64.tar.gz"
      sha256 "7ecd3d3589dc99e3565055f57186334b2d0f7fba5b93da5427921bbff664c6aa"
    else
      url "https://github.com/dmmulroy/lmv/releases/download/v0.2.0/lmv-linux-x64.tar.gz"
      sha256 "5265add2acbaaa4ee8b504e6258b3164ad4233eb03c942936375d1c81a650a35"
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
