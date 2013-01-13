use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Log::Handler::Output::File::Stamper',
    license             => 'perl',
    dist_author         => 'Dai Okabayashi <bayashi@cpan.org>',
    dist_version_from   => 'lib/Log/Handler/Output/File/Stamper.pm',
    build_requires      => {
        'Test::More' => 0.88,
    },
    requires => {
        'perl' => '5.8.1',
        'Carp' => 0,
    },
    add_to_cleanup      => [ 'Log-Handler-Output-File-Stamper-*' ],
    meta_merge     => {
      resources => {
        repository  => 'http://github.com/bayashi/Log-Handler-Output-File-Stamper'
      }
    },
    recursive_test_files => 1,
);

$builder->create_build_script();
