
t1:     formato del fichero elf32-i386


Desensamblado de la sección .init:

00000528 <_init>:
 528:	53                   	push   %ebx
 529:	83 ec 08             	sub    $0x8,%esp
 52c:	e8 1f 01 00 00       	call   650 <__x86.get_pc_thunk.bx>
 531:	81 c3 83 1a 00 00    	add    $0x1a83,%ebx
 537:	8b 83 40 00 00 00    	mov    0x40(%ebx),%eax
 53d:	85 c0                	test   %eax,%eax
 53f:	74 05                	je     546 <_init+0x1e>
 541:	e8 c2 00 00 00       	call   608 <__gmon_start__@plt>
 546:	83 c4 08             	add    $0x8,%esp
 549:	5b                   	pop    %ebx
 54a:	c3                   	ret    

Desensamblado de la sección .plt:

00000550 <.plt>:
 550:	ff b3 04 00 00 00    	pushl  0x4(%ebx)
 556:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
 55c:	00 00                	add    %al,(%eax)
	...

00000560 <printf@plt>:
 560:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
 566:	68 00 00 00 00       	push   $0x0
 56b:	e9 e0 ff ff ff       	jmp    550 <.plt>

00000570 <gettimeofday@plt>:
 570:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
 576:	68 08 00 00 00       	push   $0x8
 57b:	e9 d0 ff ff ff       	jmp    550 <.plt>

00000580 <__stack_chk_fail@plt>:
 580:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
 586:	68 10 00 00 00       	push   $0x10
 58b:	e9 c0 ff ff ff       	jmp    550 <.plt>

00000590 <fwrite@plt>:
 590:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
 596:	68 18 00 00 00       	push   $0x18
 59b:	e9 b0 ff ff ff       	jmp    550 <.plt>

000005a0 <exit@plt>:
 5a0:	ff a3 1c 00 00 00    	jmp    *0x1c(%ebx)
 5a6:	68 20 00 00 00       	push   $0x20
 5ab:	e9 a0 ff ff ff       	jmp    550 <.plt>

000005b0 <__libc_start_main@plt>:
 5b0:	ff a3 20 00 00 00    	jmp    *0x20(%ebx)
 5b6:	68 28 00 00 00       	push   $0x28
 5bb:	e9 90 ff ff ff       	jmp    550 <.plt>

000005c0 <pthread_join@plt>:
 5c0:	ff a3 24 00 00 00    	jmp    *0x24(%ebx)
 5c6:	68 30 00 00 00       	push   $0x30
 5cb:	e9 80 ff ff ff       	jmp    550 <.plt>

000005d0 <atoi@plt>:
 5d0:	ff a3 28 00 00 00    	jmp    *0x28(%ebx)
 5d6:	68 38 00 00 00       	push   $0x38
 5db:	e9 70 ff ff ff       	jmp    550 <.plt>

000005e0 <pthread_create@plt>:
 5e0:	ff a3 2c 00 00 00    	jmp    *0x2c(%ebx)
 5e6:	68 40 00 00 00       	push   $0x40
 5eb:	e9 60 ff ff ff       	jmp    550 <.plt>

000005f0 <__assert_fail@plt>:
 5f0:	ff a3 30 00 00 00    	jmp    *0x30(%ebx)
 5f6:	68 48 00 00 00       	push   $0x48
 5fb:	e9 50 ff ff ff       	jmp    550 <.plt>

Desensamblado de la sección .plt.got:

00000600 <__cxa_finalize@plt>:
 600:	ff a3 3c 00 00 00    	jmp    *0x3c(%ebx)
 606:	66 90                	xchg   %ax,%ax

00000608 <__gmon_start__@plt>:
 608:	ff a3 40 00 00 00    	jmp    *0x40(%ebx)
 60e:	66 90                	xchg   %ax,%ax

Desensamblado de la sección .text:

