class Baid < Formula
  desc "CLI for managing AI agent skills"
  homepage "https://baid.dev"
  url "https://rubygems.org/downloads/baid-0.3.0.gem"
  sha256 "fb94a997fe7c5f2965d745d7caf1fd9192ee3aa51fd2554c36f9c2f32bffae8c"
  license "MIT"

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "install", "--no-document", cached_download
    bin.install Dir["#{libexec}/bin/*"]
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end

  test do
    assert_match "baid", shell_output("#{bin}/baid version")
  end
end