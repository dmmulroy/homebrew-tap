class JjStarship < Formula
  desc "Unified Starship prompt module for Git and Jujutsu repositories"
  homepage "https://github.com/dmmulroy/jj-starship"
  url "https://github.com/dmmulroy/jj-starship/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "099691e16c42ff809376152210717001cfd094fe41895e4148a599b5bab0d319"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "jj-starship", shell_output("#{bin}/jj-starship --help")
  end
end