00000610 <_start>:
 610:	31 ed                	xor    %ebp,%ebp
 612:	5e                   	pop    %esi
 613:	89 e1                	mov    %esp,%ecx
 615:	83 e4 f0             	and    $0xfffffff0,%esp
 618:	50                   	push   %eax
 619:	54                   	push   %esp
 61a:	52                   	push   %edx
 61b:	e8 22 00 00 00       	call   642 <_start+0x32>
 620:	81 c3 94 19 00 00    	add    $0x1994,%ebx
 626:	8d 83 0c eb ff ff    	lea    -0x14f4(%ebx),%eax
 62c:	50                   	push   %eax
 62d:	8d 83 ac ea ff ff    	lea    -0x1554(%ebx),%eax
 633:	50                   	push   %eax
 634:	51                   	push   %ecx
 635:	56                   	push   %esi
 636:	ff b3 44 00 00 00    	pushl  0x44(%ebx)
 63c:	e8 6f ff ff ff       	call   5b0 <__libc_start_main@plt>
 641:	f4                   	hlt    
 642:	8b 1c 24             	mov    (%esp),%ebx
 645:	c3                   	ret    
 646:	66 90                	xchg   %ax,%ax
 648:	66 90                	xchg   %ax,%ax
 64a:	66 90                	xchg   %ax,%ax
 64c:	66 90                	xchg   %ax,%ax
 64e:	66 90                	xchg   %ax,%ax

00000650 <__x86.get_pc_thunk.bx>:
 650:	8b 1c 24             	mov    (%esp),%ebx
 653:	c3                   	ret    
 654:	66 90                	xchg   %ax,%ax
 656:	66 90                	xchg   %ax,%ax
 658:	66 90                	xchg   %ax,%ax
 65a:	66 90                	xchg   %ax,%ax
 65c:	66 90                	xchg   %ax,%ax
 65e:	66 90                	xchg   %ax,%ax

00000660 <deregister_tm_clones>:
 660:	e8 e4 00 00 00       	call   749 <__x86.get_pc_thunk.dx>
 665:	81 c2 4f 19 00 00    	add    $0x194f,%edx
 66b:	8d 8a 54 00 00 00    	lea    0x54(%edx),%ecx
 671:	8d 82 54 00 00 00    	lea    0x54(%edx),%eax
 677:	39 c8                	cmp    %ecx,%eax
 679:	74 1d                	je     698 <deregister_tm_clones+0x38>
 67b:	8b 82 34 00 00 00    	mov    0x34(%edx),%eax
 681:	85 c0                	test   %eax,%eax
 683:	74 13                	je     698 <deregister_tm_clones+0x38>
 685:	55                   	push   %ebp
 686:	89 e5                	mov    %esp,%ebp
 688:	83 ec 14             	sub    $0x14,%esp
 68b:	51                   	push   %ecx
 68c:	ff d0                	call   *%eax
 68e:	83 c4 10             	add    $0x10,%esp
 691:	c9                   	leave  
 692:	c3                   	ret    
 693:	90                   	nop
 694:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 698:	f3 c3                	repz ret 
 69a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000006a0 <register_tm_clones>:
 6a0:	e8 a4 00 00 00       	call   749 <__x86.get_pc_thunk.dx>
 6a5:	81 c2 0f 19 00 00    	add    $0x190f,%edx
 6ab:	55                   	push   %ebp
 6ac:	8d 8a 54 00 00 00    	lea    0x54(%edx),%ecx
 6b2:	8d 82 54 00 00 00    	lea    0x54(%edx),%eax
 6b8:	29 c8                	sub    %ecx,%eax
 6ba:	89 e5                	mov    %esp,%ebp
 6bc:	53                   	push   %ebx
 6bd:	c1 f8 02             	sar    $0x2,%eax
 6c0:	89 c3                	mov    %eax,%ebx
 6c2:	83 ec 04             	sub    $0x4,%esp
 6c5:	c1 eb 1f             	shr    $0x1f,%ebx
 6c8:	01 d8                	add    %ebx,%eax
 6ca:	d1 f8                	sar    %eax
 6cc:	74 14                	je     6e2 <register_tm_clones+0x42>
 6ce:	8b 92 48 00 00 00    	mov    0x48(%edx),%edx
 6d4:	85 d2                	test   %edx,%edx
 6d6:	74 0a                	je     6e2 <register_tm_clones+0x42>
 6d8:	83 ec 08             	sub    $0x8,%esp
 6db:	50                   	push   %eax
 6dc:	51                   	push   %ecx
 6dd:	ff d2                	call   *%edx
 6df:	83 c4 10             	add    $0x10,%esp
 6e2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6e5:	c9                   	leave  
 6e6:	c3                   	ret    
 6e7:	89 f6                	mov    %esi,%esi
 6e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006f0 <__do_global_dtors_aux>:
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
 6f3:	53                   	push   %ebx
 6f4:	e8 57 ff ff ff       	call   650 <__x86.get_pc_thunk.bx>
 6f9:	81 c3 bb 18 00 00    	add    $0x18bb,%ebx
 6ff:	83 ec 04             	sub    $0x4,%esp
 702:	80 bb 54 00 00 00 00 	cmpb   $0x0,0x54(%ebx)
 709:	75 27                	jne    732 <__do_global_dtors_aux+0x42>
 70b:	8b 83 3c 00 00 00    	mov    0x3c(%ebx),%eax
 711:	85 c0                	test   %eax,%eax
 713:	74 11                	je     726 <__do_global_dtors_aux+0x36>
 715:	83 ec 0c             	sub    $0xc,%esp
 718:	ff b3 50 00 00 00    	pushl  0x50(%ebx)
 71e:	e8 dd fe ff ff       	call   600 <__cxa_finalize@plt>
 723:	83 c4 10             	add    $0x10,%esp
 726:	e8 35 ff ff ff       	call   660 <deregister_tm_clones>
 72b:	c6 83 54 00 00 00 01 	movb   $0x1,0x54(%ebx)
 732:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 735:	c9                   	leave  
 736:	c3                   	ret    
 737:	89 f6                	mov    %esi,%esi
 739:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000740 <frame_dummy>:
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	5d                   	pop    %ebp
 744:	e9 57 ff ff ff       	jmp    6a0 <register_tm_clones>

