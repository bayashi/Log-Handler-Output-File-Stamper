use strict;
use warnings;
use Test::More 0.88;
use File::Temp qw/ tempfile tempdir /;

use Log::Handler;
use Log::Handler::Output::File::Stamper;

ok 1;

if ($ENV{AUTHOR_TEST}) {

    {
        my $stamp = Log::Handler::Output::File::Stamper->new(
            filename => 'foo.log.%d{yyyyMMdd}'
        );

        is ref($stamp), 'Log::Handler::Output::File::Stamper', 'new';
    }

    {
        my $log = Log::Handler->new;
        $log->add(
            'Log::Handler::Output::File::Stamper' => +{
                filename => 'foo.log.%d{yyyyMMdd}'
            }
        );
        is ref($log), 'Log::Handler', 'handler';
        is(
            ref($log->{outputs}[0]{output}),
            'Log::Handler::Output::File::Stamper',
            'added stamper'
        );
    }

}

done_testing;
