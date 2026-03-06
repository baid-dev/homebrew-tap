class Baid < Formula
  desc "CLI for managing AI agent skills"
  homepage "https://baid.dev"
  url "https://rubygems.org/downloads/baid-0.1.0.gem"
  sha256 "3fe6a785e79d1de43f1a7fef10006643615939ce099879ab649a6ce5d2574038"
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