00000749 <__x86.get_pc_thunk.dx>:
 749:	8b 14 24             	mov    (%esp),%edx
 74c:	c3                   	ret    

0000074d <GetTime>:
 74d:	55                   	push   %ebp
 74e:	89 e5                	mov    %esp,%ebp
 750:	53                   	push   %ebx
 751:	83 ec 24             	sub    $0x24,%esp
 754:	e8 f7 fe ff ff       	call   650 <__x86.get_pc_thunk.bx>
 759:	81 c3 5b 18 00 00    	add    $0x185b,%ebx
 75f:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 765:	89 45 f4             	mov    %eax,-0xc(%ebp)
 768:	31 c0                	xor    %eax,%eax
 76a:	83 ec 08             	sub    $0x8,%esp
 76d:	6a 00                	push   $0x0
 76f:	8d 45 ec             	lea    -0x14(%ebp),%eax
 772:	50                   	push   %eax
 773:	e8 f8 fd ff ff       	call   570 <gettimeofday@plt>
 778:	83 c4 10             	add    $0x10,%esp
 77b:	89 45 e8             	mov    %eax,-0x18(%ebp)
 77e:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 782:	74 1c                	je     7a0 <GetTime+0x53>
 784:	8d 83 b0 ec ff ff    	lea    -0x1350(%ebx),%eax
 78a:	50                   	push   %eax
 78b:	6a 0b                	push   $0xb
 78d:	8d 83 4c eb ff ff    	lea    -0x14b4(%ebx),%eax
 793:	50                   	push   %eax
 794:	8d 83 55 eb ff ff    	lea    -0x14ab(%ebx),%eax
 79a:	50                   	push   %eax
 79b:	e8 50 fe ff ff       	call   5f0 <__assert_fail@plt>
 7a0:	8b 45 ec             	mov    -0x14(%ebp),%eax
 7a3:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 7a6:	db 45 e4             	fildl  -0x1c(%ebp)
 7a9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 7ac:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 7af:	db 45 e4             	fildl  -0x1c(%ebp)
 7b2:	dd 83 c4 ec ff ff    	fldl   -0x133c(%ebx)
 7b8:	de f9                	fdivrp %st,%st(1)
 7ba:	de c1                	faddp  %st,%st(1)
 7bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 7bf:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 7c6:	74 07                	je     7cf <GetTime+0x82>
 7c8:	dd d8                	fstp   %st(0)
 7ca:	e8 01 03 00 00       	call   ad0 <__stack_chk_fail_local>
 7cf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 7d2:	c9                   	leave  
 7d3:	c3                   	ret    

