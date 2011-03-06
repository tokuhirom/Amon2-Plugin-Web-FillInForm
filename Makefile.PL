use inc::Module::Install;
use Module::Install::AuthorTests;

name 'Amon2-Plugin-Web-FillInForm';
all_from 'lib/Amon2/Plugin/Web/FillInForm.pm';

requires(
    'Amon2'            => '2.28',
    'HTML::FillInForm' => '2.00',
);

tests 't/*.t t/*/*.t t/*/*/*.t t/*/*/*/*.t';
test_requires 'Test::More' => 0.96; # done_testing, subtest
author_tests('xt');

WriteAll;
