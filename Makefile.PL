use inc::Module::Install;

RTx     'RT-Extension-QuickAssign';
license 'gpl_2';
repository 'https://github.com/NETWAYS/rt-extension-quickassign';
readme_from 'lib/RT/Extension/Netways.pm';

requires_rt '4.4.2';

sign;
WriteAll;