000007d4 <Spin>:
 7d4:	55                   	push   %ebp
 7d5:	89 e5                	mov    %esp,%ebp
 7d7:	83 ec 18             	sub    $0x18,%esp
 7da:	e8 7d 02 00 00       	call   a5c <__x86.get_pc_thunk.ax>
 7df:	05 d5 17 00 00       	add    $0x17d5,%eax
 7e4:	e8 64 ff ff ff       	call   74d <GetTime>
 7e9:	dd 5d f0             	fstpl  -0x10(%ebp)
 7ec:	90                   	nop
 7ed:	e8 5b ff ff ff       	call   74d <GetTime>
 7f2:	dc 65 f0             	fsubl  -0x10(%ebp)
 7f5:	db 45 08             	fildl  0x8(%ebp)
 7f8:	df e9                	fucomip %st(1),%st
 7fa:	dd d8                	fstp   %st(0)
 7fc:	77 ef                	ja     7ed <Spin+0x19>
 7fe:	90                   	nop
 7ff:	c9                   	leave  
 800:	c3                   	ret    

00000801 <mythread>:
 801:	55                   	push   %ebp
 802:	89 e5                	mov    %esp,%ebp
 804:	53                   	push   %ebx
 805:	83 ec 24             	sub    $0x24,%esp
 808:	e8 43 fe ff ff       	call   650 <__x86.get_pc_thunk.bx>
 80d:	81 c3 a7 17 00 00    	add    $0x17a7,%ebx
 813:	8b 45 08             	mov    0x8(%ebp),%eax
 816:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 819:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 81f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 822:	31 c0                	xor    %eax,%eax
 824:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 827:	89 45 f0             	mov    %eax,-0x10(%ebp)
 82a:	83 ec 04             	sub    $0x4,%esp
 82d:	8d 45 ec             	lea    -0x14(%ebp),%eax
 830:	50                   	push   %eax
 831:	ff 75 f0             	pushl  -0x10(%ebp)
 834:	8d 83 5d eb ff ff    	lea    -0x14a3(%ebx),%eax
 83a:	50                   	push   %eax
 83b:	e8 20 fd ff ff       	call   560 <printf@plt>
 840:	83 c4 10             	add    $0x10,%esp
 843:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 84a:	eb 18                	jmp    864 <mythread+0x63>
 84c:	8b 83 58 00 00 00    	mov    0x58(%ebx),%eax
 852:	83 c0 01             	add    $0x1,%eax
 855:	89 83 58 00 00 00    	mov    %eax,0x58(%ebx)
 85b:	8b 45 ec             	mov    -0x14(%ebp),%eax
 85e:	83 c0 01             	add    $0x1,%eax
 861:	89 45 ec             	mov    %eax,-0x14(%ebp)
 864:	8b 55 ec             	mov    -0x14(%ebp),%edx
 867:	8d 83 5c 00 00 00    	lea    0x5c(%ebx),%eax
 86d:	8b 00                	mov    (%eax),%eax
 86f:	39 c2                	cmp    %eax,%edx
 871:	7c d9                	jl     84c <mythread+0x4b>
 873:	83 ec 08             	sub    $0x8,%esp
 876:	ff 75 f0             	pushl  -0x10(%ebp)
 879:	8d 83 78 eb ff ff    	lea    -0x1488(%ebx),%eax
 87f:	50                   	push   %eax
 880:	e8 db fc ff ff       	call   560 <printf@plt>
 885:	83 c4 10             	add    $0x10,%esp
 888:	b8 00 00 00 00       	mov    $0x0,%eax
 88d:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 890:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 897:	74 05                	je     89e <mythread+0x9d>
 899:	e8 32 02 00 00       	call   ad0 <__stack_chk_fail_local>
 89e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8a1:	c9                   	leave  
 8a2:	c3                   	ret    

