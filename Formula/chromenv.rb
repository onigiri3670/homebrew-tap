# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Chromenv < Formula
  desc ""
  homepage ""
  url "https://github.com/onigiri3670/chromenv/archive/0.0.5.tar.gz"
  sha256 "937b44770dafc64a74a7838b3d332d69320b9b3a2814fa19873c5c0fb060ed4b"
  license ""


  def install
    inreplace "bin/chromenv" do |s|
      s.sub! "CHROMENV_HOME=$(pwd)", "CHROMENV_HOME=#{libexec}/.."
    end
    prefix.install ["bin", "libexec"]
  end

end
