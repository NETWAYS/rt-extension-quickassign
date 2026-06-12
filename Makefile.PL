use inc::Module::Install;

RTx     'RT-Extension-QuickAssign';
license 'gpl_2';
repository 'https://github.com/NETWAYS/rt-extension-quickassign';
readme_from 'lib/RT/Extension/QuickAssign.pm';

requires_rt '6.0.0';

sign;
WriteAll;