000008a3 <main>:
 8a3:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8a7:	83 e4 f0             	and    $0xfffffff0,%esp
 8aa:	ff 71 fc             	pushl  -0x4(%ecx)
 8ad:	55                   	push   %ebp
 8ae:	89 e5                	mov    %esp,%ebp
 8b0:	53                   	push   %ebx
 8b1:	51                   	push   %ecx
 8b2:	83 ec 20             	sub    $0x20,%esp
 8b5:	e8 96 fd ff ff       	call   650 <__x86.get_pc_thunk.bx>
 8ba:	81 c3 fa 16 00 00    	add    $0x16fa,%ebx
 8c0:	89 c8                	mov    %ecx,%eax
 8c2:	8b 50 04             	mov    0x4(%eax),%edx
 8c5:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 8c8:	65 8b 0d 14 00 00 00 	mov    %gs:0x14,%ecx
 8cf:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 8d2:	31 c9                	xor    %ecx,%ecx
 8d4:	83 38 02             	cmpl   $0x2,(%eax)
 8d7:	74 26                	je     8ff <main+0x5c>
 8d9:	8b 83 38 00 00 00    	mov    0x38(%ebx),%eax
 8df:	8b 00                	mov    (%eax),%eax
 8e1:	50                   	push   %eax
 8e2:	6a 1e                	push   $0x1e
 8e4:	6a 01                	push   $0x1
 8e6:	8d 83 84 eb ff ff    	lea    -0x147c(%ebx),%eax
 8ec:	50                   	push   %eax
 8ed:	e8 9e fc ff ff       	call   590 <fwrite@plt>
 8f2:	83 c4 10             	add    $0x10,%esp
 8f5:	83 ec 0c             	sub    $0xc,%esp
 8f8:	6a 01                	push   $0x1
 8fa:	e8 a1 fc ff ff       	call   5a0 <exit@plt>
 8ff:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 902:	83 c0 04             	add    $0x4,%eax
 905:	8b 00                	mov    (%eax),%eax
 907:	83 ec 0c             	sub    $0xc,%esp
 90a:	50                   	push   %eax
 90b:	e8 c0 fc ff ff       	call   5d0 <atoi@plt>
 910:	83 c4 10             	add    $0x10,%esp
 913:	89 c2                	mov    %eax,%edx
 915:	8d 83 5c 00 00 00    	lea    0x5c(%ebx),%eax
 91b:	89 10                	mov    %edx,(%eax)
 91d:	8d 93 58 00 00 00    	lea    0x58(%ebx),%edx
 923:	8b 83 58 00 00 00    	mov    0x58(%ebx),%eax
 929:	83 ec 04             	sub    $0x4,%esp
 92c:	52                   	push   %edx
 92d:	50                   	push   %eax
 92e:	8d 83 a4 eb ff ff    	lea    -0x145c(%ebx),%eax
 934:	50                   	push   %eax
 935:	e8 26 fc ff ff       	call   560 <printf@plt>
 93a:	83 c4 10             	add    $0x10,%esp
 93d:	8d 83 c5 eb ff ff    	lea    -0x143b(%ebx),%eax
 943:	50                   	push   %eax
 944:	8d 83 4d e8 ff ff    	lea    -0x17b3(%ebx),%eax
 94a:	50                   	push   %eax
 94b:	6a 00                	push   $0x0
 94d:	8d 45 ec             	lea    -0x14(%ebp),%eax
 950:	50                   	push   %eax
 951:	e8 8a fc ff ff       	call   5e0 <pthread_create@plt>
 956:	83 c4 10             	add    $0x10,%esp
 959:	85 c0                	test   %eax,%eax
 95b:	74 1c                	je     979 <main+0xd6>
 95d:	8d 83 b8 ec ff ff    	lea    -0x1348(%ebx),%eax
 963:	50                   	push   %eax
 964:	6a 20                	push   $0x20
 966:	8d 83 c7 eb ff ff    	lea    -0x1439(%ebx),%eax
 96c:	50                   	push   %eax
 96d:	8d 83 cc eb ff ff    	lea    -0x1434(%ebx),%eax
 973:	50                   	push   %eax
 974:	e8 77 fc ff ff       	call   5f0 <__assert_fail@plt>
 979:	8d 83 01 ec ff ff    	lea    -0x13ff(%ebx),%eax
 97f:	50                   	push   %eax
 980:	8d 83 4d e8 ff ff    	lea    -0x17b3(%ebx),%eax
 986:	50                   	push   %eax
 987:	6a 00                	push   $0x0
 989:	8d 45 f0             	lea    -0x10(%ebp),%eax
 98c:	50                   	push   %eax
 98d:	e8 4e fc ff ff       	call   5e0 <pthread_create@plt>
 992:	83 c4 10             	add    $0x10,%esp
 995:	85 c0                	test   %eax,%eax
 997:	74 1c                	je     9b5 <main+0x112>
 999:	8d 83 b8 ec ff ff    	lea    -0x1348(%ebx),%eax
 99f:	50                   	push   %eax
 9a0:	6a 21                	push   $0x21
 9a2:	8d 83 c7 eb ff ff    	lea    -0x1439(%ebx),%eax
 9a8:	50                   	push   %eax
 9a9:	8d 83 04 ec ff ff    	lea    -0x13fc(%ebx),%eax
 9af:	50                   	push   %eax
 9b0:	e8 3b fc ff ff       	call   5f0 <__assert_fail@plt>
 9b5:	8b 45 ec             	mov    -0x14(%ebp),%eax
 9b8:	83 ec 08             	sub    $0x8,%esp
 9bb:	6a 00                	push   $0x0
 9bd:	50                   	push   %eax
 9be:	e8 fd fb ff ff       	call   5c0 <pthread_join@plt>
 9c3:	83 c4 10             	add    $0x10,%esp
 9c6:	85 c0                	test   %eax,%eax
 9c8:	74 1c                	je     9e6 <main+0x143>
 9ca:	8d 83 b8 ec ff ff    	lea    -0x1348(%ebx),%eax
 9d0:	50                   	push   %eax
 9d1:	6a 23                	push   $0x23
 9d3:	8d 83 c7 eb ff ff    	lea    -0x1439(%ebx),%eax
 9d9:	50                   	push   %eax
 9da:	8d 83 3c ec ff ff    	lea    -0x13c4(%ebx),%eax
 9e0:	50                   	push   %eax
 9e1:	e8 0a fc ff ff       	call   5f0 <__assert_fail@plt>
 9e6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 9e9:	83 ec 08             	sub    $0x8,%esp
 9ec:	6a 00                	push   $0x0
 9ee:	50                   	push   %eax
 9ef:	e8 cc fb ff ff       	call   5c0 <pthread_join@plt>
 9f4:	83 c4 10             	add    $0x10,%esp
 9f7:	85 c0                	test   %eax,%eax
 9f9:	74 1c                	je     a17 <main+0x174>
 9fb:	8d 83 b8 ec ff ff    	lea    -0x1348(%ebx),%eax
 a01:	50                   	push   %eax
 a02:	6a 24                	push   $0x24
 a04:	8d 83 c7 eb ff ff    	lea    -0x1439(%ebx),%eax
 a0a:	50                   	push   %eax
 a0b:	8d 83 60 ec ff ff    	lea    -0x13a0(%ebx),%eax
 a11:	50                   	push   %eax
 a12:	e8 d9 fb ff ff       	call   5f0 <__assert_fail@plt>
 a17:	8d 83 5c 00 00 00    	lea    0x5c(%ebx),%eax
 a1d:	8b 00                	mov    (%eax),%eax
 a1f:	8d 14 00             	lea    (%eax,%eax,1),%edx
 a22:	8b 83 58 00 00 00    	mov    0x58(%ebx),%eax
 a28:	83 ec 04             	sub    $0x4,%esp
 a2b:	52                   	push   %edx
 a2c:	50                   	push   %eax
 a2d:	8d 83 84 ec ff ff    	lea    -0x137c(%ebx),%eax
 a33:	50                   	push   %eax
 a34:	e8 27 fb ff ff       	call   560 <printf@plt>
 a39:	83 c4 10             	add    $0x10,%esp
 a3c:	b8 00 00 00 00       	mov    $0x0,%eax
 a41:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 a44:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 a4b:	74 05                	je     a52 <main+0x1af>
 a4d:	e8 7e 00 00 00       	call   ad0 <__stack_chk_fail_local>
 a52:	8d 65 f8             	lea    -0x8(%ebp),%esp
 a55:	59                   	pop    %ecx
 a56:	5b                   	pop    %ebx
 a57:	5d                   	pop    %ebp
 a58:	8d 61 fc             	lea    -0x4(%ecx),%esp
 a5b:	c3                   	ret    

