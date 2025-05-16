
_sh:     file format elf32-i386


Disassembly of section .text:

00003000 <main>:
  return 0;
}

int
main(void)
{
    3000:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    3004:	83 e4 f0             	and    $0xfffffff0,%esp
    3007:	ff 71 fc             	push   -0x4(%ecx)
    300a:	55                   	push   %ebp
    300b:	89 e5                	mov    %esp,%ebp
    300d:	51                   	push   %ecx
    300e:	83 ec 04             	sub    $0x4,%esp
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
    3011:	eb 0e                	jmp    3021 <main+0x21>
    3013:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3017:	90                   	nop
    if(fd >= 3){
    3018:	83 f8 02             	cmp    $0x2,%eax
    301b:	0f 8f 91 00 00 00    	jg     30b2 <main+0xb2>
  while((fd = open("console", O_RDWR)) >= 0){
    3021:	83 ec 08             	sub    $0x8,%esp
    3024:	6a 02                	push   $0x2
    3026:	68 49 43 00 00       	push   $0x4349
    302b:	e8 33 0e 00 00       	call   3e63 <open>
    3030:	83 c4 10             	add    $0x10,%esp
    3033:	85 c0                	test   %eax,%eax
    3035:	79 e1                	jns    3018 <main+0x18>
    3037:	eb 2e                	jmp    3067 <main+0x67>
    3039:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
    3040:	80 3d e2 49 00 00 20 	cmpb   $0x20,0x49e2
    3047:	0f 84 88 00 00 00    	je     30d5 <main+0xd5>
    304d:	8d 76 00             	lea    0x0(%esi),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
    3050:	e8 c6 0d 00 00       	call   3e1b <fork>
  if(pid == -1)
    3055:	83 f8 ff             	cmp    $0xffffffff,%eax
    3058:	0f 84 c1 00 00 00    	je     311f <main+0x11f>
    if(fork1() == 0)
    305e:	85 c0                	test   %eax,%eax
    3060:	74 5e                	je     30c0 <main+0xc0>
    wait();
    3062:	e8 c4 0d 00 00       	call   3e2b <wait>
  printf(2, "$ ");
    3067:	83 ec 08             	sub    $0x8,%esp
    306a:	68 a8 42 00 00       	push   $0x42a8
    306f:	6a 02                	push   $0x2
    3071:	e8 0a 0f 00 00       	call   3f80 <printf>
  memset(buf, 0, nbuf);
    3076:	83 c4 0c             	add    $0xc,%esp
    3079:	6a 64                	push   $0x64
    307b:	6a 00                	push   $0x0
    307d:	68 e0 49 00 00       	push   $0x49e0
    3082:	e8 09 0c 00 00       	call   3c90 <memset>
  gets(buf, nbuf);
    3087:	58                   	pop    %eax
    3088:	5a                   	pop    %edx
    3089:	6a 64                	push   $0x64
    308b:	68 e0 49 00 00       	push   $0x49e0
    3090:	e8 5b 0c 00 00       	call   3cf0 <gets>
  if(buf[0] == 0) // EOF
    3095:	0f b6 05 e0 49 00 00 	movzbl 0x49e0,%eax
    309c:	83 c4 10             	add    $0x10,%esp
    309f:	84 c0                	test   %al,%al
    30a1:	74 77                	je     311a <main+0x11a>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
    30a3:	3c 63                	cmp    $0x63,%al
    30a5:	75 a9                	jne    3050 <main+0x50>
    30a7:	80 3d e1 49 00 00 64 	cmpb   $0x64,0x49e1
    30ae:	75 a0                	jne    3050 <main+0x50>
    30b0:	eb 8e                	jmp    3040 <main+0x40>
      close(fd);
    30b2:	83 ec 0c             	sub    $0xc,%esp
    30b5:	50                   	push   %eax
    30b6:	e8 90 0d 00 00       	call   3e4b <close>
      break;
    30bb:	83 c4 10             	add    $0x10,%esp
    30be:	eb a7                	jmp    3067 <main+0x67>
      runcmd(parsecmd(buf));
    30c0:	83 ec 0c             	sub    $0xc,%esp
    30c3:	68 e0 49 00 00       	push   $0x49e0
    30c8:	e8 93 0a 00 00       	call   3b60 <parsecmd>
    30cd:	89 04 24             	mov    %eax,(%esp)
    30d0:	e8 db 00 00 00       	call   31b0 <runcmd>
      buf[strlen(buf)-1] = 0;  // chop \n
    30d5:	83 ec 0c             	sub    $0xc,%esp
    30d8:	68 e0 49 00 00       	push   $0x49e0
    30dd:	e8 7e 0b 00 00       	call   3c60 <strlen>
      if(chdir(buf+3) < 0)
    30e2:	c7 04 24 e3 49 00 00 	movl   $0x49e3,(%esp)
      buf[strlen(buf)-1] = 0;  // chop \n
    30e9:	c6 80 df 49 00 00 00 	movb   $0x0,0x49df(%eax)
      if(chdir(buf+3) < 0)
    30f0:	e8 9e 0d 00 00       	call   3e93 <chdir>
    30f5:	83 c4 10             	add    $0x10,%esp
    30f8:	85 c0                	test   %eax,%eax
    30fa:	0f 89 67 ff ff ff    	jns    3067 <main+0x67>
        printf(2, "cannot cd %s\n", buf+3);
    3100:	51                   	push   %ecx
    3101:	68 e3 49 00 00       	push   $0x49e3
    3106:	68 51 43 00 00       	push   $0x4351
    310b:	6a 02                	push   $0x2
    310d:	e8 6e 0e 00 00       	call   3f80 <printf>
    3112:	83 c4 10             	add    $0x10,%esp
    3115:	e9 4d ff ff ff       	jmp    3067 <main+0x67>
  exit();
    311a:	e8 04 0d 00 00       	call   3e23 <exit>
    panic("fork");
    311f:	83 ec 0c             	sub    $0xc,%esp
    3122:	68 ab 42 00 00       	push   $0x42ab
    3127:	e8 44 00 00 00       	call   3170 <panic>
    312c:	66 90                	xchg   %ax,%ax
    312e:	66 90                	xchg   %ax,%ax

00003130 <getcmd>:
{
    3130:	55                   	push   %ebp
    3131:	89 e5                	mov    %esp,%ebp
    3133:	56                   	push   %esi
    3134:	53                   	push   %ebx
    3135:	8b 75 0c             	mov    0xc(%ebp),%esi
    3138:	8b 5d 08             	mov    0x8(%ebp),%ebx
  printf(2, "$ ");
    313b:	83 ec 08             	sub    $0x8,%esp
    313e:	68 a8 42 00 00       	push   $0x42a8
    3143:	6a 02                	push   $0x2
    3145:	e8 36 0e 00 00       	call   3f80 <printf>
  memset(buf, 0, nbuf);
    314a:	83 c4 0c             	add    $0xc,%esp
    314d:	56                   	push   %esi
    314e:	6a 00                	push   $0x0
    3150:	53                   	push   %ebx
    3151:	e8 3a 0b 00 00       	call   3c90 <memset>
  gets(buf, nbuf);
    3156:	58                   	pop    %eax
    3157:	5a                   	pop    %edx
    3158:	56                   	push   %esi
    3159:	53                   	push   %ebx
    315a:	e8 91 0b 00 00       	call   3cf0 <gets>
  if(buf[0] == 0) // EOF
    315f:	83 c4 10             	add    $0x10,%esp
    3162:	80 3b 01             	cmpb   $0x1,(%ebx)
    3165:	19 c0                	sbb    %eax,%eax
}
    3167:	8d 65 f8             	lea    -0x8(%ebp),%esp
    316a:	5b                   	pop    %ebx
    316b:	5e                   	pop    %esi
    316c:	5d                   	pop    %ebp
    316d:	c3                   	ret    
    316e:	66 90                	xchg   %ax,%ax

00003170 <panic>:
{
    3170:	55                   	push   %ebp
    3171:	89 e5                	mov    %esp,%ebp
    3173:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
    3176:	ff 75 08             	push   0x8(%ebp)
    3179:	68 45 43 00 00       	push   $0x4345
    317e:	6a 02                	push   $0x2
    3180:	e8 fb 0d 00 00       	call   3f80 <printf>
  exit();
    3185:	e8 99 0c 00 00       	call   3e23 <exit>
    318a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003190 <fork1>:
{
    3190:	55                   	push   %ebp
    3191:	89 e5                	mov    %esp,%ebp
    3193:	83 ec 08             	sub    $0x8,%esp
  pid = fork();
    3196:	e8 80 0c 00 00       	call   3e1b <fork>
  if(pid == -1)
    319b:	83 f8 ff             	cmp    $0xffffffff,%eax
    319e:	74 02                	je     31a2 <fork1+0x12>
  return pid;
}
    31a0:	c9                   	leave  
    31a1:	c3                   	ret    
    panic("fork");
    31a2:	83 ec 0c             	sub    $0xc,%esp
    31a5:	68 ab 42 00 00       	push   $0x42ab
    31aa:	e8 c1 ff ff ff       	call   3170 <panic>
    31af:	90                   	nop

000031b0 <runcmd>:
{
    31b0:	55                   	push   %ebp
    31b1:	89 e5                	mov    %esp,%ebp
    31b3:	53                   	push   %ebx
    31b4:	83 ec 14             	sub    $0x14,%esp
    31b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
    31ba:	85 db                	test   %ebx,%ebx
    31bc:	74 42                	je     3200 <runcmd+0x50>
  switch(cmd->type){
    31be:	83 3b 05             	cmpl   $0x5,(%ebx)
    31c1:	0f 87 e3 00 00 00    	ja     32aa <runcmd+0xfa>
    31c7:	8b 03                	mov    (%ebx),%eax
    31c9:	ff 24 85 60 43 00 00 	jmp    *0x4360(,%eax,4)
    if(ecmd->argv[0] == 0)
    31d0:	8b 43 04             	mov    0x4(%ebx),%eax
    31d3:	85 c0                	test   %eax,%eax
    31d5:	74 29                	je     3200 <runcmd+0x50>
    exec(ecmd->argv[0], ecmd->argv);
    31d7:	8d 53 04             	lea    0x4(%ebx),%edx
    31da:	51                   	push   %ecx
    31db:	51                   	push   %ecx
    31dc:	52                   	push   %edx
    31dd:	50                   	push   %eax
    31de:	e8 78 0c 00 00       	call   3e5b <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
    31e3:	83 c4 0c             	add    $0xc,%esp
    31e6:	ff 73 04             	push   0x4(%ebx)
    31e9:	68 b7 42 00 00       	push   $0x42b7
    31ee:	6a 02                	push   $0x2
    31f0:	e8 8b 0d 00 00       	call   3f80 <printf>
    break;
    31f5:	83 c4 10             	add    $0x10,%esp
    31f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    31ff:	90                   	nop
    exit();
    3200:	e8 1e 0c 00 00       	call   3e23 <exit>
    if(fork1() == 0)
    3205:	e8 86 ff ff ff       	call   3190 <fork1>
    320a:	85 c0                	test   %eax,%eax
    320c:	75 f2                	jne    3200 <runcmd+0x50>
    320e:	e9 8c 00 00 00       	jmp    329f <runcmd+0xef>
    if(pipe(p) < 0)
    3213:	83 ec 0c             	sub    $0xc,%esp
    3216:	8d 45 f0             	lea    -0x10(%ebp),%eax
    3219:	50                   	push   %eax
    321a:	e8 14 0c 00 00       	call   3e33 <pipe>
    321f:	83 c4 10             	add    $0x10,%esp
    3222:	85 c0                	test   %eax,%eax
    3224:	0f 88 a2 00 00 00    	js     32cc <runcmd+0x11c>
    if(fork1() == 0){
    322a:	e8 61 ff ff ff       	call   3190 <fork1>
    322f:	85 c0                	test   %eax,%eax
    3231:	0f 84 a2 00 00 00    	je     32d9 <runcmd+0x129>
    if(fork1() == 0){
    3237:	e8 54 ff ff ff       	call   3190 <fork1>
    323c:	85 c0                	test   %eax,%eax
    323e:	0f 84 c3 00 00 00    	je     3307 <runcmd+0x157>
    close(p[0]);
    3244:	83 ec 0c             	sub    $0xc,%esp
    3247:	ff 75 f0             	push   -0x10(%ebp)
    324a:	e8 fc 0b 00 00       	call   3e4b <close>
    close(p[1]);
    324f:	58                   	pop    %eax
    3250:	ff 75 f4             	push   -0xc(%ebp)
    3253:	e8 f3 0b 00 00       	call   3e4b <close>
    wait();
    3258:	e8 ce 0b 00 00       	call   3e2b <wait>
    wait();
    325d:	e8 c9 0b 00 00       	call   3e2b <wait>
    break;
    3262:	83 c4 10             	add    $0x10,%esp
    3265:	eb 99                	jmp    3200 <runcmd+0x50>
    if(fork1() == 0)
    3267:	e8 24 ff ff ff       	call   3190 <fork1>
    326c:	85 c0                	test   %eax,%eax
    326e:	74 2f                	je     329f <runcmd+0xef>
    wait();
    3270:	e8 b6 0b 00 00       	call   3e2b <wait>
    runcmd(lcmd->right);
    3275:	83 ec 0c             	sub    $0xc,%esp
    3278:	ff 73 08             	push   0x8(%ebx)
    327b:	e8 30 ff ff ff       	call   31b0 <runcmd>
    close(rcmd->fd);
    3280:	83 ec 0c             	sub    $0xc,%esp
    3283:	ff 73 14             	push   0x14(%ebx)
    3286:	e8 c0 0b 00 00       	call   3e4b <close>
    if(open(rcmd->file, rcmd->mode) < 0){
    328b:	58                   	pop    %eax
    328c:	5a                   	pop    %edx
    328d:	ff 73 10             	push   0x10(%ebx)
    3290:	ff 73 08             	push   0x8(%ebx)
    3293:	e8 cb 0b 00 00       	call   3e63 <open>
    3298:	83 c4 10             	add    $0x10,%esp
    329b:	85 c0                	test   %eax,%eax
    329d:	78 18                	js     32b7 <runcmd+0x107>
      runcmd(bcmd->cmd);
    329f:	83 ec 0c             	sub    $0xc,%esp
    32a2:	ff 73 04             	push   0x4(%ebx)
    32a5:	e8 06 ff ff ff       	call   31b0 <runcmd>
    panic("runcmd");
    32aa:	83 ec 0c             	sub    $0xc,%esp
    32ad:	68 b0 42 00 00       	push   $0x42b0
    32b2:	e8 b9 fe ff ff       	call   3170 <panic>
      printf(2, "open %s failed\n", rcmd->file);
    32b7:	51                   	push   %ecx
    32b8:	ff 73 08             	push   0x8(%ebx)
    32bb:	68 c7 42 00 00       	push   $0x42c7
    32c0:	6a 02                	push   $0x2
    32c2:	e8 b9 0c 00 00       	call   3f80 <printf>
      exit();
    32c7:	e8 57 0b 00 00       	call   3e23 <exit>
      panic("pipe");
    32cc:	83 ec 0c             	sub    $0xc,%esp
    32cf:	68 d7 42 00 00       	push   $0x42d7
    32d4:	e8 97 fe ff ff       	call   3170 <panic>
      close(1);
    32d9:	83 ec 0c             	sub    $0xc,%esp
    32dc:	6a 01                	push   $0x1
    32de:	e8 68 0b 00 00       	call   3e4b <close>
      dup(p[1]);
    32e3:	58                   	pop    %eax
    32e4:	ff 75 f4             	push   -0xc(%ebp)
    32e7:	e8 af 0b 00 00       	call   3e9b <dup>
      close(p[0]);
    32ec:	58                   	pop    %eax
    32ed:	ff 75 f0             	push   -0x10(%ebp)
    32f0:	e8 56 0b 00 00       	call   3e4b <close>
      close(p[1]);
    32f5:	58                   	pop    %eax
    32f6:	ff 75 f4             	push   -0xc(%ebp)
    32f9:	e8 4d 0b 00 00       	call   3e4b <close>
      runcmd(pcmd->left);
    32fe:	5a                   	pop    %edx
    32ff:	ff 73 04             	push   0x4(%ebx)
    3302:	e8 a9 fe ff ff       	call   31b0 <runcmd>
      close(0);
    3307:	83 ec 0c             	sub    $0xc,%esp
    330a:	6a 00                	push   $0x0
    330c:	e8 3a 0b 00 00       	call   3e4b <close>
      dup(p[0]);
    3311:	5a                   	pop    %edx
    3312:	ff 75 f0             	push   -0x10(%ebp)
    3315:	e8 81 0b 00 00       	call   3e9b <dup>
      close(p[0]);
    331a:	59                   	pop    %ecx
    331b:	ff 75 f0             	push   -0x10(%ebp)
    331e:	e8 28 0b 00 00       	call   3e4b <close>
      close(p[1]);
    3323:	58                   	pop    %eax
    3324:	ff 75 f4             	push   -0xc(%ebp)
    3327:	e8 1f 0b 00 00       	call   3e4b <close>
      runcmd(pcmd->right);
    332c:	58                   	pop    %eax
    332d:	ff 73 08             	push   0x8(%ebx)
    3330:	e8 7b fe ff ff       	call   31b0 <runcmd>
    3335:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    333c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003340 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
    3340:	55                   	push   %ebp
    3341:	89 e5                	mov    %esp,%ebp
    3343:	53                   	push   %ebx
    3344:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
    3347:	6a 54                	push   $0x54
    3349:	e8 62 0e 00 00       	call   41b0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
    334e:	83 c4 0c             	add    $0xc,%esp
    3351:	6a 54                	push   $0x54
  cmd = malloc(sizeof(*cmd));
    3353:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
    3355:	6a 00                	push   $0x0
    3357:	50                   	push   %eax
    3358:	e8 33 09 00 00       	call   3c90 <memset>
  cmd->type = EXEC;
    335d:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
    3363:	89 d8                	mov    %ebx,%eax
    3365:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3368:	c9                   	leave  
    3369:	c3                   	ret    
    336a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003370 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
    3370:	55                   	push   %ebp
    3371:	89 e5                	mov    %esp,%ebp
    3373:	53                   	push   %ebx
    3374:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
    3377:	6a 18                	push   $0x18
    3379:	e8 32 0e 00 00       	call   41b0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
    337e:	83 c4 0c             	add    $0xc,%esp
    3381:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
    3383:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
    3385:	6a 00                	push   $0x0
    3387:	50                   	push   %eax
    3388:	e8 03 09 00 00       	call   3c90 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
    338d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
    3390:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
    3396:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
    3399:	8b 45 0c             	mov    0xc(%ebp),%eax
    339c:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
    339f:	8b 45 10             	mov    0x10(%ebp),%eax
    33a2:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
    33a5:	8b 45 14             	mov    0x14(%ebp),%eax
    33a8:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
    33ab:	8b 45 18             	mov    0x18(%ebp),%eax
    33ae:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
    33b1:	89 d8                	mov    %ebx,%eax
    33b3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    33b6:	c9                   	leave  
    33b7:	c3                   	ret    
    33b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    33bf:	90                   	nop

000033c0 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
    33c0:	55                   	push   %ebp
    33c1:	89 e5                	mov    %esp,%ebp
    33c3:	53                   	push   %ebx
    33c4:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
    33c7:	6a 0c                	push   $0xc
    33c9:	e8 e2 0d 00 00       	call   41b0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
    33ce:	83 c4 0c             	add    $0xc,%esp
    33d1:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
    33d3:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
    33d5:	6a 00                	push   $0x0
    33d7:	50                   	push   %eax
    33d8:	e8 b3 08 00 00       	call   3c90 <memset>
  cmd->type = PIPE;
  cmd->left = left;
    33dd:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
    33e0:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
    33e6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
    33e9:	8b 45 0c             	mov    0xc(%ebp),%eax
    33ec:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
    33ef:	89 d8                	mov    %ebx,%eax
    33f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    33f4:	c9                   	leave  
    33f5:	c3                   	ret    
    33f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    33fd:	8d 76 00             	lea    0x0(%esi),%esi

00003400 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
    3400:	55                   	push   %ebp
    3401:	89 e5                	mov    %esp,%ebp
    3403:	53                   	push   %ebx
    3404:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
    3407:	6a 0c                	push   $0xc
    3409:	e8 a2 0d 00 00       	call   41b0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
    340e:	83 c4 0c             	add    $0xc,%esp
    3411:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
    3413:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
    3415:	6a 00                	push   $0x0
    3417:	50                   	push   %eax
    3418:	e8 73 08 00 00       	call   3c90 <memset>
  cmd->type = LIST;
  cmd->left = left;
    341d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
    3420:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
    3426:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
    3429:	8b 45 0c             	mov    0xc(%ebp),%eax
    342c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
    342f:	89 d8                	mov    %ebx,%eax
    3431:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3434:	c9                   	leave  
    3435:	c3                   	ret    
    3436:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    343d:	8d 76 00             	lea    0x0(%esi),%esi

00003440 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
    3440:	55                   	push   %ebp
    3441:	89 e5                	mov    %esp,%ebp
    3443:	53                   	push   %ebx
    3444:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
    3447:	6a 08                	push   $0x8
    3449:	e8 62 0d 00 00       	call   41b0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
    344e:	83 c4 0c             	add    $0xc,%esp
    3451:	6a 08                	push   $0x8
  cmd = malloc(sizeof(*cmd));
    3453:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
    3455:	6a 00                	push   $0x0
    3457:	50                   	push   %eax
    3458:	e8 33 08 00 00       	call   3c90 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
    345d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
    3460:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
    3466:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
    3469:	89 d8                	mov    %ebx,%eax
    346b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    346e:	c9                   	leave  
    346f:	c3                   	ret    

00003470 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
    3470:	55                   	push   %ebp
    3471:	89 e5                	mov    %esp,%ebp
    3473:	57                   	push   %edi
    3474:	56                   	push   %esi
    3475:	53                   	push   %ebx
    3476:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
    3479:	8b 45 08             	mov    0x8(%ebp),%eax
{
    347c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    347f:	8b 75 10             	mov    0x10(%ebp),%esi
  s = *ps;
    3482:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
    3484:	39 df                	cmp    %ebx,%edi
    3486:	72 0f                	jb     3497 <gettoken+0x27>
    3488:	eb 25                	jmp    34af <gettoken+0x3f>
    348a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
    3490:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
    3493:	39 fb                	cmp    %edi,%ebx
    3495:	74 18                	je     34af <gettoken+0x3f>
    3497:	0f be 07             	movsbl (%edi),%eax
    349a:	83 ec 08             	sub    $0x8,%esp
    349d:	50                   	push   %eax
    349e:	68 cc 49 00 00       	push   $0x49cc
    34a3:	e8 08 08 00 00       	call   3cb0 <strchr>
    34a8:	83 c4 10             	add    $0x10,%esp
    34ab:	85 c0                	test   %eax,%eax
    34ad:	75 e1                	jne    3490 <gettoken+0x20>
  if(q)
    34af:	85 f6                	test   %esi,%esi
    34b1:	74 02                	je     34b5 <gettoken+0x45>
    *q = s;
    34b3:	89 3e                	mov    %edi,(%esi)
  ret = *s;
    34b5:	0f b6 07             	movzbl (%edi),%eax
  switch(*s){
    34b8:	3c 3c                	cmp    $0x3c,%al
    34ba:	0f 8f d0 00 00 00    	jg     3590 <gettoken+0x120>
    34c0:	3c 3a                	cmp    $0x3a,%al
    34c2:	0f 8f b4 00 00 00    	jg     357c <gettoken+0x10c>
    34c8:	84 c0                	test   %al,%al
    34ca:	75 44                	jne    3510 <gettoken+0xa0>
    34cc:	31 f6                	xor    %esi,%esi
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
    34ce:	8b 55 14             	mov    0x14(%ebp),%edx
    34d1:	85 d2                	test   %edx,%edx
    34d3:	74 05                	je     34da <gettoken+0x6a>
    *eq = s;
    34d5:	8b 45 14             	mov    0x14(%ebp),%eax
    34d8:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
    34da:	39 df                	cmp    %ebx,%edi
    34dc:	72 09                	jb     34e7 <gettoken+0x77>
    34de:	eb 1f                	jmp    34ff <gettoken+0x8f>
    s++;
    34e0:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
    34e3:	39 fb                	cmp    %edi,%ebx
    34e5:	74 18                	je     34ff <gettoken+0x8f>
    34e7:	0f be 07             	movsbl (%edi),%eax
    34ea:	83 ec 08             	sub    $0x8,%esp
    34ed:	50                   	push   %eax
    34ee:	68 cc 49 00 00       	push   $0x49cc
    34f3:	e8 b8 07 00 00       	call   3cb0 <strchr>
    34f8:	83 c4 10             	add    $0x10,%esp
    34fb:	85 c0                	test   %eax,%eax
    34fd:	75 e1                	jne    34e0 <gettoken+0x70>
  *ps = s;
    34ff:	8b 45 08             	mov    0x8(%ebp),%eax
    3502:	89 38                	mov    %edi,(%eax)
  return ret;
}
    3504:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3507:	89 f0                	mov    %esi,%eax
    3509:	5b                   	pop    %ebx
    350a:	5e                   	pop    %esi
    350b:	5f                   	pop    %edi
    350c:	5d                   	pop    %ebp
    350d:	c3                   	ret    
    350e:	66 90                	xchg   %ax,%ax
  switch(*s){
    3510:	79 5e                	jns    3570 <gettoken+0x100>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
    3512:	39 fb                	cmp    %edi,%ebx
    3514:	77 34                	ja     354a <gettoken+0xda>
  if(eq)
    3516:	8b 45 14             	mov    0x14(%ebp),%eax
    3519:	be 61 00 00 00       	mov    $0x61,%esi
    351e:	85 c0                	test   %eax,%eax
    3520:	75 b3                	jne    34d5 <gettoken+0x65>
    3522:	eb db                	jmp    34ff <gettoken+0x8f>
    3524:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
    3528:	0f be 07             	movsbl (%edi),%eax
    352b:	83 ec 08             	sub    $0x8,%esp
    352e:	50                   	push   %eax
    352f:	68 c4 49 00 00       	push   $0x49c4
    3534:	e8 77 07 00 00       	call   3cb0 <strchr>
    3539:	83 c4 10             	add    $0x10,%esp
    353c:	85 c0                	test   %eax,%eax
    353e:	75 22                	jne    3562 <gettoken+0xf2>
      s++;
    3540:	83 c7 01             	add    $0x1,%edi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
    3543:	39 fb                	cmp    %edi,%ebx
    3545:	74 cf                	je     3516 <gettoken+0xa6>
    3547:	0f b6 07             	movzbl (%edi),%eax
    354a:	83 ec 08             	sub    $0x8,%esp
    354d:	0f be f0             	movsbl %al,%esi
    3550:	56                   	push   %esi
    3551:	68 cc 49 00 00       	push   $0x49cc
    3556:	e8 55 07 00 00       	call   3cb0 <strchr>
    355b:	83 c4 10             	add    $0x10,%esp
    355e:	85 c0                	test   %eax,%eax
    3560:	74 c6                	je     3528 <gettoken+0xb8>
    ret = 'a';
    3562:	be 61 00 00 00       	mov    $0x61,%esi
    3567:	e9 62 ff ff ff       	jmp    34ce <gettoken+0x5e>
    356c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
    3570:	3c 26                	cmp    $0x26,%al
    3572:	74 08                	je     357c <gettoken+0x10c>
    3574:	8d 48 d8             	lea    -0x28(%eax),%ecx
    3577:	80 f9 01             	cmp    $0x1,%cl
    357a:	77 96                	ja     3512 <gettoken+0xa2>
  ret = *s;
    357c:	0f be f0             	movsbl %al,%esi
    s++;
    357f:	83 c7 01             	add    $0x1,%edi
    break;
    3582:	e9 47 ff ff ff       	jmp    34ce <gettoken+0x5e>
    3587:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    358e:	66 90                	xchg   %ax,%ax
  switch(*s){
    3590:	3c 3e                	cmp    $0x3e,%al
    3592:	75 1c                	jne    35b0 <gettoken+0x140>
    if(*s == '>'){
    3594:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
    s++;
    3598:	8d 47 01             	lea    0x1(%edi),%eax
    if(*s == '>'){
    359b:	74 1c                	je     35b9 <gettoken+0x149>
    s++;
    359d:	89 c7                	mov    %eax,%edi
    359f:	be 3e 00 00 00       	mov    $0x3e,%esi
    35a4:	e9 25 ff ff ff       	jmp    34ce <gettoken+0x5e>
    35a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
    35b0:	3c 7c                	cmp    $0x7c,%al
    35b2:	74 c8                	je     357c <gettoken+0x10c>
    35b4:	e9 59 ff ff ff       	jmp    3512 <gettoken+0xa2>
      s++;
    35b9:	83 c7 02             	add    $0x2,%edi
      ret = '+';
    35bc:	be 2b 00 00 00       	mov    $0x2b,%esi
    35c1:	e9 08 ff ff ff       	jmp    34ce <gettoken+0x5e>
    35c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    35cd:	8d 76 00             	lea    0x0(%esi),%esi

000035d0 <peek>:

int
peek(char **ps, char *es, char *toks)
{
    35d0:	55                   	push   %ebp
    35d1:	89 e5                	mov    %esp,%ebp
    35d3:	57                   	push   %edi
    35d4:	56                   	push   %esi
    35d5:	53                   	push   %ebx
    35d6:	83 ec 0c             	sub    $0xc,%esp
    35d9:	8b 7d 08             	mov    0x8(%ebp),%edi
    35dc:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
    35df:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
    35e1:	39 f3                	cmp    %esi,%ebx
    35e3:	72 12                	jb     35f7 <peek+0x27>
    35e5:	eb 28                	jmp    360f <peek+0x3f>
    35e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    35ee:	66 90                	xchg   %ax,%ax
    s++;
    35f0:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
    35f3:	39 de                	cmp    %ebx,%esi
    35f5:	74 18                	je     360f <peek+0x3f>
    35f7:	0f be 03             	movsbl (%ebx),%eax
    35fa:	83 ec 08             	sub    $0x8,%esp
    35fd:	50                   	push   %eax
    35fe:	68 cc 49 00 00       	push   $0x49cc
    3603:	e8 a8 06 00 00       	call   3cb0 <strchr>
    3608:	83 c4 10             	add    $0x10,%esp
    360b:	85 c0                	test   %eax,%eax
    360d:	75 e1                	jne    35f0 <peek+0x20>
  *ps = s;
    360f:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
    3611:	0f be 03             	movsbl (%ebx),%eax
    3614:	31 d2                	xor    %edx,%edx
    3616:	84 c0                	test   %al,%al
    3618:	75 0e                	jne    3628 <peek+0x58>
}
    361a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    361d:	89 d0                	mov    %edx,%eax
    361f:	5b                   	pop    %ebx
    3620:	5e                   	pop    %esi
    3621:	5f                   	pop    %edi
    3622:	5d                   	pop    %ebp
    3623:	c3                   	ret    
    3624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return *s && strchr(toks, *s);
    3628:	83 ec 08             	sub    $0x8,%esp
    362b:	50                   	push   %eax
    362c:	ff 75 10             	push   0x10(%ebp)
    362f:	e8 7c 06 00 00       	call   3cb0 <strchr>
    3634:	83 c4 10             	add    $0x10,%esp
    3637:	31 d2                	xor    %edx,%edx
    3639:	85 c0                	test   %eax,%eax
    363b:	0f 95 c2             	setne  %dl
}
    363e:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3641:	5b                   	pop    %ebx
    3642:	89 d0                	mov    %edx,%eax
    3644:	5e                   	pop    %esi
    3645:	5f                   	pop    %edi
    3646:	5d                   	pop    %ebp
    3647:	c3                   	ret    
    3648:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    364f:	90                   	nop

00003650 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
    3650:	55                   	push   %ebp
    3651:	89 e5                	mov    %esp,%ebp
    3653:	57                   	push   %edi
    3654:	56                   	push   %esi
    3655:	53                   	push   %ebx
    3656:	83 ec 2c             	sub    $0x2c,%esp
    3659:	8b 75 0c             	mov    0xc(%ebp),%esi
    365c:	8b 5d 10             	mov    0x10(%ebp),%ebx
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
    365f:	90                   	nop
    3660:	83 ec 04             	sub    $0x4,%esp
    3663:	68 f9 42 00 00       	push   $0x42f9
    3668:	53                   	push   %ebx
    3669:	56                   	push   %esi
    366a:	e8 61 ff ff ff       	call   35d0 <peek>
    366f:	83 c4 10             	add    $0x10,%esp
    3672:	85 c0                	test   %eax,%eax
    3674:	0f 84 f6 00 00 00    	je     3770 <parseredirs+0x120>
    tok = gettoken(ps, es, 0, 0);
    367a:	6a 00                	push   $0x0
    367c:	6a 00                	push   $0x0
    367e:	53                   	push   %ebx
    367f:	56                   	push   %esi
    3680:	e8 eb fd ff ff       	call   3470 <gettoken>
    3685:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
    3687:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    368a:	50                   	push   %eax
    368b:	8d 45 e0             	lea    -0x20(%ebp),%eax
    368e:	50                   	push   %eax
    368f:	53                   	push   %ebx
    3690:	56                   	push   %esi
    3691:	e8 da fd ff ff       	call   3470 <gettoken>
    3696:	83 c4 20             	add    $0x20,%esp
    3699:	83 f8 61             	cmp    $0x61,%eax
    369c:	0f 85 d9 00 00 00    	jne    377b <parseredirs+0x12b>
      panic("missing file for redirection");
    switch(tok){
    36a2:	83 ff 3c             	cmp    $0x3c,%edi
    36a5:	74 69                	je     3710 <parseredirs+0xc0>
    36a7:	83 ff 3e             	cmp    $0x3e,%edi
    36aa:	74 05                	je     36b1 <parseredirs+0x61>
    36ac:	83 ff 2b             	cmp    $0x2b,%edi
    36af:	75 af                	jne    3660 <parseredirs+0x10>
  cmd = malloc(sizeof(*cmd));
    36b1:	83 ec 0c             	sub    $0xc,%esp
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
    36b4:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    36b7:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
    36ba:	6a 18                	push   $0x18
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
    36bc:	89 55 d0             	mov    %edx,-0x30(%ebp)
    36bf:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
    36c2:	e8 e9 0a 00 00       	call   41b0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
    36c7:	83 c4 0c             	add    $0xc,%esp
    36ca:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
    36cc:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
    36ce:	6a 00                	push   $0x0
    36d0:	50                   	push   %eax
    36d1:	e8 ba 05 00 00       	call   3c90 <memset>
  cmd->type = REDIR;
    36d6:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
  cmd->cmd = subcmd;
    36dc:	8b 45 08             	mov    0x8(%ebp),%eax
      break;
    36df:	83 c4 10             	add    $0x10,%esp
  cmd->cmd = subcmd;
    36e2:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
    36e5:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    36e8:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
    36eb:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->mode = mode;
    36ee:	c7 47 10 01 02 00 00 	movl   $0x201,0x10(%edi)
  cmd->efile = efile;
    36f5:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->fd = fd;
    36f8:	c7 47 14 01 00 00 00 	movl   $0x1,0x14(%edi)
      break;
    36ff:	89 7d 08             	mov    %edi,0x8(%ebp)
    3702:	e9 59 ff ff ff       	jmp    3660 <parseredirs+0x10>
    3707:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    370e:	66 90                	xchg   %ax,%ax
  cmd = malloc(sizeof(*cmd));
    3710:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
    3713:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    3716:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
    3719:	6a 18                	push   $0x18
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
    371b:	89 55 d0             	mov    %edx,-0x30(%ebp)
    371e:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
    3721:	e8 8a 0a 00 00       	call   41b0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
    3726:	83 c4 0c             	add    $0xc,%esp
    3729:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
    372b:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
    372d:	6a 00                	push   $0x0
    372f:	50                   	push   %eax
    3730:	e8 5b 05 00 00       	call   3c90 <memset>
  cmd->cmd = subcmd;
    3735:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->file = file;
    3738:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      break;
    373b:	89 7d 08             	mov    %edi,0x8(%ebp)
  cmd->efile = efile;
    373e:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->type = REDIR;
    3741:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
      break;
    3747:	83 c4 10             	add    $0x10,%esp
  cmd->cmd = subcmd;
    374a:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
    374d:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
    3750:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->mode = mode;
    3753:	c7 47 10 00 00 00 00 	movl   $0x0,0x10(%edi)
  cmd->fd = fd;
    375a:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%edi)
      break;
    3761:	e9 fa fe ff ff       	jmp    3660 <parseredirs+0x10>
    3766:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    376d:	8d 76 00             	lea    0x0(%esi),%esi
    }
  }
  return cmd;
}
    3770:	8b 45 08             	mov    0x8(%ebp),%eax
    3773:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3776:	5b                   	pop    %ebx
    3777:	5e                   	pop    %esi
    3778:	5f                   	pop    %edi
    3779:	5d                   	pop    %ebp
    377a:	c3                   	ret    
      panic("missing file for redirection");
    377b:	83 ec 0c             	sub    $0xc,%esp
    377e:	68 dc 42 00 00       	push   $0x42dc
    3783:	e8 e8 f9 ff ff       	call   3170 <panic>
    3788:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    378f:	90                   	nop

00003790 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
    3790:	55                   	push   %ebp
    3791:	89 e5                	mov    %esp,%ebp
    3793:	57                   	push   %edi
    3794:	56                   	push   %esi
    3795:	53                   	push   %ebx
    3796:	83 ec 30             	sub    $0x30,%esp
    3799:	8b 75 08             	mov    0x8(%ebp),%esi
    379c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
    379f:	68 fc 42 00 00       	push   $0x42fc
    37a4:	57                   	push   %edi
    37a5:	56                   	push   %esi
    37a6:	e8 25 fe ff ff       	call   35d0 <peek>
    37ab:	83 c4 10             	add    $0x10,%esp
    37ae:	85 c0                	test   %eax,%eax
    37b0:	0f 85 aa 00 00 00    	jne    3860 <parseexec+0xd0>
  cmd = malloc(sizeof(*cmd));
    37b6:	83 ec 0c             	sub    $0xc,%esp
    37b9:	89 c3                	mov    %eax,%ebx
    37bb:	6a 54                	push   $0x54
    37bd:	e8 ee 09 00 00       	call   41b0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
    37c2:	83 c4 0c             	add    $0xc,%esp
    37c5:	6a 54                	push   $0x54
    37c7:	6a 00                	push   $0x0
    37c9:	50                   	push   %eax
    37ca:	89 45 d0             	mov    %eax,-0x30(%ebp)
    37cd:	e8 be 04 00 00       	call   3c90 <memset>
  cmd->type = EXEC;
    37d2:	8b 45 d0             	mov    -0x30(%ebp),%eax

  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
    37d5:	83 c4 0c             	add    $0xc,%esp
  cmd->type = EXEC;
    37d8:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  ret = parseredirs(ret, ps, es);
    37de:	57                   	push   %edi
    37df:	56                   	push   %esi
    37e0:	50                   	push   %eax
    37e1:	e8 6a fe ff ff       	call   3650 <parseredirs>
  while(!peek(ps, es, "|)&;")){
    37e6:	83 c4 10             	add    $0x10,%esp
  ret = parseredirs(ret, ps, es);
    37e9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
    37ec:	eb 15                	jmp    3803 <parseexec+0x73>
    37ee:	66 90                	xchg   %ax,%ax
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
    37f0:	83 ec 04             	sub    $0x4,%esp
    37f3:	57                   	push   %edi
    37f4:	56                   	push   %esi
    37f5:	ff 75 d4             	push   -0x2c(%ebp)
    37f8:	e8 53 fe ff ff       	call   3650 <parseredirs>
    37fd:	83 c4 10             	add    $0x10,%esp
    3800:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
    3803:	83 ec 04             	sub    $0x4,%esp
    3806:	68 13 43 00 00       	push   $0x4313
    380b:	57                   	push   %edi
    380c:	56                   	push   %esi
    380d:	e8 be fd ff ff       	call   35d0 <peek>
    3812:	83 c4 10             	add    $0x10,%esp
    3815:	85 c0                	test   %eax,%eax
    3817:	75 5f                	jne    3878 <parseexec+0xe8>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
    3819:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    381c:	50                   	push   %eax
    381d:	8d 45 e0             	lea    -0x20(%ebp),%eax
    3820:	50                   	push   %eax
    3821:	57                   	push   %edi
    3822:	56                   	push   %esi
    3823:	e8 48 fc ff ff       	call   3470 <gettoken>
    3828:	83 c4 10             	add    $0x10,%esp
    382b:	85 c0                	test   %eax,%eax
    382d:	74 49                	je     3878 <parseexec+0xe8>
    if(tok != 'a')
    382f:	83 f8 61             	cmp    $0x61,%eax
    3832:	75 62                	jne    3896 <parseexec+0x106>
    cmd->argv[argc] = q;
    3834:	8b 45 e0             	mov    -0x20(%ebp),%eax
    3837:	8b 55 d0             	mov    -0x30(%ebp),%edx
    383a:	89 44 9a 04          	mov    %eax,0x4(%edx,%ebx,4)
    cmd->eargv[argc] = eq;
    383e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    3841:	89 44 9a 2c          	mov    %eax,0x2c(%edx,%ebx,4)
    argc++;
    3845:	83 c3 01             	add    $0x1,%ebx
    if(argc >= MAXARGS)
    3848:	83 fb 0a             	cmp    $0xa,%ebx
    384b:	75 a3                	jne    37f0 <parseexec+0x60>
      panic("too many args");
    384d:	83 ec 0c             	sub    $0xc,%esp
    3850:	68 05 43 00 00       	push   $0x4305
    3855:	e8 16 f9 ff ff       	call   3170 <panic>
    385a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return parseblock(ps, es);
    3860:	89 7d 0c             	mov    %edi,0xc(%ebp)
    3863:	89 75 08             	mov    %esi,0x8(%ebp)
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
    3866:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3869:	5b                   	pop    %ebx
    386a:	5e                   	pop    %esi
    386b:	5f                   	pop    %edi
    386c:	5d                   	pop    %ebp
    return parseblock(ps, es);
    386d:	e9 ae 01 00 00       	jmp    3a20 <parseblock>
    3872:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  cmd->argv[argc] = 0;
    3878:	8b 45 d0             	mov    -0x30(%ebp),%eax
    387b:	c7 44 98 04 00 00 00 	movl   $0x0,0x4(%eax,%ebx,4)
    3882:	00 
  cmd->eargv[argc] = 0;
    3883:	c7 44 98 2c 00 00 00 	movl   $0x0,0x2c(%eax,%ebx,4)
    388a:	00 
}
    388b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    388e:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3891:	5b                   	pop    %ebx
    3892:	5e                   	pop    %esi
    3893:	5f                   	pop    %edi
    3894:	5d                   	pop    %ebp
    3895:	c3                   	ret    
      panic("syntax");
    3896:	83 ec 0c             	sub    $0xc,%esp
    3899:	68 fe 42 00 00       	push   $0x42fe
    389e:	e8 cd f8 ff ff       	call   3170 <panic>
    38a3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    38aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000038b0 <parsepipe>:
{
    38b0:	55                   	push   %ebp
    38b1:	89 e5                	mov    %esp,%ebp
    38b3:	57                   	push   %edi
    38b4:	56                   	push   %esi
    38b5:	53                   	push   %ebx
    38b6:	83 ec 14             	sub    $0x14,%esp
    38b9:	8b 75 08             	mov    0x8(%ebp),%esi
    38bc:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parseexec(ps, es);
    38bf:	57                   	push   %edi
    38c0:	56                   	push   %esi
    38c1:	e8 ca fe ff ff       	call   3790 <parseexec>
  if(peek(ps, es, "|")){
    38c6:	83 c4 0c             	add    $0xc,%esp
    38c9:	68 18 43 00 00       	push   $0x4318
  cmd = parseexec(ps, es);
    38ce:	89 c3                	mov    %eax,%ebx
  if(peek(ps, es, "|")){
    38d0:	57                   	push   %edi
    38d1:	56                   	push   %esi
    38d2:	e8 f9 fc ff ff       	call   35d0 <peek>
    38d7:	83 c4 10             	add    $0x10,%esp
    38da:	85 c0                	test   %eax,%eax
    38dc:	75 12                	jne    38f0 <parsepipe+0x40>
}
    38de:	8d 65 f4             	lea    -0xc(%ebp),%esp
    38e1:	89 d8                	mov    %ebx,%eax
    38e3:	5b                   	pop    %ebx
    38e4:	5e                   	pop    %esi
    38e5:	5f                   	pop    %edi
    38e6:	5d                   	pop    %ebp
    38e7:	c3                   	ret    
    38e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    38ef:	90                   	nop
    gettoken(ps, es, 0, 0);
    38f0:	6a 00                	push   $0x0
    38f2:	6a 00                	push   $0x0
    38f4:	57                   	push   %edi
    38f5:	56                   	push   %esi
    38f6:	e8 75 fb ff ff       	call   3470 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
    38fb:	58                   	pop    %eax
    38fc:	5a                   	pop    %edx
    38fd:	57                   	push   %edi
    38fe:	56                   	push   %esi
    38ff:	e8 ac ff ff ff       	call   38b0 <parsepipe>
  cmd = malloc(sizeof(*cmd));
    3904:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = pipecmd(cmd, parsepipe(ps, es));
    390b:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
    390d:	e8 9e 08 00 00       	call   41b0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
    3912:	83 c4 0c             	add    $0xc,%esp
    3915:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
    3917:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
    3919:	6a 00                	push   $0x0
    391b:	50                   	push   %eax
    391c:	e8 6f 03 00 00       	call   3c90 <memset>
  cmd->left = left;
    3921:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
    3924:	83 c4 10             	add    $0x10,%esp
    3927:	89 f3                	mov    %esi,%ebx
  cmd->type = PIPE;
    3929:	c7 06 03 00 00 00    	movl   $0x3,(%esi)
}
    392f:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
    3931:	89 7e 08             	mov    %edi,0x8(%esi)
}
    3934:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3937:	5b                   	pop    %ebx
    3938:	5e                   	pop    %esi
    3939:	5f                   	pop    %edi
    393a:	5d                   	pop    %ebp
    393b:	c3                   	ret    
    393c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003940 <parseline>:
{
    3940:	55                   	push   %ebp
    3941:	89 e5                	mov    %esp,%ebp
    3943:	57                   	push   %edi
    3944:	56                   	push   %esi
    3945:	53                   	push   %ebx
    3946:	83 ec 24             	sub    $0x24,%esp
    3949:	8b 75 08             	mov    0x8(%ebp),%esi
    394c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parsepipe(ps, es);
    394f:	57                   	push   %edi
    3950:	56                   	push   %esi
    3951:	e8 5a ff ff ff       	call   38b0 <parsepipe>
  while(peek(ps, es, "&")){
    3956:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
    3959:	89 c3                	mov    %eax,%ebx
  while(peek(ps, es, "&")){
    395b:	eb 3b                	jmp    3998 <parseline+0x58>
    395d:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
    3960:	6a 00                	push   $0x0
    3962:	6a 00                	push   $0x0
    3964:	57                   	push   %edi
    3965:	56                   	push   %esi
    3966:	e8 05 fb ff ff       	call   3470 <gettoken>
  cmd = malloc(sizeof(*cmd));
    396b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    3972:	e8 39 08 00 00       	call   41b0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
    3977:	83 c4 0c             	add    $0xc,%esp
    397a:	6a 08                	push   $0x8
    397c:	6a 00                	push   $0x0
    397e:	50                   	push   %eax
    397f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    3982:	e8 09 03 00 00       	call   3c90 <memset>
  cmd->type = BACK;
    3987:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  cmd->cmd = subcmd;
    398a:	83 c4 10             	add    $0x10,%esp
  cmd->type = BACK;
    398d:	c7 02 05 00 00 00    	movl   $0x5,(%edx)
  cmd->cmd = subcmd;
    3993:	89 5a 04             	mov    %ebx,0x4(%edx)
    3996:	89 d3                	mov    %edx,%ebx
  while(peek(ps, es, "&")){
    3998:	83 ec 04             	sub    $0x4,%esp
    399b:	68 1a 43 00 00       	push   $0x431a
    39a0:	57                   	push   %edi
    39a1:	56                   	push   %esi
    39a2:	e8 29 fc ff ff       	call   35d0 <peek>
    39a7:	83 c4 10             	add    $0x10,%esp
    39aa:	85 c0                	test   %eax,%eax
    39ac:	75 b2                	jne    3960 <parseline+0x20>
  if(peek(ps, es, ";")){
    39ae:	83 ec 04             	sub    $0x4,%esp
    39b1:	68 16 43 00 00       	push   $0x4316
    39b6:	57                   	push   %edi
    39b7:	56                   	push   %esi
    39b8:	e8 13 fc ff ff       	call   35d0 <peek>
    39bd:	83 c4 10             	add    $0x10,%esp
    39c0:	85 c0                	test   %eax,%eax
    39c2:	75 0c                	jne    39d0 <parseline+0x90>
}
    39c4:	8d 65 f4             	lea    -0xc(%ebp),%esp
    39c7:	89 d8                	mov    %ebx,%eax
    39c9:	5b                   	pop    %ebx
    39ca:	5e                   	pop    %esi
    39cb:	5f                   	pop    %edi
    39cc:	5d                   	pop    %ebp
    39cd:	c3                   	ret    
    39ce:	66 90                	xchg   %ax,%ax
    gettoken(ps, es, 0, 0);
    39d0:	6a 00                	push   $0x0
    39d2:	6a 00                	push   $0x0
    39d4:	57                   	push   %edi
    39d5:	56                   	push   %esi
    39d6:	e8 95 fa ff ff       	call   3470 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
    39db:	58                   	pop    %eax
    39dc:	5a                   	pop    %edx
    39dd:	57                   	push   %edi
    39de:	56                   	push   %esi
    39df:	e8 5c ff ff ff       	call   3940 <parseline>
  cmd = malloc(sizeof(*cmd));
    39e4:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = listcmd(cmd, parseline(ps, es));
    39eb:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
    39ed:	e8 be 07 00 00       	call   41b0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
    39f2:	83 c4 0c             	add    $0xc,%esp
    39f5:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
    39f7:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
    39f9:	6a 00                	push   $0x0
    39fb:	50                   	push   %eax
    39fc:	e8 8f 02 00 00       	call   3c90 <memset>
  cmd->left = left;
    3a01:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
    3a04:	83 c4 10             	add    $0x10,%esp
    3a07:	89 f3                	mov    %esi,%ebx
  cmd->type = LIST;
    3a09:	c7 06 04 00 00 00    	movl   $0x4,(%esi)
}
    3a0f:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
    3a11:	89 7e 08             	mov    %edi,0x8(%esi)
}
    3a14:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3a17:	5b                   	pop    %ebx
    3a18:	5e                   	pop    %esi
    3a19:	5f                   	pop    %edi
    3a1a:	5d                   	pop    %ebp
    3a1b:	c3                   	ret    
    3a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003a20 <parseblock>:
{
    3a20:	55                   	push   %ebp
    3a21:	89 e5                	mov    %esp,%ebp
    3a23:	57                   	push   %edi
    3a24:	56                   	push   %esi
    3a25:	53                   	push   %ebx
    3a26:	83 ec 10             	sub    $0x10,%esp
    3a29:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3a2c:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
    3a2f:	68 fc 42 00 00       	push   $0x42fc
    3a34:	56                   	push   %esi
    3a35:	53                   	push   %ebx
    3a36:	e8 95 fb ff ff       	call   35d0 <peek>
    3a3b:	83 c4 10             	add    $0x10,%esp
    3a3e:	85 c0                	test   %eax,%eax
    3a40:	74 4a                	je     3a8c <parseblock+0x6c>
  gettoken(ps, es, 0, 0);
    3a42:	6a 00                	push   $0x0
    3a44:	6a 00                	push   $0x0
    3a46:	56                   	push   %esi
    3a47:	53                   	push   %ebx
    3a48:	e8 23 fa ff ff       	call   3470 <gettoken>
  cmd = parseline(ps, es);
    3a4d:	58                   	pop    %eax
    3a4e:	5a                   	pop    %edx
    3a4f:	56                   	push   %esi
    3a50:	53                   	push   %ebx
    3a51:	e8 ea fe ff ff       	call   3940 <parseline>
  if(!peek(ps, es, ")"))
    3a56:	83 c4 0c             	add    $0xc,%esp
    3a59:	68 38 43 00 00       	push   $0x4338
  cmd = parseline(ps, es);
    3a5e:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
    3a60:	56                   	push   %esi
    3a61:	53                   	push   %ebx
    3a62:	e8 69 fb ff ff       	call   35d0 <peek>
    3a67:	83 c4 10             	add    $0x10,%esp
    3a6a:	85 c0                	test   %eax,%eax
    3a6c:	74 2b                	je     3a99 <parseblock+0x79>
  gettoken(ps, es, 0, 0);
    3a6e:	6a 00                	push   $0x0
    3a70:	6a 00                	push   $0x0
    3a72:	56                   	push   %esi
    3a73:	53                   	push   %ebx
    3a74:	e8 f7 f9 ff ff       	call   3470 <gettoken>
  cmd = parseredirs(cmd, ps, es);
    3a79:	83 c4 0c             	add    $0xc,%esp
    3a7c:	56                   	push   %esi
    3a7d:	53                   	push   %ebx
    3a7e:	57                   	push   %edi
    3a7f:	e8 cc fb ff ff       	call   3650 <parseredirs>
}
    3a84:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3a87:	5b                   	pop    %ebx
    3a88:	5e                   	pop    %esi
    3a89:	5f                   	pop    %edi
    3a8a:	5d                   	pop    %ebp
    3a8b:	c3                   	ret    
    panic("parseblock");
    3a8c:	83 ec 0c             	sub    $0xc,%esp
    3a8f:	68 1c 43 00 00       	push   $0x431c
    3a94:	e8 d7 f6 ff ff       	call   3170 <panic>
    panic("syntax - missing )");
    3a99:	83 ec 0c             	sub    $0xc,%esp
    3a9c:	68 27 43 00 00       	push   $0x4327
    3aa1:	e8 ca f6 ff ff       	call   3170 <panic>
    3aa6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3aad:	8d 76 00             	lea    0x0(%esi),%esi

00003ab0 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
    3ab0:	55                   	push   %ebp
    3ab1:	89 e5                	mov    %esp,%ebp
    3ab3:	53                   	push   %ebx
    3ab4:	83 ec 04             	sub    $0x4,%esp
    3ab7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
    3aba:	85 db                	test   %ebx,%ebx
    3abc:	0f 84 8e 00 00 00    	je     3b50 <nulterminate+0xa0>
    return 0;

  switch(cmd->type){
    3ac2:	83 3b 05             	cmpl   $0x5,(%ebx)
    3ac5:	77 61                	ja     3b28 <nulterminate+0x78>
    3ac7:	8b 03                	mov    (%ebx),%eax
    3ac9:	ff 24 85 78 43 00 00 	jmp    *0x4378(,%eax,4)
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
    3ad0:	83 ec 0c             	sub    $0xc,%esp
    3ad3:	ff 73 04             	push   0x4(%ebx)
    3ad6:	e8 d5 ff ff ff       	call   3ab0 <nulterminate>
    nulterminate(lcmd->right);
    3adb:	58                   	pop    %eax
    3adc:	ff 73 08             	push   0x8(%ebx)
    3adf:	e8 cc ff ff ff       	call   3ab0 <nulterminate>
    break;
    3ae4:	83 c4 10             	add    $0x10,%esp
    3ae7:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
    3ae9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3aec:	c9                   	leave  
    3aed:	c3                   	ret    
    3aee:	66 90                	xchg   %ax,%ax
    nulterminate(bcmd->cmd);
    3af0:	83 ec 0c             	sub    $0xc,%esp
    3af3:	ff 73 04             	push   0x4(%ebx)
    3af6:	e8 b5 ff ff ff       	call   3ab0 <nulterminate>
    break;
    3afb:	89 d8                	mov    %ebx,%eax
    3afd:	83 c4 10             	add    $0x10,%esp
}
    3b00:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3b03:	c9                   	leave  
    3b04:	c3                   	ret    
    3b05:	8d 76 00             	lea    0x0(%esi),%esi
    for(i=0; ecmd->argv[i]; i++)
    3b08:	8b 4b 04             	mov    0x4(%ebx),%ecx
    3b0b:	8d 43 08             	lea    0x8(%ebx),%eax
    3b0e:	85 c9                	test   %ecx,%ecx
    3b10:	74 16                	je     3b28 <nulterminate+0x78>
    3b12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
    3b18:	8b 50 24             	mov    0x24(%eax),%edx
    for(i=0; ecmd->argv[i]; i++)
    3b1b:	83 c0 04             	add    $0x4,%eax
      *ecmd->eargv[i] = 0;
    3b1e:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
    3b21:	8b 50 fc             	mov    -0x4(%eax),%edx
    3b24:	85 d2                	test   %edx,%edx
    3b26:	75 f0                	jne    3b18 <nulterminate+0x68>
  switch(cmd->type){
    3b28:	89 d8                	mov    %ebx,%eax
}
    3b2a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3b2d:	c9                   	leave  
    3b2e:	c3                   	ret    
    3b2f:	90                   	nop
    nulterminate(rcmd->cmd);
    3b30:	83 ec 0c             	sub    $0xc,%esp
    3b33:	ff 73 04             	push   0x4(%ebx)
    3b36:	e8 75 ff ff ff       	call   3ab0 <nulterminate>
    *rcmd->efile = 0;
    3b3b:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
    3b3e:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
    3b41:	c6 00 00             	movb   $0x0,(%eax)
    break;
    3b44:	89 d8                	mov    %ebx,%eax
}
    3b46:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3b49:	c9                   	leave  
    3b4a:	c3                   	ret    
    3b4b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3b4f:	90                   	nop
    return 0;
    3b50:	31 c0                	xor    %eax,%eax
    3b52:	eb 95                	jmp    3ae9 <nulterminate+0x39>
    3b54:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3b5b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3b5f:	90                   	nop

00003b60 <parsecmd>:
{
    3b60:	55                   	push   %ebp
    3b61:	89 e5                	mov    %esp,%ebp
    3b63:	57                   	push   %edi
    3b64:	56                   	push   %esi
  cmd = parseline(&s, es);
    3b65:	8d 7d 08             	lea    0x8(%ebp),%edi
{
    3b68:	53                   	push   %ebx
    3b69:	83 ec 18             	sub    $0x18,%esp
  es = s + strlen(s);
    3b6c:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3b6f:	53                   	push   %ebx
    3b70:	e8 eb 00 00 00       	call   3c60 <strlen>
  cmd = parseline(&s, es);
    3b75:	59                   	pop    %ecx
    3b76:	5e                   	pop    %esi
  es = s + strlen(s);
    3b77:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
    3b79:	53                   	push   %ebx
    3b7a:	57                   	push   %edi
    3b7b:	e8 c0 fd ff ff       	call   3940 <parseline>
  peek(&s, es, "");
    3b80:	83 c4 0c             	add    $0xc,%esp
    3b83:	68 c6 42 00 00       	push   $0x42c6
  cmd = parseline(&s, es);
    3b88:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
    3b8a:	53                   	push   %ebx
    3b8b:	57                   	push   %edi
    3b8c:	e8 3f fa ff ff       	call   35d0 <peek>
  if(s != es){
    3b91:	8b 45 08             	mov    0x8(%ebp),%eax
    3b94:	83 c4 10             	add    $0x10,%esp
    3b97:	39 d8                	cmp    %ebx,%eax
    3b99:	75 13                	jne    3bae <parsecmd+0x4e>
  nulterminate(cmd);
    3b9b:	83 ec 0c             	sub    $0xc,%esp
    3b9e:	56                   	push   %esi
    3b9f:	e8 0c ff ff ff       	call   3ab0 <nulterminate>
}
    3ba4:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3ba7:	89 f0                	mov    %esi,%eax
    3ba9:	5b                   	pop    %ebx
    3baa:	5e                   	pop    %esi
    3bab:	5f                   	pop    %edi
    3bac:	5d                   	pop    %ebp
    3bad:	c3                   	ret    
    printf(2, "leftovers: %s\n", s);
    3bae:	52                   	push   %edx
    3baf:	50                   	push   %eax
    3bb0:	68 3a 43 00 00       	push   $0x433a
    3bb5:	6a 02                	push   $0x2
    3bb7:	e8 c4 03 00 00       	call   3f80 <printf>
    panic("syntax");
    3bbc:	c7 04 24 fe 42 00 00 	movl   $0x42fe,(%esp)
    3bc3:	e8 a8 f5 ff ff       	call   3170 <panic>
    3bc8:	66 90                	xchg   %ax,%ax
    3bca:	66 90                	xchg   %ax,%ax
    3bcc:	66 90                	xchg   %ax,%ax
    3bce:	66 90                	xchg   %ax,%ax

00003bd0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3bd0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3bd1:	31 c0                	xor    %eax,%eax
{
    3bd3:	89 e5                	mov    %esp,%ebp
    3bd5:	53                   	push   %ebx
    3bd6:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3bd9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    3bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
    3be0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    3be4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    3be7:	83 c0 01             	add    $0x1,%eax
    3bea:	84 d2                	test   %dl,%dl
    3bec:	75 f2                	jne    3be0 <strcpy+0x10>
    ;
  return os;
}
    3bee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3bf1:	89 c8                	mov    %ecx,%eax
    3bf3:	c9                   	leave  
    3bf4:	c3                   	ret    
    3bf5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3bfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003c00 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3c00:	55                   	push   %ebp
    3c01:	89 e5                	mov    %esp,%ebp
    3c03:	53                   	push   %ebx
    3c04:	8b 55 08             	mov    0x8(%ebp),%edx
    3c07:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    3c0a:	0f b6 02             	movzbl (%edx),%eax
    3c0d:	84 c0                	test   %al,%al
    3c0f:	75 17                	jne    3c28 <strcmp+0x28>
    3c11:	eb 3a                	jmp    3c4d <strcmp+0x4d>
    3c13:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3c17:	90                   	nop
    3c18:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
    3c1c:	83 c2 01             	add    $0x1,%edx
    3c1f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    3c22:	84 c0                	test   %al,%al
    3c24:	74 1a                	je     3c40 <strcmp+0x40>
    p++, q++;
    3c26:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
    3c28:	0f b6 19             	movzbl (%ecx),%ebx
    3c2b:	38 c3                	cmp    %al,%bl
    3c2d:	74 e9                	je     3c18 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
    3c2f:	29 d8                	sub    %ebx,%eax
}
    3c31:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3c34:	c9                   	leave  
    3c35:	c3                   	ret    
    3c36:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3c3d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
    3c40:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    3c44:	31 c0                	xor    %eax,%eax
    3c46:	29 d8                	sub    %ebx,%eax
}
    3c48:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3c4b:	c9                   	leave  
    3c4c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
    3c4d:	0f b6 19             	movzbl (%ecx),%ebx
    3c50:	31 c0                	xor    %eax,%eax
    3c52:	eb db                	jmp    3c2f <strcmp+0x2f>
    3c54:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3c5b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3c5f:	90                   	nop

00003c60 <strlen>:

uint
strlen(const char *s)
{
    3c60:	55                   	push   %ebp
    3c61:	89 e5                	mov    %esp,%ebp
    3c63:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    3c66:	80 3a 00             	cmpb   $0x0,(%edx)
    3c69:	74 15                	je     3c80 <strlen+0x20>
    3c6b:	31 c0                	xor    %eax,%eax
    3c6d:	8d 76 00             	lea    0x0(%esi),%esi
    3c70:	83 c0 01             	add    $0x1,%eax
    3c73:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    3c77:	89 c1                	mov    %eax,%ecx
    3c79:	75 f5                	jne    3c70 <strlen+0x10>
    ;
  return n;
}
    3c7b:	89 c8                	mov    %ecx,%eax
    3c7d:	5d                   	pop    %ebp
    3c7e:	c3                   	ret    
    3c7f:	90                   	nop
  for(n = 0; s[n]; n++)
    3c80:	31 c9                	xor    %ecx,%ecx
}
    3c82:	5d                   	pop    %ebp
    3c83:	89 c8                	mov    %ecx,%eax
    3c85:	c3                   	ret    
    3c86:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3c8d:	8d 76 00             	lea    0x0(%esi),%esi

00003c90 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3c90:	55                   	push   %ebp
    3c91:	89 e5                	mov    %esp,%ebp
    3c93:	57                   	push   %edi
    3c94:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3c97:	8b 4d 10             	mov    0x10(%ebp),%ecx
    3c9a:	8b 45 0c             	mov    0xc(%ebp),%eax
    3c9d:	89 d7                	mov    %edx,%edi
    3c9f:	fc                   	cld    
    3ca0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3ca2:	8b 7d fc             	mov    -0x4(%ebp),%edi
    3ca5:	89 d0                	mov    %edx,%eax
    3ca7:	c9                   	leave  
    3ca8:	c3                   	ret    
    3ca9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003cb0 <strchr>:

char*
strchr(const char *s, char c)
{
    3cb0:	55                   	push   %ebp
    3cb1:	89 e5                	mov    %esp,%ebp
    3cb3:	8b 45 08             	mov    0x8(%ebp),%eax
    3cb6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    3cba:	0f b6 10             	movzbl (%eax),%edx
    3cbd:	84 d2                	test   %dl,%dl
    3cbf:	75 12                	jne    3cd3 <strchr+0x23>
    3cc1:	eb 1d                	jmp    3ce0 <strchr+0x30>
    3cc3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3cc7:	90                   	nop
    3cc8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    3ccc:	83 c0 01             	add    $0x1,%eax
    3ccf:	84 d2                	test   %dl,%dl
    3cd1:	74 0d                	je     3ce0 <strchr+0x30>
    if(*s == c)
    3cd3:	38 d1                	cmp    %dl,%cl
    3cd5:	75 f1                	jne    3cc8 <strchr+0x18>
      return (char*)s;
  return 0;
}
    3cd7:	5d                   	pop    %ebp
    3cd8:	c3                   	ret    
    3cd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    3ce0:	31 c0                	xor    %eax,%eax
}
    3ce2:	5d                   	pop    %ebp
    3ce3:	c3                   	ret    
    3ce4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3ceb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3cef:	90                   	nop

00003cf0 <gets>:

char*
gets(char *buf, int max)
{
    3cf0:	55                   	push   %ebp
    3cf1:	89 e5                	mov    %esp,%ebp
    3cf3:	57                   	push   %edi
    3cf4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    3cf5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
    3cf8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
    3cf9:	31 db                	xor    %ebx,%ebx
{
    3cfb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
    3cfe:	eb 27                	jmp    3d27 <gets+0x37>
    cc = read(0, &c, 1);
    3d00:	83 ec 04             	sub    $0x4,%esp
    3d03:	6a 01                	push   $0x1
    3d05:	57                   	push   %edi
    3d06:	6a 00                	push   $0x0
    3d08:	e8 2e 01 00 00       	call   3e3b <read>
    if(cc < 1)
    3d0d:	83 c4 10             	add    $0x10,%esp
    3d10:	85 c0                	test   %eax,%eax
    3d12:	7e 1d                	jle    3d31 <gets+0x41>
      break;
    buf[i++] = c;
    3d14:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3d18:	8b 55 08             	mov    0x8(%ebp),%edx
    3d1b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    3d1f:	3c 0a                	cmp    $0xa,%al
    3d21:	74 1d                	je     3d40 <gets+0x50>
    3d23:	3c 0d                	cmp    $0xd,%al
    3d25:	74 19                	je     3d40 <gets+0x50>
  for(i=0; i+1 < max; ){
    3d27:	89 de                	mov    %ebx,%esi
    3d29:	83 c3 01             	add    $0x1,%ebx
    3d2c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    3d2f:	7c cf                	jl     3d00 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    3d31:	8b 45 08             	mov    0x8(%ebp),%eax
    3d34:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    3d38:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3d3b:	5b                   	pop    %ebx
    3d3c:	5e                   	pop    %esi
    3d3d:	5f                   	pop    %edi
    3d3e:	5d                   	pop    %ebp
    3d3f:	c3                   	ret    
  buf[i] = '\0';
    3d40:	8b 45 08             	mov    0x8(%ebp),%eax
    3d43:	89 de                	mov    %ebx,%esi
    3d45:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
    3d49:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3d4c:	5b                   	pop    %ebx
    3d4d:	5e                   	pop    %esi
    3d4e:	5f                   	pop    %edi
    3d4f:	5d                   	pop    %ebp
    3d50:	c3                   	ret    
    3d51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3d58:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3d5f:	90                   	nop

00003d60 <stat>:

int
stat(const char *n, struct stat *st)
{
    3d60:	55                   	push   %ebp
    3d61:	89 e5                	mov    %esp,%ebp
    3d63:	56                   	push   %esi
    3d64:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3d65:	83 ec 08             	sub    $0x8,%esp
    3d68:	6a 00                	push   $0x0
    3d6a:	ff 75 08             	push   0x8(%ebp)
    3d6d:	e8 f1 00 00 00       	call   3e63 <open>
  if(fd < 0)
    3d72:	83 c4 10             	add    $0x10,%esp
    3d75:	85 c0                	test   %eax,%eax
    3d77:	78 27                	js     3da0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    3d79:	83 ec 08             	sub    $0x8,%esp
    3d7c:	ff 75 0c             	push   0xc(%ebp)
    3d7f:	89 c3                	mov    %eax,%ebx
    3d81:	50                   	push   %eax
    3d82:	e8 f4 00 00 00       	call   3e7b <fstat>
  close(fd);
    3d87:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    3d8a:	89 c6                	mov    %eax,%esi
  close(fd);
    3d8c:	e8 ba 00 00 00       	call   3e4b <close>
  return r;
    3d91:	83 c4 10             	add    $0x10,%esp
}
    3d94:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3d97:	89 f0                	mov    %esi,%eax
    3d99:	5b                   	pop    %ebx
    3d9a:	5e                   	pop    %esi
    3d9b:	5d                   	pop    %ebp
    3d9c:	c3                   	ret    
    3d9d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    3da0:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3da5:	eb ed                	jmp    3d94 <stat+0x34>
    3da7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3dae:	66 90                	xchg   %ax,%ax

00003db0 <atoi>:

int
atoi(const char *s)
{
    3db0:	55                   	push   %ebp
    3db1:	89 e5                	mov    %esp,%ebp
    3db3:	53                   	push   %ebx
    3db4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3db7:	0f be 02             	movsbl (%edx),%eax
    3dba:	8d 48 d0             	lea    -0x30(%eax),%ecx
    3dbd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    3dc0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    3dc5:	77 1e                	ja     3de5 <atoi+0x35>
    3dc7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3dce:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3dd0:	83 c2 01             	add    $0x1,%edx
    3dd3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    3dd6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    3dda:	0f be 02             	movsbl (%edx),%eax
    3ddd:	8d 58 d0             	lea    -0x30(%eax),%ebx
    3de0:	80 fb 09             	cmp    $0x9,%bl
    3de3:	76 eb                	jbe    3dd0 <atoi+0x20>
  return n;
}
    3de5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3de8:	89 c8                	mov    %ecx,%eax
    3dea:	c9                   	leave  
    3deb:	c3                   	ret    
    3dec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003df0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3df0:	55                   	push   %ebp
    3df1:	89 e5                	mov    %esp,%ebp
    3df3:	57                   	push   %edi
    3df4:	8b 45 10             	mov    0x10(%ebp),%eax
    3df7:	8b 55 08             	mov    0x8(%ebp),%edx
    3dfa:	56                   	push   %esi
    3dfb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3dfe:	85 c0                	test   %eax,%eax
    3e00:	7e 13                	jle    3e15 <memmove+0x25>
    3e02:	01 d0                	add    %edx,%eax
  dst = vdst;
    3e04:	89 d7                	mov    %edx,%edi
    3e06:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3e0d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
    3e10:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    3e11:	39 f8                	cmp    %edi,%eax
    3e13:	75 fb                	jne    3e10 <memmove+0x20>
  return vdst;
}
    3e15:	5e                   	pop    %esi
    3e16:	89 d0                	mov    %edx,%eax
    3e18:	5f                   	pop    %edi
    3e19:	5d                   	pop    %ebp
    3e1a:	c3                   	ret    

00003e1b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    3e1b:	b8 01 00 00 00       	mov    $0x1,%eax
    3e20:	cd 40                	int    $0x40
    3e22:	c3                   	ret    

00003e23 <exit>:
SYSCALL(exit)
    3e23:	b8 02 00 00 00       	mov    $0x2,%eax
    3e28:	cd 40                	int    $0x40
    3e2a:	c3                   	ret    

00003e2b <wait>:
SYSCALL(wait)
    3e2b:	b8 03 00 00 00       	mov    $0x3,%eax
    3e30:	cd 40                	int    $0x40
    3e32:	c3                   	ret    

00003e33 <pipe>:
SYSCALL(pipe)
    3e33:	b8 04 00 00 00       	mov    $0x4,%eax
    3e38:	cd 40                	int    $0x40
    3e3a:	c3                   	ret    

00003e3b <read>:
SYSCALL(read)
    3e3b:	b8 05 00 00 00       	mov    $0x5,%eax
    3e40:	cd 40                	int    $0x40
    3e42:	c3                   	ret    

00003e43 <write>:
SYSCALL(write)
    3e43:	b8 10 00 00 00       	mov    $0x10,%eax
    3e48:	cd 40                	int    $0x40
    3e4a:	c3                   	ret    

00003e4b <close>:
SYSCALL(close)
    3e4b:	b8 15 00 00 00       	mov    $0x15,%eax
    3e50:	cd 40                	int    $0x40
    3e52:	c3                   	ret    

00003e53 <kill>:
SYSCALL(kill)
    3e53:	b8 06 00 00 00       	mov    $0x6,%eax
    3e58:	cd 40                	int    $0x40
    3e5a:	c3                   	ret    

00003e5b <exec>:
SYSCALL(exec)
    3e5b:	b8 07 00 00 00       	mov    $0x7,%eax
    3e60:	cd 40                	int    $0x40
    3e62:	c3                   	ret    

00003e63 <open>:
SYSCALL(open)
    3e63:	b8 0f 00 00 00       	mov    $0xf,%eax
    3e68:	cd 40                	int    $0x40
    3e6a:	c3                   	ret    

00003e6b <mknod>:
SYSCALL(mknod)
    3e6b:	b8 11 00 00 00       	mov    $0x11,%eax
    3e70:	cd 40                	int    $0x40
    3e72:	c3                   	ret    

00003e73 <unlink>:
SYSCALL(unlink)
    3e73:	b8 12 00 00 00       	mov    $0x12,%eax
    3e78:	cd 40                	int    $0x40
    3e7a:	c3                   	ret    

00003e7b <fstat>:
SYSCALL(fstat)
    3e7b:	b8 08 00 00 00       	mov    $0x8,%eax
    3e80:	cd 40                	int    $0x40
    3e82:	c3                   	ret    

00003e83 <link>:
SYSCALL(link)
    3e83:	b8 13 00 00 00       	mov    $0x13,%eax
    3e88:	cd 40                	int    $0x40
    3e8a:	c3                   	ret    

00003e8b <mkdir>:
SYSCALL(mkdir)
    3e8b:	b8 14 00 00 00       	mov    $0x14,%eax
    3e90:	cd 40                	int    $0x40
    3e92:	c3                   	ret    

00003e93 <chdir>:
SYSCALL(chdir)
    3e93:	b8 09 00 00 00       	mov    $0x9,%eax
    3e98:	cd 40                	int    $0x40
    3e9a:	c3                   	ret    

00003e9b <dup>:
SYSCALL(dup)
    3e9b:	b8 0a 00 00 00       	mov    $0xa,%eax
    3ea0:	cd 40                	int    $0x40
    3ea2:	c3                   	ret    

00003ea3 <getpid>:
SYSCALL(getpid)
    3ea3:	b8 0b 00 00 00       	mov    $0xb,%eax
    3ea8:	cd 40                	int    $0x40
    3eaa:	c3                   	ret    

00003eab <sbrk>:
SYSCALL(sbrk)
    3eab:	b8 0c 00 00 00       	mov    $0xc,%eax
    3eb0:	cd 40                	int    $0x40
    3eb2:	c3                   	ret    

00003eb3 <sleep>:
SYSCALL(sleep)
    3eb3:	b8 0d 00 00 00       	mov    $0xd,%eax
    3eb8:	cd 40                	int    $0x40
    3eba:	c3                   	ret    

00003ebb <uptime>:
SYSCALL(uptime)
    3ebb:	b8 0e 00 00 00       	mov    $0xe,%eax
    3ec0:	cd 40                	int    $0x40
    3ec2:	c3                   	ret    
    3ec3:	66 90                	xchg   %ax,%ax
    3ec5:	66 90                	xchg   %ax,%ax
    3ec7:	66 90                	xchg   %ax,%ax
    3ec9:	66 90                	xchg   %ax,%ax
    3ecb:	66 90                	xchg   %ax,%ax
    3ecd:	66 90                	xchg   %ax,%ax
    3ecf:	90                   	nop

00003ed0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3ed0:	55                   	push   %ebp
    3ed1:	89 e5                	mov    %esp,%ebp
    3ed3:	57                   	push   %edi
    3ed4:	56                   	push   %esi
    3ed5:	53                   	push   %ebx
    3ed6:	83 ec 3c             	sub    $0x3c,%esp
    3ed9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    3edc:	89 d1                	mov    %edx,%ecx
{
    3ede:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    3ee1:	85 d2                	test   %edx,%edx
    3ee3:	0f 89 7f 00 00 00    	jns    3f68 <printint+0x98>
    3ee9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    3eed:	74 79                	je     3f68 <printint+0x98>
    neg = 1;
    3eef:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    3ef6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    3ef8:	31 db                	xor    %ebx,%ebx
    3efa:	8d 75 d7             	lea    -0x29(%ebp),%esi
    3efd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    3f00:	89 c8                	mov    %ecx,%eax
    3f02:	31 d2                	xor    %edx,%edx
    3f04:	89 cf                	mov    %ecx,%edi
    3f06:	f7 75 c4             	divl   -0x3c(%ebp)
    3f09:	0f b6 92 f0 43 00 00 	movzbl 0x43f0(%edx),%edx
    3f10:	89 45 c0             	mov    %eax,-0x40(%ebp)
    3f13:	89 d8                	mov    %ebx,%eax
    3f15:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    3f18:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    3f1b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    3f1e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    3f21:	76 dd                	jbe    3f00 <printint+0x30>
  if(neg)
    3f23:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    3f26:	85 c9                	test   %ecx,%ecx
    3f28:	74 0c                	je     3f36 <printint+0x66>
    buf[i++] = '-';
    3f2a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    3f2f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    3f31:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    3f36:	8b 7d b8             	mov    -0x48(%ebp),%edi
    3f39:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    3f3d:	eb 07                	jmp    3f46 <printint+0x76>
    3f3f:	90                   	nop
    putc(fd, buf[i]);
    3f40:	0f b6 13             	movzbl (%ebx),%edx
    3f43:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    3f46:	83 ec 04             	sub    $0x4,%esp
    3f49:	88 55 d7             	mov    %dl,-0x29(%ebp)
    3f4c:	6a 01                	push   $0x1
    3f4e:	56                   	push   %esi
    3f4f:	57                   	push   %edi
    3f50:	e8 ee fe ff ff       	call   3e43 <write>
  while(--i >= 0)
    3f55:	83 c4 10             	add    $0x10,%esp
    3f58:	39 de                	cmp    %ebx,%esi
    3f5a:	75 e4                	jne    3f40 <printint+0x70>
}
    3f5c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3f5f:	5b                   	pop    %ebx
    3f60:	5e                   	pop    %esi
    3f61:	5f                   	pop    %edi
    3f62:	5d                   	pop    %ebp
    3f63:	c3                   	ret    
    3f64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    3f68:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    3f6f:	eb 87                	jmp    3ef8 <printint+0x28>
    3f71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3f78:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3f7f:	90                   	nop

00003f80 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    3f80:	55                   	push   %ebp
    3f81:	89 e5                	mov    %esp,%ebp
    3f83:	57                   	push   %edi
    3f84:	56                   	push   %esi
    3f85:	53                   	push   %ebx
    3f86:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3f89:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
    3f8c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
    3f8f:	0f b6 13             	movzbl (%ebx),%edx
    3f92:	84 d2                	test   %dl,%dl
    3f94:	74 6a                	je     4000 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
    3f96:	8d 45 10             	lea    0x10(%ebp),%eax
    3f99:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    3f9c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    3f9f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
    3fa1:	89 45 d0             	mov    %eax,-0x30(%ebp)
    3fa4:	eb 36                	jmp    3fdc <printf+0x5c>
    3fa6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3fad:	8d 76 00             	lea    0x0(%esi),%esi
    3fb0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    3fb3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
    3fb8:	83 f8 25             	cmp    $0x25,%eax
    3fbb:	74 15                	je     3fd2 <printf+0x52>
  write(fd, &c, 1);
    3fbd:	83 ec 04             	sub    $0x4,%esp
    3fc0:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3fc3:	6a 01                	push   $0x1
    3fc5:	57                   	push   %edi
    3fc6:	56                   	push   %esi
    3fc7:	e8 77 fe ff ff       	call   3e43 <write>
    3fcc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
    3fcf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    3fd2:	0f b6 13             	movzbl (%ebx),%edx
    3fd5:	83 c3 01             	add    $0x1,%ebx
    3fd8:	84 d2                	test   %dl,%dl
    3fda:	74 24                	je     4000 <printf+0x80>
    c = fmt[i] & 0xff;
    3fdc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
    3fdf:	85 c9                	test   %ecx,%ecx
    3fe1:	74 cd                	je     3fb0 <printf+0x30>
      }
    } else if(state == '%'){
    3fe3:	83 f9 25             	cmp    $0x25,%ecx
    3fe6:	75 ea                	jne    3fd2 <printf+0x52>
      if(c == 'd'){
    3fe8:	83 f8 25             	cmp    $0x25,%eax
    3feb:	0f 84 07 01 00 00    	je     40f8 <printf+0x178>
    3ff1:	83 e8 63             	sub    $0x63,%eax
    3ff4:	83 f8 15             	cmp    $0x15,%eax
    3ff7:	77 17                	ja     4010 <printf+0x90>
    3ff9:	ff 24 85 98 43 00 00 	jmp    *0x4398(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    4000:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4003:	5b                   	pop    %ebx
    4004:	5e                   	pop    %esi
    4005:	5f                   	pop    %edi
    4006:	5d                   	pop    %ebp
    4007:	c3                   	ret    
    4008:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    400f:	90                   	nop
  write(fd, &c, 1);
    4010:	83 ec 04             	sub    $0x4,%esp
    4013:	88 55 d4             	mov    %dl,-0x2c(%ebp)
    4016:	6a 01                	push   $0x1
    4018:	57                   	push   %edi
    4019:	56                   	push   %esi
    401a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    401e:	e8 20 fe ff ff       	call   3e43 <write>
        putc(fd, c);
    4023:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
    4027:	83 c4 0c             	add    $0xc,%esp
    402a:	88 55 e7             	mov    %dl,-0x19(%ebp)
    402d:	6a 01                	push   $0x1
    402f:	57                   	push   %edi
    4030:	56                   	push   %esi
    4031:	e8 0d fe ff ff       	call   3e43 <write>
        putc(fd, c);
    4036:	83 c4 10             	add    $0x10,%esp
      state = 0;
    4039:	31 c9                	xor    %ecx,%ecx
    403b:	eb 95                	jmp    3fd2 <printf+0x52>
    403d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    4040:	83 ec 0c             	sub    $0xc,%esp
    4043:	b9 10 00 00 00       	mov    $0x10,%ecx
    4048:	6a 00                	push   $0x0
    404a:	8b 45 d0             	mov    -0x30(%ebp),%eax
    404d:	8b 10                	mov    (%eax),%edx
    404f:	89 f0                	mov    %esi,%eax
    4051:	e8 7a fe ff ff       	call   3ed0 <printint>
        ap++;
    4056:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    405a:	83 c4 10             	add    $0x10,%esp
      state = 0;
    405d:	31 c9                	xor    %ecx,%ecx
    405f:	e9 6e ff ff ff       	jmp    3fd2 <printf+0x52>
    4064:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    4068:	8b 45 d0             	mov    -0x30(%ebp),%eax
    406b:	8b 10                	mov    (%eax),%edx
        ap++;
    406d:	83 c0 04             	add    $0x4,%eax
    4070:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    4073:	85 d2                	test   %edx,%edx
    4075:	0f 84 8d 00 00 00    	je     4108 <printf+0x188>
        while(*s != 0){
    407b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
    407e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
    4080:	84 c0                	test   %al,%al
    4082:	0f 84 4a ff ff ff    	je     3fd2 <printf+0x52>
    4088:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    408b:	89 d3                	mov    %edx,%ebx
    408d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    4090:	83 ec 04             	sub    $0x4,%esp
          s++;
    4093:	83 c3 01             	add    $0x1,%ebx
    4096:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    4099:	6a 01                	push   $0x1
    409b:	57                   	push   %edi
    409c:	56                   	push   %esi
    409d:	e8 a1 fd ff ff       	call   3e43 <write>
        while(*s != 0){
    40a2:	0f b6 03             	movzbl (%ebx),%eax
    40a5:	83 c4 10             	add    $0x10,%esp
    40a8:	84 c0                	test   %al,%al
    40aa:	75 e4                	jne    4090 <printf+0x110>
      state = 0;
    40ac:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
    40af:	31 c9                	xor    %ecx,%ecx
    40b1:	e9 1c ff ff ff       	jmp    3fd2 <printf+0x52>
    40b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    40bd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    40c0:	83 ec 0c             	sub    $0xc,%esp
    40c3:	b9 0a 00 00 00       	mov    $0xa,%ecx
    40c8:	6a 01                	push   $0x1
    40ca:	e9 7b ff ff ff       	jmp    404a <printf+0xca>
    40cf:	90                   	nop
        putc(fd, *ap);
    40d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
    40d3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    40d6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    40d8:	6a 01                	push   $0x1
    40da:	57                   	push   %edi
    40db:	56                   	push   %esi
        putc(fd, *ap);
    40dc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    40df:	e8 5f fd ff ff       	call   3e43 <write>
        ap++;
    40e4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    40e8:	83 c4 10             	add    $0x10,%esp
      state = 0;
    40eb:	31 c9                	xor    %ecx,%ecx
    40ed:	e9 e0 fe ff ff       	jmp    3fd2 <printf+0x52>
    40f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
    40f8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    40fb:	83 ec 04             	sub    $0x4,%esp
    40fe:	e9 2a ff ff ff       	jmp    402d <printf+0xad>
    4103:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4107:	90                   	nop
          s = "(null)";
    4108:	ba 90 43 00 00       	mov    $0x4390,%edx
        while(*s != 0){
    410d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    4110:	b8 28 00 00 00       	mov    $0x28,%eax
    4115:	89 d3                	mov    %edx,%ebx
    4117:	e9 74 ff ff ff       	jmp    4090 <printf+0x110>
    411c:	66 90                	xchg   %ax,%ax
    411e:	66 90                	xchg   %ax,%ax

00004120 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    4120:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4121:	a1 44 4a 00 00       	mov    0x4a44,%eax
{
    4126:	89 e5                	mov    %esp,%ebp
    4128:	57                   	push   %edi
    4129:	56                   	push   %esi
    412a:	53                   	push   %ebx
    412b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    412e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4131:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4138:	89 c2                	mov    %eax,%edx
    413a:	8b 00                	mov    (%eax),%eax
    413c:	39 ca                	cmp    %ecx,%edx
    413e:	73 30                	jae    4170 <free+0x50>
    4140:	39 c1                	cmp    %eax,%ecx
    4142:	72 04                	jb     4148 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4144:	39 c2                	cmp    %eax,%edx
    4146:	72 f0                	jb     4138 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
    4148:	8b 73 fc             	mov    -0x4(%ebx),%esi
    414b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    414e:	39 f8                	cmp    %edi,%eax
    4150:	74 30                	je     4182 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    4152:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    4155:	8b 42 04             	mov    0x4(%edx),%eax
    4158:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    415b:	39 f1                	cmp    %esi,%ecx
    415d:	74 3a                	je     4199 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    415f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    4161:	5b                   	pop    %ebx
  freep = p;
    4162:	89 15 44 4a 00 00    	mov    %edx,0x4a44
}
    4168:	5e                   	pop    %esi
    4169:	5f                   	pop    %edi
    416a:	5d                   	pop    %ebp
    416b:	c3                   	ret    
    416c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4170:	39 c2                	cmp    %eax,%edx
    4172:	72 c4                	jb     4138 <free+0x18>
    4174:	39 c1                	cmp    %eax,%ecx
    4176:	73 c0                	jae    4138 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
    4178:	8b 73 fc             	mov    -0x4(%ebx),%esi
    417b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    417e:	39 f8                	cmp    %edi,%eax
    4180:	75 d0                	jne    4152 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
    4182:	03 70 04             	add    0x4(%eax),%esi
    4185:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    4188:	8b 02                	mov    (%edx),%eax
    418a:	8b 00                	mov    (%eax),%eax
    418c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    418f:	8b 42 04             	mov    0x4(%edx),%eax
    4192:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    4195:	39 f1                	cmp    %esi,%ecx
    4197:	75 c6                	jne    415f <free+0x3f>
    p->s.size += bp->s.size;
    4199:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    419c:	89 15 44 4a 00 00    	mov    %edx,0x4a44
    p->s.size += bp->s.size;
    41a2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    41a5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    41a8:	89 0a                	mov    %ecx,(%edx)
}
    41aa:	5b                   	pop    %ebx
    41ab:	5e                   	pop    %esi
    41ac:	5f                   	pop    %edi
    41ad:	5d                   	pop    %ebp
    41ae:	c3                   	ret    
    41af:	90                   	nop

000041b0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    41b0:	55                   	push   %ebp
    41b1:	89 e5                	mov    %esp,%ebp
    41b3:	57                   	push   %edi
    41b4:	56                   	push   %esi
    41b5:	53                   	push   %ebx
    41b6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    41b9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    41bc:	8b 3d 44 4a 00 00    	mov    0x4a44,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    41c2:	8d 70 07             	lea    0x7(%eax),%esi
    41c5:	c1 ee 03             	shr    $0x3,%esi
    41c8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    41cb:	85 ff                	test   %edi,%edi
    41cd:	0f 84 9d 00 00 00    	je     4270 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    41d3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
    41d5:	8b 4a 04             	mov    0x4(%edx),%ecx
    41d8:	39 f1                	cmp    %esi,%ecx
    41da:	73 6a                	jae    4246 <malloc+0x96>
    41dc:	bb 00 10 00 00       	mov    $0x1000,%ebx
    41e1:	39 de                	cmp    %ebx,%esi
    41e3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    41e6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
    41ed:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    41f0:	eb 17                	jmp    4209 <malloc+0x59>
    41f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    41f8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    41fa:	8b 48 04             	mov    0x4(%eax),%ecx
    41fd:	39 f1                	cmp    %esi,%ecx
    41ff:	73 4f                	jae    4250 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    4201:	8b 3d 44 4a 00 00    	mov    0x4a44,%edi
    4207:	89 c2                	mov    %eax,%edx
    4209:	39 d7                	cmp    %edx,%edi
    420b:	75 eb                	jne    41f8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    420d:	83 ec 0c             	sub    $0xc,%esp
    4210:	ff 75 e4             	push   -0x1c(%ebp)
    4213:	e8 93 fc ff ff       	call   3eab <sbrk>
  if(p == (char*)-1)
    4218:	83 c4 10             	add    $0x10,%esp
    421b:	83 f8 ff             	cmp    $0xffffffff,%eax
    421e:	74 1c                	je     423c <malloc+0x8c>
  hp->s.size = nu;
    4220:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    4223:	83 ec 0c             	sub    $0xc,%esp
    4226:	83 c0 08             	add    $0x8,%eax
    4229:	50                   	push   %eax
    422a:	e8 f1 fe ff ff       	call   4120 <free>
  return freep;
    422f:	8b 15 44 4a 00 00    	mov    0x4a44,%edx
      if((p = morecore(nunits)) == 0)
    4235:	83 c4 10             	add    $0x10,%esp
    4238:	85 d2                	test   %edx,%edx
    423a:	75 bc                	jne    41f8 <malloc+0x48>
        return 0;
  }
}
    423c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    423f:	31 c0                	xor    %eax,%eax
}
    4241:	5b                   	pop    %ebx
    4242:	5e                   	pop    %esi
    4243:	5f                   	pop    %edi
    4244:	5d                   	pop    %ebp
    4245:	c3                   	ret    
    if(p->s.size >= nunits){
    4246:	89 d0                	mov    %edx,%eax
    4248:	89 fa                	mov    %edi,%edx
    424a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    4250:	39 ce                	cmp    %ecx,%esi
    4252:	74 4c                	je     42a0 <malloc+0xf0>
        p->s.size -= nunits;
    4254:	29 f1                	sub    %esi,%ecx
    4256:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    4259:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    425c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    425f:	89 15 44 4a 00 00    	mov    %edx,0x4a44
}
    4265:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    4268:	83 c0 08             	add    $0x8,%eax
}
    426b:	5b                   	pop    %ebx
    426c:	5e                   	pop    %esi
    426d:	5f                   	pop    %edi
    426e:	5d                   	pop    %ebp
    426f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
    4270:	c7 05 44 4a 00 00 48 	movl   $0x4a48,0x4a44
    4277:	4a 00 00 
    base.s.size = 0;
    427a:	bf 48 4a 00 00       	mov    $0x4a48,%edi
    base.s.ptr = freep = prevp = &base;
    427f:	c7 05 48 4a 00 00 48 	movl   $0x4a48,0x4a48
    4286:	4a 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4289:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
    428b:	c7 05 4c 4a 00 00 00 	movl   $0x0,0x4a4c
    4292:	00 00 00 
    if(p->s.size >= nunits){
    4295:	e9 42 ff ff ff       	jmp    41dc <malloc+0x2c>
    429a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    42a0:	8b 08                	mov    (%eax),%ecx
    42a2:	89 0a                	mov    %ecx,(%edx)
    42a4:	eb b9                	jmp    425f <malloc+0xaf>
