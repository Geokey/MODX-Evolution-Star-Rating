-- Adminer 3.6.3 MySQL dump

SET NAMES utf8;

DROP TABLE IF EXISTS `modx_star_rating`;
CREATE TABLE `modx_star_rating` (
  `rid` int(11) unsigned NOT NULL COMMENT 'Resource ID',
  `total` int(5) unsigned default NULL COMMENT 'Rating',
  `votes` int(5) unsigned default NULL COMMENT 'Total Votes',
  PRIMARY KEY  (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `modx_star_rating_votes`;
CREATE TABLE `modx_star_rating_votes` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `rid` int(11) unsigned NOT NULL COMMENT 'Resource ID',
  `vote` tinyint(1) unsigned NOT NULL default '0' COMMENT 'Vote',
  `ip` varchar(15) NOT NULL default '0.0.0.0' COMMENT 'IP Address',
  `time` int(11) unsigned NOT NULL default '0' COMMENT 'Voted Time',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- 2013-04-19 12:31:32