00000a5c <__x86.get_pc_thunk.ax>:
 a5c:	8b 04 24             	mov    (%esp),%eax
 a5f:	c3                   	ret    

00000a60 <__libc_csu_init>:
 a60:	55                   	push   %ebp
 a61:	57                   	push   %edi
 a62:	56                   	push   %esi
 a63:	53                   	push   %ebx
 a64:	e8 e7 fb ff ff       	call   650 <__x86.get_pc_thunk.bx>
 a69:	81 c3 4b 15 00 00    	add    $0x154b,%ebx
 a6f:	83 ec 0c             	sub    $0xc,%esp
 a72:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 a76:	8d b3 fc fe ff ff    	lea    -0x104(%ebx),%esi
 a7c:	e8 a7 fa ff ff       	call   528 <_init>
 a81:	8d 83 f8 fe ff ff    	lea    -0x108(%ebx),%eax
 a87:	29 c6                	sub    %eax,%esi
 a89:	c1 fe 02             	sar    $0x2,%esi
 a8c:	85 f6                	test   %esi,%esi
 a8e:	74 25                	je     ab5 <__libc_csu_init+0x55>
 a90:	31 ff                	xor    %edi,%edi
 a92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 a98:	83 ec 04             	sub    $0x4,%esp
 a9b:	55                   	push   %ebp
 a9c:	ff 74 24 2c          	pushl  0x2c(%esp)
 aa0:	ff 74 24 2c          	pushl  0x2c(%esp)
 aa4:	ff 94 bb f8 fe ff ff 	call   *-0x108(%ebx,%edi,4)
 aab:	83 c7 01             	add    $0x1,%edi
 aae:	83 c4 10             	add    $0x10,%esp
 ab1:	39 fe                	cmp    %edi,%esi
 ab3:	75 e3                	jne    a98 <__libc_csu_init+0x38>
 ab5:	83 c4 0c             	add    $0xc,%esp
 ab8:	5b                   	pop    %ebx
 ab9:	5e                   	pop    %esi
 aba:	5f                   	pop    %edi
 abb:	5d                   	pop    %ebp
 abc:	c3                   	ret    
 abd:	8d 76 00             	lea    0x0(%esi),%esi

