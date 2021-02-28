# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Chromenv < Formula
  desc ""
  homepage ""
  url "https://github.com/onigiri3670/chromenv/archive/0.1.0.tar.gz"
  sha256 "c4debb9a36295a6f3df6a027710a90894152ca5f32f84ec15b204e2e648a5e6d"
  license ""


  def install
    inreplace "bin/chromenv" do |s|
      s.sub! "CHROMENV_HOME=$(pwd)", "CHROMENV_HOME=#{libexec}/.."
    end
    prefix.install ["bin", "libexec", "master", "versions"]
  end

end
