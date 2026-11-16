% 200 recorded inputs and outputs (swipl -g record -t halt io/run.pl writes this; check compares).
io(1, ambiguous, [[[1]-[]]], ask([2])).
io(2, candidates, [[[4, 1]-[1, 4], [5, 2, 4, 1]-[1, 2, 4, 5]]], [msort, dedupe]).
io(3, split, [[identity, reverse, msort, dedupe, drop_first, evens, inc], [2, 2, 2, 1]], [[1, 2]-[dedupe], [1, 2, 2, 2]-[msort, reverse], [2, 2, 1]-[drop_first], [2, 2, 2]-[evens], [2, 2, 2, 1]-[identity], [3, 3, 3, 2]-[inc]]).
io(4, ambiguous, [[[4, 3]-[3, 4], []-[]]], ask([1, 1, 2])).
io(5, candidates, [[[]-[], [2]-[]]], [drop_first]).
io(6, split, [[drop_first], [1, 1, 3, 3]], [[1, 3, 3]-[drop_first]]).
io(7, ambiguous, [[[2, 2, 1, 5]-[2, 2, 1, 5]]], clear(identity)).
io(8, candidates, [[[]-[], [3, 2, 1]-[1, 2, 3]]], [reverse, msort, dedupe]).
io(9, split, [[identity, reverse, msort, dedupe, drop_first, evens, inc], [3, 4]], [[3, 4]-[dedupe, identity, msort], [4]-[drop_first, evens], [4, 3]-[reverse], [4, 5]-[inc]]).
io(10, ambiguous, [[[3, 2, 1, 4]-[2, 4], [2, 5]-[2], [1, 2]-[2]]], clear(evens)).
io(11, candidates, [[[1, 2]-[2, 3], [1, 5]-[2, 6]]], [inc]).
io(12, split, [[inc], [1]], [[2]-[inc]]).
io(13, ambiguous, [[[5, 1, 1, 1]-[5, 1, 1, 1], [2, 4]-[2, 4], []-[]]], clear(identity)).
io(14, candidates, [[[]-[], []-[], []-[]]], [identity, reverse, msort, dedupe, drop_first, evens, inc]).
io(15, split, [[msort, dedupe], [4, 3, 5]], [[3, 4, 5]-[dedupe, msort]]).
io(16, ambiguous, [[[3, 3]-[3, 3], [5, 3, 5, 2]-[2, 5, 3, 5]]], clear(reverse)).
io(17, candidates, [[[1, 5]-[], [5, 2]-[2]]], [evens]).
io(18, split, [[msort], []], [[]-[msort]]).
io(19, ambiguous, [[[5, 4, 5]-[5, 4, 5], [5, 5]-[5, 5]]], ask([1, 2])).
io(20, candidates, [[[1, 1, 5]-[1, 1, 5]]], [identity, msort]).
io(21, split, [[dedupe], [4, 2, 2]], [[2, 4]-[dedupe]]).
io(22, ambiguous, [[[1, 2, 4, 2]-[2, 4, 2], [2, 3]-[3], [1, 5, 2, 3]-[5, 2, 3]]], clear(drop_first)).
io(23, candidates, [[[4]-[4], []-[]]], [identity, reverse, msort, dedupe, evens]).
io(24, split, [[identity, reverse, msort], [1, 1]], [[1, 1]-[identity, msort, reverse]]).
io(25, ambiguous, [[[4]-[4]]], ask([1, 1, 2])).
io(26, candidates, [[[5]-[5], [4]-[4], [2, 5, 1]-[1, 2, 5]]], [msort, dedupe]).
io(27, split, [[identity, reverse, msort, dedupe, drop_first, evens, inc], []], [[]-[dedupe, drop_first, evens, identity, inc, msort, reverse]]).
io(28, ambiguous, [[[]-[], [5]-[], [3, 3]-[3]]], clear(drop_first)).
io(29, candidates, [[[4, 2, 5, 5]-[5, 3, 6, 6], [5, 2]-[6, 3]]], [inc]).
io(30, split, [[identity], [3]], [[3]-[identity]]).
io(31, ambiguous, [[[]-[]]], ask([1, 1, 2])).
io(32, candidates, [[[4, 1, 5, 4]-[5, 2, 6, 5], [2]-[3]]], [inc]).
io(33, split, [[identity, reverse, msort, dedupe, drop_first, evens, inc], [1, 3]], [[]-[evens], [1, 3]-[dedupe, identity, msort], [2, 4]-[inc], [3]-[drop_first], [3, 1]-[reverse]]).
io(34, ambiguous, [[[1, 1]-[2, 2], [3, 4, 4, 2]-[4, 5, 5, 3]]], clear(inc)).
io(35, candidates, [[[4, 1, 2, 1]-[1, 2, 1]]], [drop_first]).
io(36, split, [[reverse, msort], [3, 4]], [[3, 4]-[msort], [4, 3]-[reverse]]).
io(37, ambiguous, [[[4]-[], [2, 4, 5, 3]-[4, 5, 3], [2]-[]]], clear(drop_first)).
io(38, candidates, [[[]-[], [2]-[3]]], [inc]).
io(39, split, [[identity, reverse, msort, dedupe, drop_first, evens, inc], [5]], [[]-[drop_first, evens], [5]-[dedupe, identity, msort, reverse], [6]-[inc]]).
io(40, ambiguous, [[[]-[], [5, 4, 3]-[3, 4, 5], [3, 1, 1]-[1, 3]]], clear(dedupe)).
io(41, candidates, [[[2, 2, 1, 3]-[1, 2, 2, 3], [2, 4, 5, 5]-[2, 4, 5, 5]]], [msort]).
io(42, split, [[inc], [4]], [[5]-[inc]]).
io(43, ambiguous, [[[1]-[1], []-[], [5, 5]-[5, 5]]], ask([1, 3, 2])).
io(44, candidates, [[[2, 2]-[3, 3], [3]-[4], [1, 3, 4]-[2, 4, 5]]], [inc]).
io(45, split, [[drop_first, evens], [2, 5]], [[2]-[evens], [5]-[drop_first]]).
io(46, ambiguous, [[[1]-[1], [2, 5, 2]-[2, 2, 5], [4, 5]-[4, 5]]], clear(msort)).
io(47, candidates, [[[1, 4]-[4, 1], [3, 2, 3, 4]-[4, 3, 2, 3]]], [reverse]).
io(48, split, [[reverse, msort, dedupe], []], [[]-[dedupe, msort, reverse]]).
io(49, ambiguous, [[[5, 4]-[4, 5], []-[]]], ask([1, 1, 2])).
io(50, candidates, [[[3, 1]-[4, 2], [1, 5]-[2, 6]]], [inc]).
io(51, split, [[dedupe], [2, 1, 5, 4]], [[1, 2, 4, 5]-[dedupe]]).
io(52, ambiguous, [[[1]-[1], [4, 1, 2]-[4, 1, 2], [4, 2, 1, 3]-[4, 2, 1, 3]]], clear(identity)).
io(53, candidates, [[[4, 3]-[4, 3], [1, 4]-[1, 4], [2, 4, 2]-[2, 4, 2]]], [identity]).
io(54, split, [[msort, dedupe], []], [[]-[dedupe, msort]]).
io(55, ambiguous, [[[5, 1, 5]-[1, 5, 5], [4, 5, 4]-[4, 4, 5], [1, 5, 3]-[1, 3, 5]]], clear(msort)).
io(56, candidates, [[[3, 1, 2]-[1, 2, 3], []-[]]], [msort, dedupe]).
io(57, split, [[evens], [2, 5, 1]], [[2]-[evens]]).
io(58, ambiguous, [[[4, 4, 2, 3]-[5, 5, 3, 4], [4, 3, 3, 1]-[5, 4, 4, 2], [2, 2, 4, 3]-[3, 3, 5, 4]]], clear(inc)).
io(59, candidates, [[[]-[], [5]-[5], [3, 4]-[3, 4]]], [identity, msort, dedupe]).
io(60, split, [[drop_first], [2, 1]], [[1]-[drop_first]]).
io(61, ambiguous, [[[2]-[3], [1]-[2], [4, 3, 1]-[5, 4, 2]]], clear(inc)).
io(62, candidates, [[[]-[]]], [identity, reverse, msort, dedupe, drop_first, evens, inc]).
io(63, split, [[msort, dedupe], [2, 4]], [[2, 4]-[dedupe, msort]]).
io(64, ambiguous, [[[4, 1]-[1], []-[]]], clear(drop_first)).
io(65, candidates, [[[5]-[5]]], [identity, reverse, msort, dedupe]).
io(66, split, [[drop_first], [4, 2, 3, 2]], [[2, 3, 2]-[drop_first]]).
io(67, ambiguous, [[[]-[], [1, 5]-[5, 1], [5, 5]-[5, 5]]], clear(reverse)).
io(68, candidates, [[[3, 4]-[3, 4], [5, 2, 2]-[5, 2, 2], [5, 3]-[5, 3]]], [identity]).
io(69, split, [[identity], [3, 1, 2]], [[3, 1, 2]-[identity]]).
io(70, ambiguous, [[[1, 5, 3, 1]-[1, 3, 5], [4, 2, 4]-[2, 4]]], clear(dedupe)).
io(71, candidates, [[[5, 4, 2, 4]-[4, 2, 4], [5, 5]-[5], [4, 2, 5, 1]-[2, 5, 1]]], [drop_first]).
io(72, split, [[identity, msort, dedupe], [3]], [[3]-[dedupe, identity, msort]]).
io(73, ambiguous, [[[1]-[1], [4, 3, 4, 1]-[1, 3, 4]]], clear(dedupe)).
io(74, candidates, [[[3, 2]-[4, 3], [5, 5, 3]-[6, 6, 4]]], [inc]).
io(75, split, [[msort], [5, 1]], [[1, 5]-[msort]]).
io(76, ambiguous, [[[2, 1, 5, 4]-[1, 2, 4, 5], [2]-[2]]], ask([1, 1])).
io(77, candidates, [[[4, 1, 1, 4]-[1, 1, 4, 4]]], [msort]).
io(78, split, [[msort], [3, 2]], [[2, 3]-[msort]]).
io(79, ambiguous, [[[5, 2, 3, 4]-[2, 3, 4, 5]]], ask([1, 1])).
io(80, candidates, [[[5, 2, 2, 2]-[5, 2, 2, 2]]], [identity]).
io(81, split, [[identity, reverse, msort, evens], [2, 3]], [[2]-[evens], [2, 3]-[identity, msort], [3, 2]-[reverse]]).
io(82, ambiguous, [[[]-[]]], ask([1, 1, 2])).
io(83, candidates, [[[1, 5, 3]-[1, 5, 3]]], [identity]).
io(84, split, [[inc], [3, 5, 4, 4]], [[4, 6, 5, 5]-[inc]]).
io(85, ambiguous, [[[2, 1, 2, 3]-[1, 2, 3], [4, 1, 4, 4]-[1, 4, 4], [2]-[]]], clear(drop_first)).
io(86, candidates, [[[3, 2]-[2], [5, 5]-[], [3, 1, 2]-[2]]], [evens]).
io(87, split, [[identity, reverse, msort, dedupe, evens], []], [[]-[dedupe, evens, identity, msort, reverse]]).
io(88, ambiguous, [[[2, 1]-[1, 2]]], ask([1, 1, 2])).
io(89, candidates, [[[4, 5]-[4, 5], []-[], [2]-[2]]], [identity, msort, dedupe]).
io(90, split, [[reverse], [1, 5, 1, 1]], [[1, 1, 5, 1]-[reverse]]).
io(91, ambiguous, [[[2]-[2], [1, 5, 5]-[1, 5, 5], [2]-[2]]], ask([2, 1])).
io(92, candidates, [[[5, 3, 3]-[3, 3, 5]]], [reverse, msort]).
io(93, split, [[identity, msort, dedupe], []], [[]-[dedupe, identity, msort]]).
io(94, ambiguous, [[[1, 4, 1]-[1, 4]]], clear(dedupe)).
io(95, candidates, [[[4, 5]-[4, 5]]], [identity, msort, dedupe]).
io(96, split, [[inc], [1, 3]], [[2, 4]-[inc]]).
io(97, ambiguous, [[[1, 1, 5]-[1, 5], [5, 2]-[2], [3, 1]-[1]]], clear(drop_first)).
io(98, candidates, [[[5, 1, 5, 4]-[4, 5, 1, 5], [1, 5]-[5, 1]]], [reverse]).
io(99, split, [[evens], [4, 3, 5]], [[4]-[evens]]).
io(100, ambiguous, [[[4]-[4], [4, 5, 5, 5]-[5, 5, 5, 4], []-[]]], clear(reverse)).
io(101, candidates, [[[1, 4, 1, 5]-[4, 1, 5]]], [drop_first]).
io(102, split, [[identity, msort, dedupe], [2, 5, 4]], [[2, 4, 5]-[dedupe, msort], [2, 5, 4]-[identity]]).
io(103, ambiguous, [[[]-[]]], ask([1, 1, 2])).
io(104, candidates, [[[4, 3, 2, 2]-[2, 3, 4], []-[]]], [dedupe]).
io(105, split, [[drop_first], [2, 4]], [[4]-[drop_first]]).
io(106, ambiguous, [[[1]-[], [1, 3, 1, 4]-[3, 1, 4]]], clear(drop_first)).
io(107, candidates, [[[3]-[3], [3, 1, 3]-[3, 1, 3], [4]-[4]]], [identity, reverse]).
io(108, split, [[inc], [3, 1, 5]], [[4, 2, 6]-[inc]]).
io(109, ambiguous, [[[1]-[], [4, 5, 5, 4]-[4, 4], [2, 4, 5, 4]-[2, 4, 4]]], clear(evens)).
io(110, candidates, [[[5]-[6], [3]-[4], []-[]]], [inc]).
io(111, split, [[reverse, msort], [1]], [[1]-[msort, reverse]]).
io(112, ambiguous, [[[1, 3, 2]-[2], []-[]]], clear(evens)).
io(113, candidates, [[[2, 5, 5]-[5, 5]]], [drop_first]).
io(114, split, [[identity], [3, 1, 4]], [[3, 1, 4]-[identity]]).
io(115, ambiguous, [[[3, 5, 4, 5]-[3, 4, 5, 5], [3]-[3]]], clear(msort)).
io(116, candidates, [[[4]-[5], [5, 5]-[6, 6]]], [inc]).
io(117, split, [[inc], [2, 5, 2]], [[3, 6, 3]-[inc]]).
io(118, ambiguous, [[[4, 5, 2, 3]-[2, 3, 4, 5], []-[], [2, 4]-[2, 4]]], ask([1, 1])).
io(119, candidates, [[[4, 2, 1, 1]-[5, 3, 2, 2], []-[]]], [inc]).
io(120, split, [[inc], []], [[]-[inc]]).
io(121, ambiguous, [[[1, 2, 3, 1]-[1, 1, 2, 3]]], clear(msort)).
io(122, candidates, [[[4, 5]-[5, 4], [4, 1, 1, 5]-[5, 1, 1, 4], [3]-[3]]], [reverse]).
io(123, split, [[inc], [3, 1]], [[4, 2]-[inc]]).
io(124, ambiguous, [[[2, 4]-[2, 4], []-[]]], ask([1, 2, 1])).
io(125, candidates, [[[4]-[4], [4]-[4], [5, 3, 5]-[5, 3, 5]]], [identity, reverse]).
io(126, split, [[identity], [1, 5, 4, 1]], [[1, 5, 4, 1]-[identity]]).
io(127, ambiguous, [[[5, 4, 1]-[6, 5, 2], []-[], [2, 3, 1]-[3, 4, 2]]], clear(inc)).
io(128, candidates, [[[5, 1, 4]-[1, 4], []-[]]], [drop_first]).
io(129, split, [[reverse], [5, 5, 4]], [[4, 5, 5]-[reverse]]).
io(130, ambiguous, [[[2, 4]-[2, 4], [4]-[4]]], ask([1, 2, 1])).
io(131, candidates, [[[]-[], [2, 5, 3]-[2, 3, 5], [3, 3, 5]-[3, 3, 5]]], [msort]).
io(132, split, [[identity], [5, 1, 2, 4]], [[5, 1, 2, 4]-[identity]]).
io(133, ambiguous, [[[2, 3, 3, 1]-[3, 4, 4, 2], [2, 5]-[3, 6]]], clear(inc)).
io(134, candidates, [[[3]-[3], [5]-[5], [5, 4]-[4, 5]]], [reverse, msort, dedupe]).
io(135, split, [[msort], [3, 1, 2, 5]], [[1, 2, 3, 5]-[msort]]).
io(136, ambiguous, [[[4, 2, 2, 3]-[3, 2, 2, 4], [2, 1, 4, 5]-[5, 4, 1, 2]]], clear(reverse)).
io(137, candidates, [[[1, 1]-[1, 1], []-[]]], [identity, reverse, msort]).
io(138, split, [[inc], [4, 5]], [[5, 6]-[inc]]).
io(139, ambiguous, [[[2, 3]-[2], []-[], [4, 4, 3, 3]-[4, 4]]], clear(evens)).
io(140, candidates, [[[1, 4, 2, 4]-[4, 2, 4, 1]]], [reverse]).
io(141, split, [[identity, reverse], [4, 3]], [[3, 4]-[reverse], [4, 3]-[identity]]).
io(142, ambiguous, [[[1, 5]-[5]]], clear(drop_first)).
io(143, candidates, [[[1, 5]-[1, 5], []-[]]], [identity, msort, dedupe]).
io(144, split, [[evens], [4, 1]], [[4]-[evens]]).
io(145, ambiguous, [[[]-[]]], ask([1, 1, 2])).
io(146, candidates, [[[2, 4]-[4], [1, 5, 5, 2]-[5, 5, 2]]], [drop_first]).
io(147, split, [[msort], [5, 1, 4]], [[1, 4, 5]-[msort]]).
io(148, ambiguous, [[[]-[], [5, 5, 2]-[2, 5, 5], [2]-[2]]], ask([1, 2])).
io(149, candidates, [[[1, 1, 5]-[5, 1, 1], [3, 2, 4, 1]-[1, 4, 2, 3], [1, 1, 4, 2]-[2, 4, 1, 1]]], [reverse]).
io(150, split, [[identity, reverse, msort, dedupe, drop_first, evens, inc], [2]], [[]-[drop_first], [2]-[dedupe, evens, identity, msort, reverse], [3]-[inc]]).
io(151, ambiguous, [[[1]-[1]]], ask([1, 1, 2])).
io(152, candidates, [[[]-[], [4, 4, 5, 4]-[4, 5, 4], [5, 4, 2]-[4, 2]]], [drop_first]).
io(153, split, [[identity, reverse, msort, dedupe, drop_first, evens, inc], [3, 4, 4]], [[3, 4]-[dedupe], [3, 4, 4]-[identity, msort], [4, 4]-[drop_first, evens], [4, 4, 3]-[reverse], [4, 5, 5]-[inc]]).
io(154, ambiguous, [[[3]-[]]], ask([2])).
io(155, candidates, [[[3, 5, 1]-[1, 5, 3], [3]-[3], [5, 2, 5]-[5, 2, 5]]], [reverse]).
io(156, split, [[drop_first], [4]], [[]-[drop_first]]).
io(157, ambiguous, [[[3]-[3]]], ask([1, 1, 2])).
io(158, candidates, [[[1, 5]-[]]], [evens]).
io(159, split, [[dedupe, drop_first], [5]], [[]-[drop_first], [5]-[dedupe]]).
io(160, ambiguous, [[[3, 1]-[4, 2], []-[], []-[]]], clear(inc)).
io(161, candidates, [[[4, 3]-[3], [4, 1]-[1]]], [drop_first]).
io(162, split, [[evens], [5, 5, 1, 1]], [[]-[evens]]).
io(163, ambiguous, [[[5]-[]]], ask([2])).
io(164, candidates, [[[5, 4, 3, 3]-[3, 4, 5], [2, 5]-[2, 5], [3]-[3]]], [dedupe]).
io(165, split, [[identity, reverse, msort, evens], [4]], [[4]-[evens, identity, msort, reverse]]).
io(166, ambiguous, [[[]-[], [5]-[5]]], ask([1, 1, 2])).
io(167, candidates, [[[2, 3]-[2, 3], [1, 2, 3]-[1, 2, 3]]], [identity, msort, dedupe]).
io(168, split, [[reverse, msort, dedupe], []], [[]-[dedupe, msort, reverse]]).
io(169, ambiguous, [[[2]-[2], [2, 5]-[2]]], clear(evens)).
io(170, candidates, [[[]-[], [1, 5, 1, 2]-[5, 1, 2], [1]-[]]], [drop_first]).
io(171, split, [[reverse, msort], []], [[]-[msort, reverse]]).
io(172, ambiguous, [[[]-[]]], ask([1, 1, 2])).
io(173, candidates, [[[1, 3, 5, 1]-[2, 4, 6, 2], [1, 1]-[2, 2], [5, 4, 5, 2]-[6, 5, 6, 3]]], [inc]).
io(174, split, [[drop_first], [3, 5, 1, 2]], [[5, 1, 2]-[drop_first]]).
io(175, ambiguous, [[[1, 1]-[2, 2], [4, 1, 3, 4]-[5, 2, 4, 5], [4, 4, 1, 2]-[5, 5, 2, 3]]], clear(inc)).
io(176, candidates, [[[5]-[5], []-[]]], [identity, reverse, msort, dedupe]).
io(177, split, [[evens], [5]], [[]-[evens]]).
io(178, ambiguous, [[[2, 5, 1]-[1, 5, 2], [4, 5]-[5, 4], [3]-[3]]], clear(reverse)).
io(179, candidates, [[[4, 4, 4, 4]-[5, 5, 5, 5], []-[], [5, 3, 5]-[6, 4, 6]]], [inc]).
io(180, split, [[inc], [2, 4, 4]], [[3, 5, 5]-[inc]]).
io(181, ambiguous, [[[2, 2, 1, 2]-[3, 3, 2, 3], [4, 1, 2, 4]-[5, 2, 3, 5]]], clear(inc)).
io(182, candidates, [[[4]-[4], [1, 2, 4, 1]-[1, 1, 2, 4], [2, 5, 1, 1]-[1, 1, 2, 5]]], [msort]).
io(183, split, [[identity, reverse, msort, dedupe, drop_first, evens, inc], [3]], [[]-[drop_first, evens], [3]-[dedupe, identity, msort, reverse], [4]-[inc]]).
io(184, ambiguous, [[[]-[]]], ask([1, 1, 2])).
io(185, candidates, [[[]-[], [4, 5]-[4]]], [evens]).
io(186, split, [[identity, msort], [1, 2, 1, 4]], [[1, 1, 2, 4]-[msort], [1, 2, 1, 4]-[identity]]).
io(187, ambiguous, [[[]-[]]], ask([1, 1, 2])).
io(188, candidates, [[[4, 3]-[3, 4], [1, 2, 5, 1]-[1, 2, 5], [1, 1]-[1]]], [dedupe]).
io(189, split, [[msort], [3, 3]], [[3, 3]-[msort]]).
io(190, ambiguous, [[[]-[]]], ask([1, 1, 2])).
io(191, candidates, [[[]-[]]], [identity, reverse, msort, dedupe, drop_first, evens, inc]).
io(192, split, [[identity, reverse, msort, dedupe, evens], [1, 5, 2, 4]], [[1, 2, 4, 5]-[dedupe, msort], [1, 5, 2, 4]-[identity], [2, 4]-[evens], [4, 2, 5, 1]-[reverse]]).
io(193, ambiguous, [[[5, 2, 1]-[2, 1], [2, 1]-[1], []-[]]], clear(drop_first)).
io(194, candidates, [[[]-[]]], [identity, reverse, msort, dedupe, drop_first, evens, inc]).
io(195, split, [[inc], [2, 1]], [[3, 2]-[inc]]).
io(196, ambiguous, [[[4]-[]]], clear(drop_first)).
io(197, candidates, [[[3, 4]-[4, 3]]], [reverse]).
io(198, split, [[reverse, msort, dedupe], []], [[]-[dedupe, msort, reverse]]).
io(199, ambiguous, [[[2]-[2]]], ask([1, 1, 2])).
io(200, candidates, [[[2, 4, 5, 5]-[2, 4, 5], [3]-[3]]], [dedupe]).