00000ac0 <__libc_csu_fini>:
 ac0:	f3 c3                	repz ret 
 ac2:	66 90                	xchg   %ax,%ax
 ac4:	66 90                	xchg   %ax,%ax
 ac6:	66 90                	xchg   %ax,%ax
 ac8:	66 90                	xchg   %ax,%ax
 aca:	66 90                	xchg   %ax,%ax
 acc:	66 90                	xchg   %ax,%ax
 ace:	66 90                	xchg   %ax,%ax

00000ad0 <__stack_chk_fail_local>:
 ad0:	53                   	push   %ebx
 ad1:	e8 7a fb ff ff       	call   650 <__x86.get_pc_thunk.bx>
 ad6:	81 c3 de 14 00 00    	add    $0x14de,%ebx
 adc:	83 ec 08             	sub    $0x8,%esp
 adf:	e8 9c fa ff ff       	call   580 <__stack_chk_fail@plt>

Desensamblado de la sección .fini:

00000ae4 <_fini>:
 ae4:	53                   	push   %ebx
 ae5:	83 ec 08             	sub    $0x8,%esp
 ae8:	e8 63 fb ff ff       	call   650 <__x86.get_pc_thunk.bx>
 aed:	81 c3 c7 14 00 00    	add    $0x14c7,%ebx
 af3:	83 c4 08             	add    $0x8,%esp
 af6:	5b                   	pop    %ebx
 af7:	c3                   	ret    
