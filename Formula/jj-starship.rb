class JjStarship < Formula
  desc "Unified Starship prompt module for Git and Jujutsu repositories"
  homepage "https://github.com/dmmulroy/jj-starship"
  url "https://github.com/dmmulroy/jj-starship/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "f6a1dd76afaf140c5a41cdab29f52875910d697a3adcb30c6bcfab19759ef9fe"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "jj-starship", shell_output("#{bin}/jj-starship --help")
  end
end
