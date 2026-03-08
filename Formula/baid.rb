class Baid < Formula
  desc "CLI for managing AI agent skills"
  homepage "https://baid.dev"
  url "https://rubygems.org/downloads/baid-0.3.1.gem"
  sha256 "1a6492d1dc26b8d9edefba3b528539202311d870e6b0bf4cb6242396b2956ff4"
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
