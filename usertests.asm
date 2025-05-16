
_usertests:     file format elf32-i386


Disassembly of section .text:

00003000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
    3000:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    3004:	83 e4 f0             	and    $0xfffffff0,%esp
    3007:	ff 71 fc             	push   -0x4(%ecx)
    300a:	55                   	push   %ebp
    300b:	89 e5                	mov    %esp,%ebp
    300d:	51                   	push   %ecx
    300e:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "usertests starting\n");
    3011:	68 46 7d 00 00       	push   $0x7d46
    3016:	6a 01                	push   $0x1
    3018:	e8 13 3a 00 00       	call   6a30 <printf>

  if(open("usertests.ran", 0) >= 0){
    301d:	59                   	pop    %ecx
    301e:	58                   	pop    %eax
    301f:	6a 00                	push   $0x0
    3021:	68 5a 7d 00 00       	push   $0x7d5a
    3026:	e8 e8 38 00 00       	call   6913 <open>
    302b:	83 c4 10             	add    $0x10,%esp
    302e:	85 c0                	test   %eax,%eax
    3030:	78 13                	js     3045 <main+0x45>
    printf(1, "already ran user tests -- rebuild fs.img\n");
    3032:	52                   	push   %edx
    3033:	52                   	push   %edx
    3034:	68 c4 84 00 00       	push   $0x84c4
    3039:	6a 01                	push   $0x1
    303b:	e8 f0 39 00 00       	call   6a30 <printf>
    exit();
    3040:	e8 8e 38 00 00       	call   68d3 <exit>
  }
  close(open("usertests.ran", O_CREATE));
    3045:	50                   	push   %eax
    3046:	50                   	push   %eax
    3047:	68 00 02 00 00       	push   $0x200
    304c:	68 5a 7d 00 00       	push   $0x7d5a
    3051:	e8 bd 38 00 00       	call   6913 <open>
    3056:	89 04 24             	mov    %eax,(%esp)
    3059:	e8 9d 38 00 00       	call   68fb <close>

  argptest();
    305e:	e8 8d 35 00 00       	call   65f0 <argptest>
  createdelete();
    3063:	e8 b8 11 00 00       	call   4220 <createdelete>
  linkunlink();
    3068:	e8 73 1a 00 00       	call   4ae0 <linkunlink>
  concreate();
    306d:	e8 6e 17 00 00       	call   47e0 <concreate>
  fourfiles();
    3072:	e8 a9 0f 00 00       	call   4020 <fourfiles>
  sharedfd();
    3077:	e8 e4 0d 00 00       	call   3e60 <sharedfd>

  bigargtest();
    307c:	e8 2f 32 00 00       	call   62b0 <bigargtest>
  bigwrite();
    3081:	e8 7a 23 00 00       	call   5400 <bigwrite>
  bigargtest();
    3086:	e8 25 32 00 00       	call   62b0 <bigargtest>
  bsstest();
    308b:	e8 b0 31 00 00       	call   6240 <bsstest>
  sbrktest();
    3090:	e8 ab 2c 00 00       	call   5d40 <sbrktest>
  validatetest();
    3095:	e8 f6 30 00 00       	call   6190 <validatetest>

  opentest();
    309a:	e8 61 03 00 00       	call   3400 <opentest>
  writetest();
    309f:	e8 ec 03 00 00       	call   3490 <writetest>
  writetest1();
    30a4:	e8 c7 05 00 00       	call   3670 <writetest1>
  createtest();
    30a9:	e8 92 07 00 00       	call   3840 <createtest>

  openiputtest();
    30ae:	e8 4d 02 00 00       	call   3300 <openiputtest>
  exitiputtest();
    30b3:	e8 48 01 00 00       	call   3200 <exitiputtest>
  iputtest();
    30b8:	e8 63 00 00 00       	call   3120 <iputtest>

  mem();
    30bd:	e8 ce 0c 00 00       	call   3d90 <mem>
  pipe1();
    30c2:	e8 59 09 00 00       	call   3a20 <pipe1>
  preempt();
    30c7:	e8 e4 0a 00 00       	call   3bb0 <preempt>
  exitwait();
    30cc:	e8 3f 0c 00 00       	call   3d10 <exitwait>

  rmdot();
    30d1:	e8 1a 27 00 00       	call   57f0 <rmdot>
  fourteen();
    30d6:	e8 d5 25 00 00       	call   56b0 <fourteen>
  bigfile();
    30db:	e8 00 24 00 00       	call   54e0 <bigfile>
  subdir();
    30e0:	e8 3b 1c 00 00       	call   4d20 <subdir>
  linktest();
    30e5:	e8 e6 14 00 00       	call   45d0 <linktest>
  unlinkread();
    30ea:	e8 51 13 00 00       	call   4440 <unlinkread>
  dirfile();
    30ef:	e8 7c 28 00 00       	call   5970 <dirfile>
  iref();
    30f4:	e8 77 2a 00 00       	call   5b70 <iref>
  forktest();
    30f9:	e8 92 2b 00 00       	call   5c90 <forktest>
  bigdir(); // slow
    30fe:	e8 ed 1a 00 00       	call   4bf0 <bigdir>

  uio();
    3103:	e8 78 34 00 00       	call   6580 <uio>

  exectest();
    3108:	e8 c3 08 00 00       	call   39d0 <exectest>

  exit();
    310d:	e8 c1 37 00 00       	call   68d3 <exit>
    3112:	66 90                	xchg   %ax,%ax
    3114:	66 90                	xchg   %ax,%ax
    3116:	66 90                	xchg   %ax,%ax
    3118:	66 90                	xchg   %ax,%ax
    311a:	66 90                	xchg   %ax,%ax
    311c:	66 90                	xchg   %ax,%ax
    311e:	66 90                	xchg   %ax,%ax

00003120 <iputtest>:
{
    3120:	55                   	push   %ebp
    3121:	89 e5                	mov    %esp,%ebp
    3123:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
    3126:	68 ec 6d 00 00       	push   $0x6dec
    312b:	ff 35 48 8e 00 00    	push   0x8e48
    3131:	e8 fa 38 00 00       	call   6a30 <printf>
  if(mkdir("iputdir") < 0){
    3136:	c7 04 24 7f 6d 00 00 	movl   $0x6d7f,(%esp)
    313d:	e8 f9 37 00 00       	call   693b <mkdir>
    3142:	83 c4 10             	add    $0x10,%esp
    3145:	85 c0                	test   %eax,%eax
    3147:	78 58                	js     31a1 <iputtest+0x81>
  if(chdir("iputdir") < 0){
    3149:	83 ec 0c             	sub    $0xc,%esp
    314c:	68 7f 6d 00 00       	push   $0x6d7f
    3151:	e8 ed 37 00 00       	call   6943 <chdir>
    3156:	83 c4 10             	add    $0x10,%esp
    3159:	85 c0                	test   %eax,%eax
    315b:	0f 88 85 00 00 00    	js     31e6 <iputtest+0xc6>
  if(unlink("../iputdir") < 0){
    3161:	83 ec 0c             	sub    $0xc,%esp
    3164:	68 7c 6d 00 00       	push   $0x6d7c
    3169:	e8 b5 37 00 00       	call   6923 <unlink>
    316e:	83 c4 10             	add    $0x10,%esp
    3171:	85 c0                	test   %eax,%eax
    3173:	78 5a                	js     31cf <iputtest+0xaf>
  if(chdir("/") < 0){
    3175:	83 ec 0c             	sub    $0xc,%esp
    3178:	68 a1 6d 00 00       	push   $0x6da1
    317d:	e8 c1 37 00 00       	call   6943 <chdir>
    3182:	83 c4 10             	add    $0x10,%esp
    3185:	85 c0                	test   %eax,%eax
    3187:	78 2f                	js     31b8 <iputtest+0x98>
  printf(stdout, "iput test ok\n");
    3189:	83 ec 08             	sub    $0x8,%esp
    318c:	68 24 6e 00 00       	push   $0x6e24
    3191:	ff 35 48 8e 00 00    	push   0x8e48
    3197:	e8 94 38 00 00       	call   6a30 <printf>
}
    319c:	83 c4 10             	add    $0x10,%esp
    319f:	c9                   	leave  
    31a0:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
    31a1:	50                   	push   %eax
    31a2:	50                   	push   %eax
    31a3:	68 58 6d 00 00       	push   $0x6d58
    31a8:	ff 35 48 8e 00 00    	push   0x8e48
    31ae:	e8 7d 38 00 00       	call   6a30 <printf>
    exit();
    31b3:	e8 1b 37 00 00       	call   68d3 <exit>
    printf(stdout, "chdir / failed\n");
    31b8:	50                   	push   %eax
    31b9:	50                   	push   %eax
    31ba:	68 a3 6d 00 00       	push   $0x6da3
    31bf:	ff 35 48 8e 00 00    	push   0x8e48
    31c5:	e8 66 38 00 00       	call   6a30 <printf>
    exit();
    31ca:	e8 04 37 00 00       	call   68d3 <exit>
    printf(stdout, "unlink ../iputdir failed\n");
    31cf:	52                   	push   %edx
    31d0:	52                   	push   %edx
    31d1:	68 87 6d 00 00       	push   $0x6d87
    31d6:	ff 35 48 8e 00 00    	push   0x8e48
    31dc:	e8 4f 38 00 00       	call   6a30 <printf>
    exit();
    31e1:	e8 ed 36 00 00       	call   68d3 <exit>
    printf(stdout, "chdir iputdir failed\n");
    31e6:	51                   	push   %ecx
    31e7:	51                   	push   %ecx
    31e8:	68 66 6d 00 00       	push   $0x6d66
    31ed:	ff 35 48 8e 00 00    	push   0x8e48
    31f3:	e8 38 38 00 00       	call   6a30 <printf>
    exit();
    31f8:	e8 d6 36 00 00       	call   68d3 <exit>
    31fd:	8d 76 00             	lea    0x0(%esi),%esi

00003200 <exitiputtest>:
{
    3200:	55                   	push   %ebp
    3201:	89 e5                	mov    %esp,%ebp
    3203:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exitiput test\n");
    3206:	68 b3 6d 00 00       	push   $0x6db3
    320b:	ff 35 48 8e 00 00    	push   0x8e48
    3211:	e8 1a 38 00 00       	call   6a30 <printf>
  pid = fork();
    3216:	e8 b0 36 00 00       	call   68cb <fork>
  if(pid < 0){
    321b:	83 c4 10             	add    $0x10,%esp
    321e:	85 c0                	test   %eax,%eax
    3220:	0f 88 8a 00 00 00    	js     32b0 <exitiputtest+0xb0>
  if(pid == 0){
    3226:	75 50                	jne    3278 <exitiputtest+0x78>
    if(mkdir("iputdir") < 0){
    3228:	83 ec 0c             	sub    $0xc,%esp
    322b:	68 7f 6d 00 00       	push   $0x6d7f
    3230:	e8 06 37 00 00       	call   693b <mkdir>
    3235:	83 c4 10             	add    $0x10,%esp
    3238:	85 c0                	test   %eax,%eax
    323a:	0f 88 87 00 00 00    	js     32c7 <exitiputtest+0xc7>
    if(chdir("iputdir") < 0){
    3240:	83 ec 0c             	sub    $0xc,%esp
    3243:	68 7f 6d 00 00       	push   $0x6d7f
    3248:	e8 f6 36 00 00       	call   6943 <chdir>
    324d:	83 c4 10             	add    $0x10,%esp
    3250:	85 c0                	test   %eax,%eax
    3252:	0f 88 86 00 00 00    	js     32de <exitiputtest+0xde>
    if(unlink("../iputdir") < 0){
    3258:	83 ec 0c             	sub    $0xc,%esp
    325b:	68 7c 6d 00 00       	push   $0x6d7c
    3260:	e8 be 36 00 00       	call   6923 <unlink>
    3265:	83 c4 10             	add    $0x10,%esp
    3268:	85 c0                	test   %eax,%eax
    326a:	78 2c                	js     3298 <exitiputtest+0x98>
    exit();
    326c:	e8 62 36 00 00       	call   68d3 <exit>
    3271:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  wait();
    3278:	e8 5e 36 00 00       	call   68db <wait>
  printf(stdout, "exitiput test ok\n");
    327d:	83 ec 08             	sub    $0x8,%esp
    3280:	68 d6 6d 00 00       	push   $0x6dd6
    3285:	ff 35 48 8e 00 00    	push   0x8e48
    328b:	e8 a0 37 00 00       	call   6a30 <printf>
}
    3290:	83 c4 10             	add    $0x10,%esp
    3293:	c9                   	leave  
    3294:	c3                   	ret    
    3295:	8d 76 00             	lea    0x0(%esi),%esi
      printf(stdout, "unlink ../iputdir failed\n");
    3298:	83 ec 08             	sub    $0x8,%esp
    329b:	68 87 6d 00 00       	push   $0x6d87
    32a0:	ff 35 48 8e 00 00    	push   0x8e48
    32a6:	e8 85 37 00 00       	call   6a30 <printf>
      exit();
    32ab:	e8 23 36 00 00       	call   68d3 <exit>
    printf(stdout, "fork failed\n");
    32b0:	51                   	push   %ecx
    32b1:	51                   	push   %ecx
    32b2:	68 99 7c 00 00       	push   $0x7c99
    32b7:	ff 35 48 8e 00 00    	push   0x8e48
    32bd:	e8 6e 37 00 00       	call   6a30 <printf>
    exit();
    32c2:	e8 0c 36 00 00       	call   68d3 <exit>
      printf(stdout, "mkdir failed\n");
    32c7:	52                   	push   %edx
    32c8:	52                   	push   %edx
    32c9:	68 58 6d 00 00       	push   $0x6d58
    32ce:	ff 35 48 8e 00 00    	push   0x8e48
    32d4:	e8 57 37 00 00       	call   6a30 <printf>
      exit();
    32d9:	e8 f5 35 00 00       	call   68d3 <exit>
      printf(stdout, "child chdir failed\n");
    32de:	50                   	push   %eax
    32df:	50                   	push   %eax
    32e0:	68 c2 6d 00 00       	push   $0x6dc2
    32e5:	ff 35 48 8e 00 00    	push   0x8e48
    32eb:	e8 40 37 00 00       	call   6a30 <printf>
      exit();
    32f0:	e8 de 35 00 00       	call   68d3 <exit>
    32f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    32fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003300 <openiputtest>:
{
    3300:	55                   	push   %ebp
    3301:	89 e5                	mov    %esp,%ebp
    3303:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "openiput test\n");
    3306:	68 e8 6d 00 00       	push   $0x6de8
    330b:	ff 35 48 8e 00 00    	push   0x8e48
    3311:	e8 1a 37 00 00       	call   6a30 <printf>
  if(mkdir("oidir") < 0){
    3316:	c7 04 24 f7 6d 00 00 	movl   $0x6df7,(%esp)
    331d:	e8 19 36 00 00       	call   693b <mkdir>
    3322:	83 c4 10             	add    $0x10,%esp
    3325:	85 c0                	test   %eax,%eax
    3327:	0f 88 9f 00 00 00    	js     33cc <openiputtest+0xcc>
  pid = fork();
    332d:	e8 99 35 00 00       	call   68cb <fork>
  if(pid < 0){
    3332:	85 c0                	test   %eax,%eax
    3334:	78 7f                	js     33b5 <openiputtest+0xb5>
  if(pid == 0){
    3336:	75 38                	jne    3370 <openiputtest+0x70>
    int fd = open("oidir", O_RDWR);
    3338:	83 ec 08             	sub    $0x8,%esp
    333b:	6a 02                	push   $0x2
    333d:	68 f7 6d 00 00       	push   $0x6df7
    3342:	e8 cc 35 00 00       	call   6913 <open>
    if(fd >= 0){
    3347:	83 c4 10             	add    $0x10,%esp
    334a:	85 c0                	test   %eax,%eax
    334c:	78 62                	js     33b0 <openiputtest+0xb0>
      printf(stdout, "open directory for write succeeded\n");
    334e:	83 ec 08             	sub    $0x8,%esp
    3351:	68 7c 7d 00 00       	push   $0x7d7c
    3356:	ff 35 48 8e 00 00    	push   0x8e48
    335c:	e8 cf 36 00 00       	call   6a30 <printf>
      exit();
    3361:	e8 6d 35 00 00       	call   68d3 <exit>
    3366:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    336d:	8d 76 00             	lea    0x0(%esi),%esi
  sleep(1);
    3370:	83 ec 0c             	sub    $0xc,%esp
    3373:	6a 01                	push   $0x1
    3375:	e8 e9 35 00 00       	call   6963 <sleep>
  if(unlink("oidir") != 0){
    337a:	c7 04 24 f7 6d 00 00 	movl   $0x6df7,(%esp)
    3381:	e8 9d 35 00 00       	call   6923 <unlink>
    3386:	83 c4 10             	add    $0x10,%esp
    3389:	85 c0                	test   %eax,%eax
    338b:	75 56                	jne    33e3 <openiputtest+0xe3>
  wait();
    338d:	e8 49 35 00 00       	call   68db <wait>
  printf(stdout, "openiput test ok\n");
    3392:	83 ec 08             	sub    $0x8,%esp
    3395:	68 20 6e 00 00       	push   $0x6e20
    339a:	ff 35 48 8e 00 00    	push   0x8e48
    33a0:	e8 8b 36 00 00       	call   6a30 <printf>
}
    33a5:	83 c4 10             	add    $0x10,%esp
    33a8:	c9                   	leave  
    33a9:	c3                   	ret    
    33aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    exit();
    33b0:	e8 1e 35 00 00       	call   68d3 <exit>
    printf(stdout, "fork failed\n");
    33b5:	52                   	push   %edx
    33b6:	52                   	push   %edx
    33b7:	68 99 7c 00 00       	push   $0x7c99
    33bc:	ff 35 48 8e 00 00    	push   0x8e48
    33c2:	e8 69 36 00 00       	call   6a30 <printf>
    exit();
    33c7:	e8 07 35 00 00       	call   68d3 <exit>
    printf(stdout, "mkdir oidir failed\n");
    33cc:	51                   	push   %ecx
    33cd:	51                   	push   %ecx
    33ce:	68 fd 6d 00 00       	push   $0x6dfd
    33d3:	ff 35 48 8e 00 00    	push   0x8e48
    33d9:	e8 52 36 00 00       	call   6a30 <printf>
    exit();
    33de:	e8 f0 34 00 00       	call   68d3 <exit>
    printf(stdout, "unlink failed\n");
    33e3:	50                   	push   %eax
    33e4:	50                   	push   %eax
    33e5:	68 11 6e 00 00       	push   $0x6e11
    33ea:	ff 35 48 8e 00 00    	push   0x8e48
    33f0:	e8 3b 36 00 00       	call   6a30 <printf>
    exit();
    33f5:	e8 d9 34 00 00       	call   68d3 <exit>
    33fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003400 <opentest>:
{
    3400:	55                   	push   %ebp
    3401:	89 e5                	mov    %esp,%ebp
    3403:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "open test\n");
    3406:	68 32 6e 00 00       	push   $0x6e32
    340b:	ff 35 48 8e 00 00    	push   0x8e48
    3411:	e8 1a 36 00 00       	call   6a30 <printf>
  fd = open("echo", 0);
    3416:	58                   	pop    %eax
    3417:	5a                   	pop    %edx
    3418:	6a 00                	push   $0x0
    341a:	68 3d 6e 00 00       	push   $0x6e3d
    341f:	e8 ef 34 00 00       	call   6913 <open>
  if(fd < 0){
    3424:	83 c4 10             	add    $0x10,%esp
    3427:	85 c0                	test   %eax,%eax
    3429:	78 36                	js     3461 <opentest+0x61>
  close(fd);
    342b:	83 ec 0c             	sub    $0xc,%esp
    342e:	50                   	push   %eax
    342f:	e8 c7 34 00 00       	call   68fb <close>
  fd = open("doesnotexist", 0);
    3434:	5a                   	pop    %edx
    3435:	59                   	pop    %ecx
    3436:	6a 00                	push   $0x0
    3438:	68 55 6e 00 00       	push   $0x6e55
    343d:	e8 d1 34 00 00       	call   6913 <open>
  if(fd >= 0){
    3442:	83 c4 10             	add    $0x10,%esp
    3445:	85 c0                	test   %eax,%eax
    3447:	79 2f                	jns    3478 <opentest+0x78>
  printf(stdout, "open test ok\n");
    3449:	83 ec 08             	sub    $0x8,%esp
    344c:	68 80 6e 00 00       	push   $0x6e80
    3451:	ff 35 48 8e 00 00    	push   0x8e48
    3457:	e8 d4 35 00 00       	call   6a30 <printf>
}
    345c:	83 c4 10             	add    $0x10,%esp
    345f:	c9                   	leave  
    3460:	c3                   	ret    
    printf(stdout, "open echo failed!\n");
    3461:	50                   	push   %eax
    3462:	50                   	push   %eax
    3463:	68 42 6e 00 00       	push   $0x6e42
    3468:	ff 35 48 8e 00 00    	push   0x8e48
    346e:	e8 bd 35 00 00       	call   6a30 <printf>
    exit();
    3473:	e8 5b 34 00 00       	call   68d3 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
    3478:	50                   	push   %eax
    3479:	50                   	push   %eax
    347a:	68 62 6e 00 00       	push   $0x6e62
    347f:	ff 35 48 8e 00 00    	push   0x8e48
    3485:	e8 a6 35 00 00       	call   6a30 <printf>
    exit();
    348a:	e8 44 34 00 00       	call   68d3 <exit>
    348f:	90                   	nop

00003490 <writetest>:
{
    3490:	55                   	push   %ebp
    3491:	89 e5                	mov    %esp,%ebp
    3493:	56                   	push   %esi
    3494:	53                   	push   %ebx
  printf(stdout, "small file test\n");
    3495:	83 ec 08             	sub    $0x8,%esp
    3498:	68 8e 6e 00 00       	push   $0x6e8e
    349d:	ff 35 48 8e 00 00    	push   0x8e48
    34a3:	e8 88 35 00 00       	call   6a30 <printf>
  fd = open("small", O_CREATE|O_RDWR);
    34a8:	58                   	pop    %eax
    34a9:	5a                   	pop    %edx
    34aa:	68 02 02 00 00       	push   $0x202
    34af:	68 9f 6e 00 00       	push   $0x6e9f
    34b4:	e8 5a 34 00 00       	call   6913 <open>
  if(fd >= 0){
    34b9:	83 c4 10             	add    $0x10,%esp
    34bc:	85 c0                	test   %eax,%eax
    34be:	0f 88 88 01 00 00    	js     364c <writetest+0x1bc>
    printf(stdout, "creat small succeeded; ok\n");
    34c4:	83 ec 08             	sub    $0x8,%esp
    34c7:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 100; i++){
    34c9:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
    34cb:	68 a5 6e 00 00       	push   $0x6ea5
    34d0:	ff 35 48 8e 00 00    	push   0x8e48
    34d6:	e8 55 35 00 00       	call   6a30 <printf>
    34db:	83 c4 10             	add    $0x10,%esp
    34de:	66 90                	xchg   %ax,%ax
    if(write(fd, "aaaaaaaaaa", 10) != 10){
    34e0:	83 ec 04             	sub    $0x4,%esp
    34e3:	6a 0a                	push   $0xa
    34e5:	68 dc 6e 00 00       	push   $0x6edc
    34ea:	56                   	push   %esi
    34eb:	e8 03 34 00 00       	call   68f3 <write>
    34f0:	83 c4 10             	add    $0x10,%esp
    34f3:	83 f8 0a             	cmp    $0xa,%eax
    34f6:	0f 85 d9 00 00 00    	jne    35d5 <writetest+0x145>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
    34fc:	83 ec 04             	sub    $0x4,%esp
    34ff:	6a 0a                	push   $0xa
    3501:	68 e7 6e 00 00       	push   $0x6ee7
    3506:	56                   	push   %esi
    3507:	e8 e7 33 00 00       	call   68f3 <write>
    350c:	83 c4 10             	add    $0x10,%esp
    350f:	83 f8 0a             	cmp    $0xa,%eax
    3512:	0f 85 d6 00 00 00    	jne    35ee <writetest+0x15e>
  for(i = 0; i < 100; i++){
    3518:	83 c3 01             	add    $0x1,%ebx
    351b:	83 fb 64             	cmp    $0x64,%ebx
    351e:	75 c0                	jne    34e0 <writetest+0x50>
  printf(stdout, "writes ok\n");
    3520:	83 ec 08             	sub    $0x8,%esp
    3523:	68 f2 6e 00 00       	push   $0x6ef2
    3528:	ff 35 48 8e 00 00    	push   0x8e48
    352e:	e8 fd 34 00 00       	call   6a30 <printf>
  close(fd);
    3533:	89 34 24             	mov    %esi,(%esp)
    3536:	e8 c0 33 00 00       	call   68fb <close>
  fd = open("small", O_RDONLY);
    353b:	5b                   	pop    %ebx
    353c:	5e                   	pop    %esi
    353d:	6a 00                	push   $0x0
    353f:	68 9f 6e 00 00       	push   $0x6e9f
    3544:	e8 ca 33 00 00       	call   6913 <open>
  if(fd >= 0){
    3549:	83 c4 10             	add    $0x10,%esp
  fd = open("small", O_RDONLY);
    354c:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
    354e:	85 c0                	test   %eax,%eax
    3550:	0f 88 b1 00 00 00    	js     3607 <writetest+0x177>
    printf(stdout, "open small succeeded ok\n");
    3556:	83 ec 08             	sub    $0x8,%esp
    3559:	68 fd 6e 00 00       	push   $0x6efd
    355e:	ff 35 48 8e 00 00    	push   0x8e48
    3564:	e8 c7 34 00 00       	call   6a30 <printf>
  i = read(fd, buf, 2000);
    3569:	83 c4 0c             	add    $0xc,%esp
    356c:	68 d0 07 00 00       	push   $0x7d0
    3571:	68 80 b5 00 00       	push   $0xb580
    3576:	53                   	push   %ebx
    3577:	e8 6f 33 00 00       	call   68eb <read>
  if(i == 2000){
    357c:	83 c4 10             	add    $0x10,%esp
    357f:	3d d0 07 00 00       	cmp    $0x7d0,%eax
    3584:	0f 85 94 00 00 00    	jne    361e <writetest+0x18e>
    printf(stdout, "read succeeded ok\n");
    358a:	83 ec 08             	sub    $0x8,%esp
    358d:	68 31 6f 00 00       	push   $0x6f31
    3592:	ff 35 48 8e 00 00    	push   0x8e48
    3598:	e8 93 34 00 00       	call   6a30 <printf>
  close(fd);
    359d:	89 1c 24             	mov    %ebx,(%esp)
    35a0:	e8 56 33 00 00       	call   68fb <close>
  if(unlink("small") < 0){
    35a5:	c7 04 24 9f 6e 00 00 	movl   $0x6e9f,(%esp)
    35ac:	e8 72 33 00 00       	call   6923 <unlink>
    35b1:	83 c4 10             	add    $0x10,%esp
    35b4:	85 c0                	test   %eax,%eax
    35b6:	78 7d                	js     3635 <writetest+0x1a5>
  printf(stdout, "small file test ok\n");
    35b8:	83 ec 08             	sub    $0x8,%esp
    35bb:	68 59 6f 00 00       	push   $0x6f59
    35c0:	ff 35 48 8e 00 00    	push   0x8e48
    35c6:	e8 65 34 00 00       	call   6a30 <printf>
}
    35cb:	83 c4 10             	add    $0x10,%esp
    35ce:	8d 65 f8             	lea    -0x8(%ebp),%esp
    35d1:	5b                   	pop    %ebx
    35d2:	5e                   	pop    %esi
    35d3:	5d                   	pop    %ebp
    35d4:	c3                   	ret    
      printf(stdout, "error: write aa %d new file failed\n", i);
    35d5:	83 ec 04             	sub    $0x4,%esp
    35d8:	53                   	push   %ebx
    35d9:	68 a0 7d 00 00       	push   $0x7da0
    35de:	ff 35 48 8e 00 00    	push   0x8e48
    35e4:	e8 47 34 00 00       	call   6a30 <printf>
      exit();
    35e9:	e8 e5 32 00 00       	call   68d3 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
    35ee:	83 ec 04             	sub    $0x4,%esp
    35f1:	53                   	push   %ebx
    35f2:	68 c4 7d 00 00       	push   $0x7dc4
    35f7:	ff 35 48 8e 00 00    	push   0x8e48
    35fd:	e8 2e 34 00 00       	call   6a30 <printf>
      exit();
    3602:	e8 cc 32 00 00       	call   68d3 <exit>
    printf(stdout, "error: open small failed!\n");
    3607:	51                   	push   %ecx
    3608:	51                   	push   %ecx
    3609:	68 16 6f 00 00       	push   $0x6f16
    360e:	ff 35 48 8e 00 00    	push   0x8e48
    3614:	e8 17 34 00 00       	call   6a30 <printf>
    exit();
    3619:	e8 b5 32 00 00       	call   68d3 <exit>
    printf(stdout, "read failed\n");
    361e:	52                   	push   %edx
    361f:	52                   	push   %edx
    3620:	68 5d 72 00 00       	push   $0x725d
    3625:	ff 35 48 8e 00 00    	push   0x8e48
    362b:	e8 00 34 00 00       	call   6a30 <printf>
    exit();
    3630:	e8 9e 32 00 00       	call   68d3 <exit>
    printf(stdout, "unlink small failed\n");
    3635:	50                   	push   %eax
    3636:	50                   	push   %eax
    3637:	68 44 6f 00 00       	push   $0x6f44
    363c:	ff 35 48 8e 00 00    	push   0x8e48
    3642:	e8 e9 33 00 00       	call   6a30 <printf>
    exit();
    3647:	e8 87 32 00 00       	call   68d3 <exit>
    printf(stdout, "error: creat small failed!\n");
    364c:	50                   	push   %eax
    364d:	50                   	push   %eax
    364e:	68 c0 6e 00 00       	push   $0x6ec0
    3653:	ff 35 48 8e 00 00    	push   0x8e48
    3659:	e8 d2 33 00 00       	call   6a30 <printf>
    exit();
    365e:	e8 70 32 00 00       	call   68d3 <exit>
    3663:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    366a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003670 <writetest1>:
{
    3670:	55                   	push   %ebp
    3671:	89 e5                	mov    %esp,%ebp
    3673:	56                   	push   %esi
    3674:	53                   	push   %ebx
  printf(stdout, "big files test\n");
    3675:	83 ec 08             	sub    $0x8,%esp
    3678:	68 6d 6f 00 00       	push   $0x6f6d
    367d:	ff 35 48 8e 00 00    	push   0x8e48
    3683:	e8 a8 33 00 00       	call   6a30 <printf>
  fd = open("big", O_CREATE|O_RDWR);
    3688:	58                   	pop    %eax
    3689:	5a                   	pop    %edx
    368a:	68 02 02 00 00       	push   $0x202
    368f:	68 e7 6f 00 00       	push   $0x6fe7
    3694:	e8 7a 32 00 00       	call   6913 <open>
  if(fd < 0){
    3699:	83 c4 10             	add    $0x10,%esp
    369c:	85 c0                	test   %eax,%eax
    369e:	0f 88 61 01 00 00    	js     3805 <writetest1+0x195>
    36a4:	89 c6                	mov    %eax,%esi
  for(i = 0; i < MAXFILE; i++){
    36a6:	31 db                	xor    %ebx,%ebx
    36a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    36af:	90                   	nop
    if(write(fd, buf, 512) != 512){
    36b0:	83 ec 04             	sub    $0x4,%esp
    ((int*)buf)[0] = i;
    36b3:	89 1d 80 b5 00 00    	mov    %ebx,0xb580
    if(write(fd, buf, 512) != 512){
    36b9:	68 00 02 00 00       	push   $0x200
    36be:	68 80 b5 00 00       	push   $0xb580
    36c3:	56                   	push   %esi
    36c4:	e8 2a 32 00 00       	call   68f3 <write>
    36c9:	83 c4 10             	add    $0x10,%esp
    36cc:	3d 00 02 00 00       	cmp    $0x200,%eax
    36d1:	0f 85 b3 00 00 00    	jne    378a <writetest1+0x11a>
  for(i = 0; i < MAXFILE; i++){
    36d7:	83 c3 01             	add    $0x1,%ebx
    36da:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
    36e0:	75 ce                	jne    36b0 <writetest1+0x40>
  close(fd);
    36e2:	83 ec 0c             	sub    $0xc,%esp
    36e5:	56                   	push   %esi
    36e6:	e8 10 32 00 00       	call   68fb <close>
  fd = open("big", O_RDONLY);
    36eb:	5b                   	pop    %ebx
    36ec:	5e                   	pop    %esi
    36ed:	6a 00                	push   $0x0
    36ef:	68 e7 6f 00 00       	push   $0x6fe7
    36f4:	e8 1a 32 00 00       	call   6913 <open>
  if(fd < 0){
    36f9:	83 c4 10             	add    $0x10,%esp
  fd = open("big", O_RDONLY);
    36fc:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    36fe:	85 c0                	test   %eax,%eax
    3700:	0f 88 e8 00 00 00    	js     37ee <writetest1+0x17e>
  n = 0;
    3706:	31 f6                	xor    %esi,%esi
    3708:	eb 1d                	jmp    3727 <writetest1+0xb7>
    370a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(i != 512){
    3710:	3d 00 02 00 00       	cmp    $0x200,%eax
    3715:	0f 85 9f 00 00 00    	jne    37ba <writetest1+0x14a>
    if(((int*)buf)[0] != n){
    371b:	a1 80 b5 00 00       	mov    0xb580,%eax
    3720:	39 f0                	cmp    %esi,%eax
    3722:	75 7f                	jne    37a3 <writetest1+0x133>
    n++;
    3724:	83 c6 01             	add    $0x1,%esi
    i = read(fd, buf, 512);
    3727:	83 ec 04             	sub    $0x4,%esp
    372a:	68 00 02 00 00       	push   $0x200
    372f:	68 80 b5 00 00       	push   $0xb580
    3734:	53                   	push   %ebx
    3735:	e8 b1 31 00 00       	call   68eb <read>
    if(i == 0){
    373a:	83 c4 10             	add    $0x10,%esp
    373d:	85 c0                	test   %eax,%eax
    373f:	75 cf                	jne    3710 <writetest1+0xa0>
      if(n == MAXFILE - 1){
    3741:	81 fe 8b 00 00 00    	cmp    $0x8b,%esi
    3747:	0f 84 86 00 00 00    	je     37d3 <writetest1+0x163>
  close(fd);
    374d:	83 ec 0c             	sub    $0xc,%esp
    3750:	53                   	push   %ebx
    3751:	e8 a5 31 00 00       	call   68fb <close>
  if(unlink("big") < 0){
    3756:	c7 04 24 e7 6f 00 00 	movl   $0x6fe7,(%esp)
    375d:	e8 c1 31 00 00       	call   6923 <unlink>
    3762:	83 c4 10             	add    $0x10,%esp
    3765:	85 c0                	test   %eax,%eax
    3767:	0f 88 af 00 00 00    	js     381c <writetest1+0x1ac>
  printf(stdout, "big files ok\n");
    376d:	83 ec 08             	sub    $0x8,%esp
    3770:	68 0e 70 00 00       	push   $0x700e
    3775:	ff 35 48 8e 00 00    	push   0x8e48
    377b:	e8 b0 32 00 00       	call   6a30 <printf>
}
    3780:	83 c4 10             	add    $0x10,%esp
    3783:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3786:	5b                   	pop    %ebx
    3787:	5e                   	pop    %esi
    3788:	5d                   	pop    %ebp
    3789:	c3                   	ret    
      printf(stdout, "error: write big file failed\n", i);
    378a:	83 ec 04             	sub    $0x4,%esp
    378d:	53                   	push   %ebx
    378e:	68 97 6f 00 00       	push   $0x6f97
    3793:	ff 35 48 8e 00 00    	push   0x8e48
    3799:	e8 92 32 00 00       	call   6a30 <printf>
      exit();
    379e:	e8 30 31 00 00       	call   68d3 <exit>
      printf(stdout, "read content of block %d is %d\n",
    37a3:	50                   	push   %eax
    37a4:	56                   	push   %esi
    37a5:	68 e8 7d 00 00       	push   $0x7de8
    37aa:	ff 35 48 8e 00 00    	push   0x8e48
    37b0:	e8 7b 32 00 00       	call   6a30 <printf>
      exit();
    37b5:	e8 19 31 00 00       	call   68d3 <exit>
      printf(stdout, "read failed %d\n", i);
    37ba:	83 ec 04             	sub    $0x4,%esp
    37bd:	50                   	push   %eax
    37be:	68 eb 6f 00 00       	push   $0x6feb
    37c3:	ff 35 48 8e 00 00    	push   0x8e48
    37c9:	e8 62 32 00 00       	call   6a30 <printf>
      exit();
    37ce:	e8 00 31 00 00       	call   68d3 <exit>
        printf(stdout, "read only %d blocks from big", n);
    37d3:	52                   	push   %edx
    37d4:	68 8b 00 00 00       	push   $0x8b
    37d9:	68 ce 6f 00 00       	push   $0x6fce
    37de:	ff 35 48 8e 00 00    	push   0x8e48
    37e4:	e8 47 32 00 00       	call   6a30 <printf>
        exit();
    37e9:	e8 e5 30 00 00       	call   68d3 <exit>
    printf(stdout, "error: open big failed!\n");
    37ee:	51                   	push   %ecx
    37ef:	51                   	push   %ecx
    37f0:	68 b5 6f 00 00       	push   $0x6fb5
    37f5:	ff 35 48 8e 00 00    	push   0x8e48
    37fb:	e8 30 32 00 00       	call   6a30 <printf>
    exit();
    3800:	e8 ce 30 00 00       	call   68d3 <exit>
    printf(stdout, "error: creat big failed!\n");
    3805:	50                   	push   %eax
    3806:	50                   	push   %eax
    3807:	68 7d 6f 00 00       	push   $0x6f7d
    380c:	ff 35 48 8e 00 00    	push   0x8e48
    3812:	e8 19 32 00 00       	call   6a30 <printf>
    exit();
    3817:	e8 b7 30 00 00       	call   68d3 <exit>
    printf(stdout, "unlink big failed\n");
    381c:	50                   	push   %eax
    381d:	50                   	push   %eax
    381e:	68 fb 6f 00 00       	push   $0x6ffb
    3823:	ff 35 48 8e 00 00    	push   0x8e48
    3829:	e8 02 32 00 00       	call   6a30 <printf>
    exit();
    382e:	e8 a0 30 00 00       	call   68d3 <exit>
    3833:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    383a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003840 <createtest>:
{
    3840:	55                   	push   %ebp
    3841:	89 e5                	mov    %esp,%ebp
    3843:	53                   	push   %ebx
  name[2] = '\0';
    3844:	bb 30 00 00 00       	mov    $0x30,%ebx
{
    3849:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "many creates, followed by unlink test\n");
    384c:	68 08 7e 00 00       	push   $0x7e08
    3851:	ff 35 48 8e 00 00    	push   0x8e48
    3857:	e8 d4 31 00 00       	call   6a30 <printf>
  name[0] = 'a';
    385c:	c6 05 70 b5 00 00 61 	movb   $0x61,0xb570
  name[2] = '\0';
    3863:	83 c4 10             	add    $0x10,%esp
    3866:	c6 05 72 b5 00 00 00 	movb   $0x0,0xb572
  for(i = 0; i < 52; i++){
    386d:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open(name, O_CREATE|O_RDWR);
    3870:	83 ec 08             	sub    $0x8,%esp
    name[1] = '0' + i;
    3873:	88 1d 71 b5 00 00    	mov    %bl,0xb571
  for(i = 0; i < 52; i++){
    3879:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
    387c:	68 02 02 00 00       	push   $0x202
    3881:	68 70 b5 00 00       	push   $0xb570
    3886:	e8 88 30 00 00       	call   6913 <open>
    close(fd);
    388b:	89 04 24             	mov    %eax,(%esp)
    388e:	e8 68 30 00 00       	call   68fb <close>
  for(i = 0; i < 52; i++){
    3893:	83 c4 10             	add    $0x10,%esp
    3896:	80 fb 64             	cmp    $0x64,%bl
    3899:	75 d5                	jne    3870 <createtest+0x30>
  name[0] = 'a';
    389b:	c6 05 70 b5 00 00 61 	movb   $0x61,0xb570
  name[2] = '\0';
    38a2:	bb 30 00 00 00       	mov    $0x30,%ebx
    38a7:	c6 05 72 b5 00 00 00 	movb   $0x0,0xb572
  for(i = 0; i < 52; i++){
    38ae:	66 90                	xchg   %ax,%ax
    unlink(name);
    38b0:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + i;
    38b3:	88 1d 71 b5 00 00    	mov    %bl,0xb571
  for(i = 0; i < 52; i++){
    38b9:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
    38bc:	68 70 b5 00 00       	push   $0xb570
    38c1:	e8 5d 30 00 00       	call   6923 <unlink>
  for(i = 0; i < 52; i++){
    38c6:	83 c4 10             	add    $0x10,%esp
    38c9:	80 fb 64             	cmp    $0x64,%bl
    38cc:	75 e2                	jne    38b0 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
    38ce:	83 ec 08             	sub    $0x8,%esp
    38d1:	68 30 7e 00 00       	push   $0x7e30
    38d6:	ff 35 48 8e 00 00    	push   0x8e48
    38dc:	e8 4f 31 00 00       	call   6a30 <printf>
}
    38e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    38e4:	83 c4 10             	add    $0x10,%esp
    38e7:	c9                   	leave  
    38e8:	c3                   	ret    
    38e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000038f0 <dirtest>:
{
    38f0:	55                   	push   %ebp
    38f1:	89 e5                	mov    %esp,%ebp
    38f3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
    38f6:	68 1c 70 00 00       	push   $0x701c
    38fb:	ff 35 48 8e 00 00    	push   0x8e48
    3901:	e8 2a 31 00 00       	call   6a30 <printf>
  if(mkdir("dir0") < 0){
    3906:	c7 04 24 28 70 00 00 	movl   $0x7028,(%esp)
    390d:	e8 29 30 00 00       	call   693b <mkdir>
    3912:	83 c4 10             	add    $0x10,%esp
    3915:	85 c0                	test   %eax,%eax
    3917:	78 58                	js     3971 <dirtest+0x81>
  if(chdir("dir0") < 0){
    3919:	83 ec 0c             	sub    $0xc,%esp
    391c:	68 28 70 00 00       	push   $0x7028
    3921:	e8 1d 30 00 00       	call   6943 <chdir>
    3926:	83 c4 10             	add    $0x10,%esp
    3929:	85 c0                	test   %eax,%eax
    392b:	0f 88 85 00 00 00    	js     39b6 <dirtest+0xc6>
  if(chdir("..") < 0){
    3931:	83 ec 0c             	sub    $0xc,%esp
    3934:	68 cd 75 00 00       	push   $0x75cd
    3939:	e8 05 30 00 00       	call   6943 <chdir>
    393e:	83 c4 10             	add    $0x10,%esp
    3941:	85 c0                	test   %eax,%eax
    3943:	78 5a                	js     399f <dirtest+0xaf>
  if(unlink("dir0") < 0){
    3945:	83 ec 0c             	sub    $0xc,%esp
    3948:	68 28 70 00 00       	push   $0x7028
    394d:	e8 d1 2f 00 00       	call   6923 <unlink>
    3952:	83 c4 10             	add    $0x10,%esp
    3955:	85 c0                	test   %eax,%eax
    3957:	78 2f                	js     3988 <dirtest+0x98>
  printf(stdout, "mkdir test ok\n");
    3959:	83 ec 08             	sub    $0x8,%esp
    395c:	68 65 70 00 00       	push   $0x7065
    3961:	ff 35 48 8e 00 00    	push   0x8e48
    3967:	e8 c4 30 00 00       	call   6a30 <printf>
}
    396c:	83 c4 10             	add    $0x10,%esp
    396f:	c9                   	leave  
    3970:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
    3971:	50                   	push   %eax
    3972:	50                   	push   %eax
    3973:	68 58 6d 00 00       	push   $0x6d58
    3978:	ff 35 48 8e 00 00    	push   0x8e48
    397e:	e8 ad 30 00 00       	call   6a30 <printf>
    exit();
    3983:	e8 4b 2f 00 00       	call   68d3 <exit>
    printf(stdout, "unlink dir0 failed\n");
    3988:	50                   	push   %eax
    3989:	50                   	push   %eax
    398a:	68 51 70 00 00       	push   $0x7051
    398f:	ff 35 48 8e 00 00    	push   0x8e48
    3995:	e8 96 30 00 00       	call   6a30 <printf>
    exit();
    399a:	e8 34 2f 00 00       	call   68d3 <exit>
    printf(stdout, "chdir .. failed\n");
    399f:	52                   	push   %edx
    39a0:	52                   	push   %edx
    39a1:	68 40 70 00 00       	push   $0x7040
    39a6:	ff 35 48 8e 00 00    	push   0x8e48
    39ac:	e8 7f 30 00 00       	call   6a30 <printf>
    exit();
    39b1:	e8 1d 2f 00 00       	call   68d3 <exit>
    printf(stdout, "chdir dir0 failed\n");
    39b6:	51                   	push   %ecx
    39b7:	51                   	push   %ecx
    39b8:	68 2d 70 00 00       	push   $0x702d
    39bd:	ff 35 48 8e 00 00    	push   0x8e48
    39c3:	e8 68 30 00 00       	call   6a30 <printf>
    exit();
    39c8:	e8 06 2f 00 00       	call   68d3 <exit>
    39cd:	8d 76 00             	lea    0x0(%esi),%esi

000039d0 <exectest>:
{
    39d0:	55                   	push   %ebp
    39d1:	89 e5                	mov    %esp,%ebp
    39d3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
    39d6:	68 74 70 00 00       	push   $0x7074
    39db:	ff 35 48 8e 00 00    	push   0x8e48
    39e1:	e8 4a 30 00 00       	call   6a30 <printf>
  if(exec("echo", echoargv) < 0){
    39e6:	5a                   	pop    %edx
    39e7:	59                   	pop    %ecx
    39e8:	68 4c 8e 00 00       	push   $0x8e4c
    39ed:	68 3d 6e 00 00       	push   $0x6e3d
    39f2:	e8 14 2f 00 00       	call   690b <exec>
    39f7:	83 c4 10             	add    $0x10,%esp
    39fa:	85 c0                	test   %eax,%eax
    39fc:	78 02                	js     3a00 <exectest+0x30>
}
    39fe:	c9                   	leave  
    39ff:	c3                   	ret    
    printf(stdout, "exec echo failed\n");
    3a00:	50                   	push   %eax
    3a01:	50                   	push   %eax
    3a02:	68 7f 70 00 00       	push   $0x707f
    3a07:	ff 35 48 8e 00 00    	push   0x8e48
    3a0d:	e8 1e 30 00 00       	call   6a30 <printf>
    exit();
    3a12:	e8 bc 2e 00 00       	call   68d3 <exit>
    3a17:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3a1e:	66 90                	xchg   %ax,%ax

00003a20 <pipe1>:
{
    3a20:	55                   	push   %ebp
    3a21:	89 e5                	mov    %esp,%ebp
    3a23:	57                   	push   %edi
    3a24:	56                   	push   %esi
  if(pipe(fds) != 0){
    3a25:	8d 45 e0             	lea    -0x20(%ebp),%eax
{
    3a28:	53                   	push   %ebx
    3a29:	83 ec 38             	sub    $0x38,%esp
  if(pipe(fds) != 0){
    3a2c:	50                   	push   %eax
    3a2d:	e8 b1 2e 00 00       	call   68e3 <pipe>
    3a32:	83 c4 10             	add    $0x10,%esp
    3a35:	85 c0                	test   %eax,%eax
    3a37:	0f 85 34 01 00 00    	jne    3b71 <pipe1+0x151>
  pid = fork();
    3a3d:	e8 89 2e 00 00       	call   68cb <fork>
  if(pid == 0){
    3a42:	85 c0                	test   %eax,%eax
    3a44:	0f 84 85 00 00 00    	je     3acf <pipe1+0xaf>
  } else if(pid > 0){
    3a4a:	0f 8e 34 01 00 00    	jle    3b84 <pipe1+0x164>
    close(fds[1]);
    3a50:	83 ec 0c             	sub    $0xc,%esp
    3a53:	ff 75 e4             	push   -0x1c(%ebp)
  seq = 0;
    3a56:	31 db                	xor    %ebx,%ebx
    cc = 1;
    3a58:	be 01 00 00 00       	mov    $0x1,%esi
    close(fds[1]);
    3a5d:	e8 99 2e 00 00       	call   68fb <close>
    total = 0;
    3a62:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
    3a69:	83 c4 10             	add    $0x10,%esp
    3a6c:	83 ec 04             	sub    $0x4,%esp
    3a6f:	56                   	push   %esi
    3a70:	68 80 b5 00 00       	push   $0xb580
    3a75:	ff 75 e0             	push   -0x20(%ebp)
    3a78:	e8 6e 2e 00 00       	call   68eb <read>
    3a7d:	83 c4 10             	add    $0x10,%esp
    3a80:	89 c7                	mov    %eax,%edi
    3a82:	85 c0                	test   %eax,%eax
    3a84:	0f 8e a3 00 00 00    	jle    3b2d <pipe1+0x10d>
    3a8a:	8d 0c 1f             	lea    (%edi,%ebx,1),%ecx
      for(i = 0; i < n; i++){
    3a8d:	31 c0                	xor    %eax,%eax
    3a8f:	90                   	nop
        if((buf[i] & 0xff) != (seq++ & 0xff)){
    3a90:	89 da                	mov    %ebx,%edx
    3a92:	83 c3 01             	add    $0x1,%ebx
    3a95:	38 90 80 b5 00 00    	cmp    %dl,0xb580(%eax)
    3a9b:	75 18                	jne    3ab5 <pipe1+0x95>
      for(i = 0; i < n; i++){
    3a9d:	83 c0 01             	add    $0x1,%eax
    3aa0:	39 d9                	cmp    %ebx,%ecx
    3aa2:	75 ec                	jne    3a90 <pipe1+0x70>
      cc = cc * 2;
    3aa4:	01 f6                	add    %esi,%esi
    3aa6:	b8 00 20 00 00       	mov    $0x2000,%eax
      total += n;
    3aab:	01 7d d4             	add    %edi,-0x2c(%ebp)
    3aae:	39 c6                	cmp    %eax,%esi
    3ab0:	0f 4f f0             	cmovg  %eax,%esi
    3ab3:	eb b7                	jmp    3a6c <pipe1+0x4c>
          printf(1, "pipe1 oops 2\n");
    3ab5:	83 ec 08             	sub    $0x8,%esp
    3ab8:	68 ae 70 00 00       	push   $0x70ae
    3abd:	6a 01                	push   $0x1
    3abf:	e8 6c 2f 00 00       	call   6a30 <printf>
    3ac4:	83 c4 10             	add    $0x10,%esp
}
    3ac7:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3aca:	5b                   	pop    %ebx
    3acb:	5e                   	pop    %esi
    3acc:	5f                   	pop    %edi
    3acd:	5d                   	pop    %ebp
    3ace:	c3                   	ret    
    close(fds[0]);
    3acf:	83 ec 0c             	sub    $0xc,%esp
    3ad2:	ff 75 e0             	push   -0x20(%ebp)
  seq = 0;
    3ad5:	31 db                	xor    %ebx,%ebx
    close(fds[0]);
    3ad7:	e8 1f 2e 00 00       	call   68fb <close>
    3adc:	83 c4 10             	add    $0x10,%esp
      for(i = 0; i < 1033; i++)
    3adf:	31 c0                	xor    %eax,%eax
    3ae1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        buf[i] = seq++;
    3ae8:	8d 14 18             	lea    (%eax,%ebx,1),%edx
      for(i = 0; i < 1033; i++)
    3aeb:	83 c0 01             	add    $0x1,%eax
        buf[i] = seq++;
    3aee:	88 90 7f b5 00 00    	mov    %dl,0xb57f(%eax)
      for(i = 0; i < 1033; i++)
    3af4:	3d 09 04 00 00       	cmp    $0x409,%eax
    3af9:	75 ed                	jne    3ae8 <pipe1+0xc8>
      if(write(fds[1], buf, 1033) != 1033){
    3afb:	83 ec 04             	sub    $0x4,%esp
        buf[i] = seq++;
    3afe:	81 c3 09 04 00 00    	add    $0x409,%ebx
      if(write(fds[1], buf, 1033) != 1033){
    3b04:	68 09 04 00 00       	push   $0x409
    3b09:	68 80 b5 00 00       	push   $0xb580
    3b0e:	ff 75 e4             	push   -0x1c(%ebp)
    3b11:	e8 dd 2d 00 00       	call   68f3 <write>
    3b16:	83 c4 10             	add    $0x10,%esp
    3b19:	3d 09 04 00 00       	cmp    $0x409,%eax
    3b1e:	75 77                	jne    3b97 <pipe1+0x177>
    for(n = 0; n < 5; n++){
    3b20:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
    3b26:	75 b7                	jne    3adf <pipe1+0xbf>
    exit();
    3b28:	e8 a6 2d 00 00       	call   68d3 <exit>
    if(total != 5 * 1033){
    3b2d:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
    3b34:	75 26                	jne    3b5c <pipe1+0x13c>
    close(fds[0]);
    3b36:	83 ec 0c             	sub    $0xc,%esp
    3b39:	ff 75 e0             	push   -0x20(%ebp)
    3b3c:	e8 ba 2d 00 00       	call   68fb <close>
    wait();
    3b41:	e8 95 2d 00 00       	call   68db <wait>
  printf(1, "pipe1 ok\n");
    3b46:	5a                   	pop    %edx
    3b47:	59                   	pop    %ecx
    3b48:	68 d3 70 00 00       	push   $0x70d3
    3b4d:	6a 01                	push   $0x1
    3b4f:	e8 dc 2e 00 00       	call   6a30 <printf>
    3b54:	83 c4 10             	add    $0x10,%esp
    3b57:	e9 6b ff ff ff       	jmp    3ac7 <pipe1+0xa7>
      printf(1, "pipe1 oops 3 total %d\n", total);
    3b5c:	53                   	push   %ebx
    3b5d:	ff 75 d4             	push   -0x2c(%ebp)
    3b60:	68 bc 70 00 00       	push   $0x70bc
    3b65:	6a 01                	push   $0x1
    3b67:	e8 c4 2e 00 00       	call   6a30 <printf>
      exit();
    3b6c:	e8 62 2d 00 00       	call   68d3 <exit>
    printf(1, "pipe() failed\n");
    3b71:	57                   	push   %edi
    3b72:	57                   	push   %edi
    3b73:	68 91 70 00 00       	push   $0x7091
    3b78:	6a 01                	push   $0x1
    3b7a:	e8 b1 2e 00 00       	call   6a30 <printf>
    exit();
    3b7f:	e8 4f 2d 00 00       	call   68d3 <exit>
    printf(1, "fork() failed\n");
    3b84:	50                   	push   %eax
    3b85:	50                   	push   %eax
    3b86:	68 dd 70 00 00       	push   $0x70dd
    3b8b:	6a 01                	push   $0x1
    3b8d:	e8 9e 2e 00 00       	call   6a30 <printf>
    exit();
    3b92:	e8 3c 2d 00 00       	call   68d3 <exit>
        printf(1, "pipe1 oops 1\n");
    3b97:	56                   	push   %esi
    3b98:	56                   	push   %esi
    3b99:	68 a0 70 00 00       	push   $0x70a0
    3b9e:	6a 01                	push   $0x1
    3ba0:	e8 8b 2e 00 00       	call   6a30 <printf>
        exit();
    3ba5:	e8 29 2d 00 00       	call   68d3 <exit>
    3baa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003bb0 <preempt>:
{
    3bb0:	55                   	push   %ebp
    3bb1:	89 e5                	mov    %esp,%ebp
    3bb3:	57                   	push   %edi
    3bb4:	56                   	push   %esi
    3bb5:	53                   	push   %ebx
    3bb6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "preempt: ");
    3bb9:	68 ec 70 00 00       	push   $0x70ec
    3bbe:	6a 01                	push   $0x1
    3bc0:	e8 6b 2e 00 00       	call   6a30 <printf>
  pid1 = fork();
    3bc5:	e8 01 2d 00 00       	call   68cb <fork>
  if(pid1 == 0)
    3bca:	83 c4 10             	add    $0x10,%esp
    3bcd:	85 c0                	test   %eax,%eax
    3bcf:	75 07                	jne    3bd8 <preempt+0x28>
    for(;;)
    3bd1:	eb fe                	jmp    3bd1 <preempt+0x21>
    3bd3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3bd7:	90                   	nop
    3bd8:	89 c3                	mov    %eax,%ebx
  pid2 = fork();
    3bda:	e8 ec 2c 00 00       	call   68cb <fork>
    3bdf:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
    3be1:	85 c0                	test   %eax,%eax
    3be3:	75 0b                	jne    3bf0 <preempt+0x40>
    for(;;)
    3be5:	eb fe                	jmp    3be5 <preempt+0x35>
    3be7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3bee:	66 90                	xchg   %ax,%ax
  pipe(pfds);
    3bf0:	83 ec 0c             	sub    $0xc,%esp
    3bf3:	8d 45 e0             	lea    -0x20(%ebp),%eax
    3bf6:	50                   	push   %eax
    3bf7:	e8 e7 2c 00 00       	call   68e3 <pipe>
  pid3 = fork();
    3bfc:	e8 ca 2c 00 00       	call   68cb <fork>
  if(pid3 == 0){
    3c01:	83 c4 10             	add    $0x10,%esp
  pid3 = fork();
    3c04:	89 c7                	mov    %eax,%edi
  if(pid3 == 0){
    3c06:	85 c0                	test   %eax,%eax
    3c08:	75 3e                	jne    3c48 <preempt+0x98>
    close(pfds[0]);
    3c0a:	83 ec 0c             	sub    $0xc,%esp
    3c0d:	ff 75 e0             	push   -0x20(%ebp)
    3c10:	e8 e6 2c 00 00       	call   68fb <close>
    if(write(pfds[1], "x", 1) != 1)
    3c15:	83 c4 0c             	add    $0xc,%esp
    3c18:	6a 01                	push   $0x1
    3c1a:	68 b1 76 00 00       	push   $0x76b1
    3c1f:	ff 75 e4             	push   -0x1c(%ebp)
    3c22:	e8 cc 2c 00 00       	call   68f3 <write>
    3c27:	83 c4 10             	add    $0x10,%esp
    3c2a:	83 f8 01             	cmp    $0x1,%eax
    3c2d:	0f 85 b8 00 00 00    	jne    3ceb <preempt+0x13b>
    close(pfds[1]);
    3c33:	83 ec 0c             	sub    $0xc,%esp
    3c36:	ff 75 e4             	push   -0x1c(%ebp)
    3c39:	e8 bd 2c 00 00       	call   68fb <close>
    3c3e:	83 c4 10             	add    $0x10,%esp
    for(;;)
    3c41:	eb fe                	jmp    3c41 <preempt+0x91>
    3c43:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3c47:	90                   	nop
  close(pfds[1]);
    3c48:	83 ec 0c             	sub    $0xc,%esp
    3c4b:	ff 75 e4             	push   -0x1c(%ebp)
    3c4e:	e8 a8 2c 00 00       	call   68fb <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
    3c53:	83 c4 0c             	add    $0xc,%esp
    3c56:	68 00 20 00 00       	push   $0x2000
    3c5b:	68 80 b5 00 00       	push   $0xb580
    3c60:	ff 75 e0             	push   -0x20(%ebp)
    3c63:	e8 83 2c 00 00       	call   68eb <read>
    3c68:	83 c4 10             	add    $0x10,%esp
    3c6b:	83 f8 01             	cmp    $0x1,%eax
    3c6e:	75 67                	jne    3cd7 <preempt+0x127>
  close(pfds[0]);
    3c70:	83 ec 0c             	sub    $0xc,%esp
    3c73:	ff 75 e0             	push   -0x20(%ebp)
    3c76:	e8 80 2c 00 00       	call   68fb <close>
  printf(1, "kill... ");
    3c7b:	58                   	pop    %eax
    3c7c:	5a                   	pop    %edx
    3c7d:	68 1d 71 00 00       	push   $0x711d
    3c82:	6a 01                	push   $0x1
    3c84:	e8 a7 2d 00 00       	call   6a30 <printf>
  kill(pid1);
    3c89:	89 1c 24             	mov    %ebx,(%esp)
    3c8c:	e8 72 2c 00 00       	call   6903 <kill>
  kill(pid2);
    3c91:	89 34 24             	mov    %esi,(%esp)
    3c94:	e8 6a 2c 00 00       	call   6903 <kill>
  kill(pid3);
    3c99:	89 3c 24             	mov    %edi,(%esp)
    3c9c:	e8 62 2c 00 00       	call   6903 <kill>
  printf(1, "wait... ");
    3ca1:	59                   	pop    %ecx
    3ca2:	5b                   	pop    %ebx
    3ca3:	68 26 71 00 00       	push   $0x7126
    3ca8:	6a 01                	push   $0x1
    3caa:	e8 81 2d 00 00       	call   6a30 <printf>
  wait();
    3caf:	e8 27 2c 00 00       	call   68db <wait>
  wait();
    3cb4:	e8 22 2c 00 00       	call   68db <wait>
  wait();
    3cb9:	e8 1d 2c 00 00       	call   68db <wait>
  printf(1, "preempt ok\n");
    3cbe:	5e                   	pop    %esi
    3cbf:	5f                   	pop    %edi
    3cc0:	68 2f 71 00 00       	push   $0x712f
    3cc5:	6a 01                	push   $0x1
    3cc7:	e8 64 2d 00 00       	call   6a30 <printf>
    3ccc:	83 c4 10             	add    $0x10,%esp
}
    3ccf:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3cd2:	5b                   	pop    %ebx
    3cd3:	5e                   	pop    %esi
    3cd4:	5f                   	pop    %edi
    3cd5:	5d                   	pop    %ebp
    3cd6:	c3                   	ret    
    printf(1, "preempt read error");
    3cd7:	83 ec 08             	sub    $0x8,%esp
    3cda:	68 0a 71 00 00       	push   $0x710a
    3cdf:	6a 01                	push   $0x1
    3ce1:	e8 4a 2d 00 00       	call   6a30 <printf>
    3ce6:	83 c4 10             	add    $0x10,%esp
    3ce9:	eb e4                	jmp    3ccf <preempt+0x11f>
      printf(1, "preempt write error");
    3ceb:	83 ec 08             	sub    $0x8,%esp
    3cee:	68 f6 70 00 00       	push   $0x70f6
    3cf3:	6a 01                	push   $0x1
    3cf5:	e8 36 2d 00 00       	call   6a30 <printf>
    3cfa:	83 c4 10             	add    $0x10,%esp
    3cfd:	e9 31 ff ff ff       	jmp    3c33 <preempt+0x83>
    3d02:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3d09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003d10 <exitwait>:
{
    3d10:	55                   	push   %ebp
    3d11:	89 e5                	mov    %esp,%ebp
    3d13:	56                   	push   %esi
    3d14:	be 64 00 00 00       	mov    $0x64,%esi
    3d19:	53                   	push   %ebx
    3d1a:	eb 14                	jmp    3d30 <exitwait+0x20>
    3d1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid){
    3d20:	74 68                	je     3d8a <exitwait+0x7a>
      if(wait() != pid){
    3d22:	e8 b4 2b 00 00       	call   68db <wait>
    3d27:	39 d8                	cmp    %ebx,%eax
    3d29:	75 2d                	jne    3d58 <exitwait+0x48>
  for(i = 0; i < 100; i++){
    3d2b:	83 ee 01             	sub    $0x1,%esi
    3d2e:	74 41                	je     3d71 <exitwait+0x61>
    pid = fork();
    3d30:	e8 96 2b 00 00       	call   68cb <fork>
    3d35:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
    3d37:	85 c0                	test   %eax,%eax
    3d39:	79 e5                	jns    3d20 <exitwait+0x10>
      printf(1, "fork failed\n");
    3d3b:	83 ec 08             	sub    $0x8,%esp
    3d3e:	68 99 7c 00 00       	push   $0x7c99
    3d43:	6a 01                	push   $0x1
    3d45:	e8 e6 2c 00 00       	call   6a30 <printf>
      return;
    3d4a:	83 c4 10             	add    $0x10,%esp
}
    3d4d:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3d50:	5b                   	pop    %ebx
    3d51:	5e                   	pop    %esi
    3d52:	5d                   	pop    %ebp
    3d53:	c3                   	ret    
    3d54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "wait wrong pid\n");
    3d58:	83 ec 08             	sub    $0x8,%esp
    3d5b:	68 3b 71 00 00       	push   $0x713b
    3d60:	6a 01                	push   $0x1
    3d62:	e8 c9 2c 00 00       	call   6a30 <printf>
        return;
    3d67:	83 c4 10             	add    $0x10,%esp
}
    3d6a:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3d6d:	5b                   	pop    %ebx
    3d6e:	5e                   	pop    %esi
    3d6f:	5d                   	pop    %ebp
    3d70:	c3                   	ret    
  printf(1, "exitwait ok\n");
    3d71:	83 ec 08             	sub    $0x8,%esp
    3d74:	68 4b 71 00 00       	push   $0x714b
    3d79:	6a 01                	push   $0x1
    3d7b:	e8 b0 2c 00 00       	call   6a30 <printf>
    3d80:	83 c4 10             	add    $0x10,%esp
}
    3d83:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3d86:	5b                   	pop    %ebx
    3d87:	5e                   	pop    %esi
    3d88:	5d                   	pop    %ebp
    3d89:	c3                   	ret    
      exit();
    3d8a:	e8 44 2b 00 00       	call   68d3 <exit>
    3d8f:	90                   	nop

00003d90 <mem>:
{
    3d90:	55                   	push   %ebp
    3d91:	89 e5                	mov    %esp,%ebp
    3d93:	56                   	push   %esi
    3d94:	31 f6                	xor    %esi,%esi
    3d96:	53                   	push   %ebx
  printf(1, "mem test\n");
    3d97:	83 ec 08             	sub    $0x8,%esp
    3d9a:	68 58 71 00 00       	push   $0x7158
    3d9f:	6a 01                	push   $0x1
    3da1:	e8 8a 2c 00 00       	call   6a30 <printf>
  ppid = getpid();
    3da6:	e8 a8 2b 00 00       	call   6953 <getpid>
    3dab:	89 c3                	mov    %eax,%ebx
  if((pid = fork()) == 0){
    3dad:	e8 19 2b 00 00       	call   68cb <fork>
    3db2:	83 c4 10             	add    $0x10,%esp
    3db5:	85 c0                	test   %eax,%eax
    3db7:	74 0b                	je     3dc4 <mem+0x34>
    3db9:	e9 8a 00 00 00       	jmp    3e48 <mem+0xb8>
    3dbe:	66 90                	xchg   %ax,%ax
      *(char**)m2 = m1;
    3dc0:	89 30                	mov    %esi,(%eax)
    3dc2:	89 c6                	mov    %eax,%esi
    while((m2 = malloc(10001)) != 0){
    3dc4:	83 ec 0c             	sub    $0xc,%esp
    3dc7:	68 11 27 00 00       	push   $0x2711
    3dcc:	e8 8f 2e 00 00       	call   6c60 <malloc>
    3dd1:	83 c4 10             	add    $0x10,%esp
    3dd4:	85 c0                	test   %eax,%eax
    3dd6:	75 e8                	jne    3dc0 <mem+0x30>
    while(m1){
    3dd8:	85 f6                	test   %esi,%esi
    3dda:	74 18                	je     3df4 <mem+0x64>
    3ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
    3de0:	89 f0                	mov    %esi,%eax
      free(m1);
    3de2:	83 ec 0c             	sub    $0xc,%esp
      m2 = *(char**)m1;
    3de5:	8b 36                	mov    (%esi),%esi
      free(m1);
    3de7:	50                   	push   %eax
    3de8:	e8 e3 2d 00 00       	call   6bd0 <free>
    while(m1){
    3ded:	83 c4 10             	add    $0x10,%esp
    3df0:	85 f6                	test   %esi,%esi
    3df2:	75 ec                	jne    3de0 <mem+0x50>
    m1 = malloc(1024*20);
    3df4:	83 ec 0c             	sub    $0xc,%esp
    3df7:	68 00 50 00 00       	push   $0x5000
    3dfc:	e8 5f 2e 00 00       	call   6c60 <malloc>
    if(m1 == 0){
    3e01:	83 c4 10             	add    $0x10,%esp
    3e04:	85 c0                	test   %eax,%eax
    3e06:	74 20                	je     3e28 <mem+0x98>
    free(m1);
    3e08:	83 ec 0c             	sub    $0xc,%esp
    3e0b:	50                   	push   %eax
    3e0c:	e8 bf 2d 00 00       	call   6bd0 <free>
    printf(1, "mem ok\n");
    3e11:	58                   	pop    %eax
    3e12:	5a                   	pop    %edx
    3e13:	68 7c 71 00 00       	push   $0x717c
    3e18:	6a 01                	push   $0x1
    3e1a:	e8 11 2c 00 00       	call   6a30 <printf>
    exit();
    3e1f:	e8 af 2a 00 00       	call   68d3 <exit>
    3e24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
    3e28:	83 ec 08             	sub    $0x8,%esp
    3e2b:	68 62 71 00 00       	push   $0x7162
    3e30:	6a 01                	push   $0x1
    3e32:	e8 f9 2b 00 00       	call   6a30 <printf>
      kill(ppid);
    3e37:	89 1c 24             	mov    %ebx,(%esp)
    3e3a:	e8 c4 2a 00 00       	call   6903 <kill>
      exit();
    3e3f:	e8 8f 2a 00 00       	call   68d3 <exit>
    3e44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}
    3e48:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3e4b:	5b                   	pop    %ebx
    3e4c:	5e                   	pop    %esi
    3e4d:	5d                   	pop    %ebp
    wait();
    3e4e:	e9 88 2a 00 00       	jmp    68db <wait>
    3e53:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3e5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003e60 <sharedfd>:
{
    3e60:	55                   	push   %ebp
    3e61:	89 e5                	mov    %esp,%ebp
    3e63:	57                   	push   %edi
    3e64:	56                   	push   %esi
    3e65:	53                   	push   %ebx
    3e66:	83 ec 34             	sub    $0x34,%esp
  printf(1, "sharedfd test\n");
    3e69:	68 84 71 00 00       	push   $0x7184
    3e6e:	6a 01                	push   $0x1
    3e70:	e8 bb 2b 00 00       	call   6a30 <printf>
  unlink("sharedfd");
    3e75:	c7 04 24 93 71 00 00 	movl   $0x7193,(%esp)
    3e7c:	e8 a2 2a 00 00       	call   6923 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
    3e81:	5b                   	pop    %ebx
    3e82:	5e                   	pop    %esi
    3e83:	68 02 02 00 00       	push   $0x202
    3e88:	68 93 71 00 00       	push   $0x7193
    3e8d:	e8 81 2a 00 00       	call   6913 <open>
  if(fd < 0){
    3e92:	83 c4 10             	add    $0x10,%esp
    3e95:	85 c0                	test   %eax,%eax
    3e97:	0f 88 2a 01 00 00    	js     3fc7 <sharedfd+0x167>
    3e9d:	89 c7                	mov    %eax,%edi
  memset(buf, pid==0?'c':'p', sizeof(buf));
    3e9f:	8d 75 de             	lea    -0x22(%ebp),%esi
    3ea2:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  pid = fork();
    3ea7:	e8 1f 2a 00 00       	call   68cb <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
    3eac:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
    3eaf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
    3eb2:	19 c0                	sbb    %eax,%eax
    3eb4:	83 ec 04             	sub    $0x4,%esp
    3eb7:	83 e0 f3             	and    $0xfffffff3,%eax
    3eba:	6a 0a                	push   $0xa
    3ebc:	83 c0 70             	add    $0x70,%eax
    3ebf:	50                   	push   %eax
    3ec0:	56                   	push   %esi
    3ec1:	e8 7a 28 00 00       	call   6740 <memset>
    3ec6:	83 c4 10             	add    $0x10,%esp
    3ec9:	eb 0a                	jmp    3ed5 <sharedfd+0x75>
    3ecb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3ecf:	90                   	nop
  for(i = 0; i < 1000; i++){
    3ed0:	83 eb 01             	sub    $0x1,%ebx
    3ed3:	74 26                	je     3efb <sharedfd+0x9b>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
    3ed5:	83 ec 04             	sub    $0x4,%esp
    3ed8:	6a 0a                	push   $0xa
    3eda:	56                   	push   %esi
    3edb:	57                   	push   %edi
    3edc:	e8 12 2a 00 00       	call   68f3 <write>
    3ee1:	83 c4 10             	add    $0x10,%esp
    3ee4:	83 f8 0a             	cmp    $0xa,%eax
    3ee7:	74 e7                	je     3ed0 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
    3ee9:	83 ec 08             	sub    $0x8,%esp
    3eec:	68 84 7e 00 00       	push   $0x7e84
    3ef1:	6a 01                	push   $0x1
    3ef3:	e8 38 2b 00 00       	call   6a30 <printf>
      break;
    3ef8:	83 c4 10             	add    $0x10,%esp
  if(pid == 0)
    3efb:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    3efe:	85 c9                	test   %ecx,%ecx
    3f00:	0f 84 f5 00 00 00    	je     3ffb <sharedfd+0x19b>
    wait();
    3f06:	e8 d0 29 00 00       	call   68db <wait>
  close(fd);
    3f0b:	83 ec 0c             	sub    $0xc,%esp
  nc = np = 0;
    3f0e:	31 db                	xor    %ebx,%ebx
  close(fd);
    3f10:	57                   	push   %edi
    3f11:	8d 7d e8             	lea    -0x18(%ebp),%edi
    3f14:	e8 e2 29 00 00       	call   68fb <close>
  fd = open("sharedfd", 0);
    3f19:	58                   	pop    %eax
    3f1a:	5a                   	pop    %edx
    3f1b:	6a 00                	push   $0x0
    3f1d:	68 93 71 00 00       	push   $0x7193
    3f22:	e8 ec 29 00 00       	call   6913 <open>
  if(fd < 0){
    3f27:	83 c4 10             	add    $0x10,%esp
  nc = np = 0;
    3f2a:	31 d2                	xor    %edx,%edx
  fd = open("sharedfd", 0);
    3f2c:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
    3f2f:	85 c0                	test   %eax,%eax
    3f31:	0f 88 aa 00 00 00    	js     3fe1 <sharedfd+0x181>
    3f37:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3f3e:	66 90                	xchg   %ax,%ax
  while((n = read(fd, buf, sizeof(buf))) > 0){
    3f40:	83 ec 04             	sub    $0x4,%esp
    3f43:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    3f46:	6a 0a                	push   $0xa
    3f48:	56                   	push   %esi
    3f49:	ff 75 d0             	push   -0x30(%ebp)
    3f4c:	e8 9a 29 00 00       	call   68eb <read>
    3f51:	83 c4 10             	add    $0x10,%esp
    3f54:	85 c0                	test   %eax,%eax
    3f56:	7e 28                	jle    3f80 <sharedfd+0x120>
    3f58:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    3f5b:	89 f0                	mov    %esi,%eax
    3f5d:	eb 13                	jmp    3f72 <sharedfd+0x112>
    3f5f:	90                   	nop
        np++;
    3f60:	80 f9 70             	cmp    $0x70,%cl
    3f63:	0f 94 c1             	sete   %cl
    3f66:	0f b6 c9             	movzbl %cl,%ecx
    3f69:	01 cb                	add    %ecx,%ebx
    for(i = 0; i < sizeof(buf); i++){
    3f6b:	83 c0 01             	add    $0x1,%eax
    3f6e:	39 f8                	cmp    %edi,%eax
    3f70:	74 ce                	je     3f40 <sharedfd+0xe0>
      if(buf[i] == 'c')
    3f72:	0f b6 08             	movzbl (%eax),%ecx
    3f75:	80 f9 63             	cmp    $0x63,%cl
    3f78:	75 e6                	jne    3f60 <sharedfd+0x100>
        nc++;
    3f7a:	83 c2 01             	add    $0x1,%edx
      if(buf[i] == 'p')
    3f7d:	eb ec                	jmp    3f6b <sharedfd+0x10b>
    3f7f:	90                   	nop
  close(fd);
    3f80:	83 ec 0c             	sub    $0xc,%esp
    3f83:	ff 75 d0             	push   -0x30(%ebp)
    3f86:	e8 70 29 00 00       	call   68fb <close>
  unlink("sharedfd");
    3f8b:	c7 04 24 93 71 00 00 	movl   $0x7193,(%esp)
    3f92:	e8 8c 29 00 00       	call   6923 <unlink>
  if(nc == 10000 && np == 10000){
    3f97:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    3f9a:	83 c4 10             	add    $0x10,%esp
    3f9d:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
    3fa3:	75 5b                	jne    4000 <sharedfd+0x1a0>
    3fa5:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    3fab:	75 53                	jne    4000 <sharedfd+0x1a0>
    printf(1, "sharedfd ok\n");
    3fad:	83 ec 08             	sub    $0x8,%esp
    3fb0:	68 9c 71 00 00       	push   $0x719c
    3fb5:	6a 01                	push   $0x1
    3fb7:	e8 74 2a 00 00       	call   6a30 <printf>
    3fbc:	83 c4 10             	add    $0x10,%esp
}
    3fbf:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3fc2:	5b                   	pop    %ebx
    3fc3:	5e                   	pop    %esi
    3fc4:	5f                   	pop    %edi
    3fc5:	5d                   	pop    %ebp
    3fc6:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for writing");
    3fc7:	83 ec 08             	sub    $0x8,%esp
    3fca:	68 58 7e 00 00       	push   $0x7e58
    3fcf:	6a 01                	push   $0x1
    3fd1:	e8 5a 2a 00 00       	call   6a30 <printf>
    return;
    3fd6:	83 c4 10             	add    $0x10,%esp
}
    3fd9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3fdc:	5b                   	pop    %ebx
    3fdd:	5e                   	pop    %esi
    3fde:	5f                   	pop    %edi
    3fdf:	5d                   	pop    %ebp
    3fe0:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
    3fe1:	83 ec 08             	sub    $0x8,%esp
    3fe4:	68 a4 7e 00 00       	push   $0x7ea4
    3fe9:	6a 01                	push   $0x1
    3feb:	e8 40 2a 00 00       	call   6a30 <printf>
    return;
    3ff0:	83 c4 10             	add    $0x10,%esp
}
    3ff3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3ff6:	5b                   	pop    %ebx
    3ff7:	5e                   	pop    %esi
    3ff8:	5f                   	pop    %edi
    3ff9:	5d                   	pop    %ebp
    3ffa:	c3                   	ret    
    exit();
    3ffb:	e8 d3 28 00 00       	call   68d3 <exit>
    printf(1, "sharedfd oops %d %d\n", nc, np);
    4000:	53                   	push   %ebx
    4001:	52                   	push   %edx
    4002:	68 a9 71 00 00       	push   $0x71a9
    4007:	6a 01                	push   $0x1
    4009:	e8 22 2a 00 00       	call   6a30 <printf>
    exit();
    400e:	e8 c0 28 00 00       	call   68d3 <exit>
    4013:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    401a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00004020 <fourfiles>:
{
    4020:	55                   	push   %ebp
    4021:	89 e5                	mov    %esp,%ebp
    4023:	57                   	push   %edi
    4024:	56                   	push   %esi
  printf(1, "fourfiles test\n");
    4025:	be be 71 00 00       	mov    $0x71be,%esi
{
    402a:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    402b:	31 db                	xor    %ebx,%ebx
{
    402d:	83 ec 34             	sub    $0x34,%esp
  char *names[] = { "f0", "f1", "f2", "f3" };
    4030:	c7 45 d8 be 71 00 00 	movl   $0x71be,-0x28(%ebp)
  printf(1, "fourfiles test\n");
    4037:	68 c4 71 00 00       	push   $0x71c4
    403c:	6a 01                	push   $0x1
  char *names[] = { "f0", "f1", "f2", "f3" };
    403e:	c7 45 dc 07 73 00 00 	movl   $0x7307,-0x24(%ebp)
    4045:	c7 45 e0 0b 73 00 00 	movl   $0x730b,-0x20(%ebp)
    404c:	c7 45 e4 c1 71 00 00 	movl   $0x71c1,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    4053:	e8 d8 29 00 00       	call   6a30 <printf>
    4058:	83 c4 10             	add    $0x10,%esp
    unlink(fname);
    405b:	83 ec 0c             	sub    $0xc,%esp
    405e:	56                   	push   %esi
    405f:	e8 bf 28 00 00       	call   6923 <unlink>
    pid = fork();
    4064:	e8 62 28 00 00       	call   68cb <fork>
    if(pid < 0){
    4069:	83 c4 10             	add    $0x10,%esp
    406c:	85 c0                	test   %eax,%eax
    406e:	0f 88 64 01 00 00    	js     41d8 <fourfiles+0x1b8>
    if(pid == 0){
    4074:	0f 84 e9 00 00 00    	je     4163 <fourfiles+0x143>
  for(pi = 0; pi < 4; pi++){
    407a:	83 c3 01             	add    $0x1,%ebx
    407d:	83 fb 04             	cmp    $0x4,%ebx
    4080:	74 06                	je     4088 <fourfiles+0x68>
    fname = names[pi];
    4082:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    4086:	eb d3                	jmp    405b <fourfiles+0x3b>
    wait();
    4088:	e8 4e 28 00 00       	call   68db <wait>
  for(i = 0; i < 2; i++){
    408d:	31 f6                	xor    %esi,%esi
    wait();
    408f:	e8 47 28 00 00       	call   68db <wait>
    4094:	e8 42 28 00 00       	call   68db <wait>
    4099:	e8 3d 28 00 00       	call   68db <wait>
    fname = names[i];
    409e:	8b 44 b5 d8          	mov    -0x28(%ebp,%esi,4),%eax
    fd = open(fname, 0);
    40a2:	83 ec 08             	sub    $0x8,%esp
    total = 0;
    40a5:	31 db                	xor    %ebx,%ebx
    fd = open(fname, 0);
    40a7:	6a 00                	push   $0x0
    40a9:	50                   	push   %eax
    fname = names[i];
    40aa:	89 45 d0             	mov    %eax,-0x30(%ebp)
    fd = open(fname, 0);
    40ad:	e8 61 28 00 00       	call   6913 <open>
    while((n = read(fd, buf, sizeof(buf))) > 0){
    40b2:	83 c4 10             	add    $0x10,%esp
    fd = open(fname, 0);
    40b5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    while((n = read(fd, buf, sizeof(buf))) > 0){
    40b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    40bf:	90                   	nop
    40c0:	83 ec 04             	sub    $0x4,%esp
    40c3:	68 00 20 00 00       	push   $0x2000
    40c8:	68 80 b5 00 00       	push   $0xb580
    40cd:	ff 75 d4             	push   -0x2c(%ebp)
    40d0:	e8 16 28 00 00       	call   68eb <read>
    40d5:	83 c4 10             	add    $0x10,%esp
    40d8:	89 c7                	mov    %eax,%edi
    40da:	85 c0                	test   %eax,%eax
    40dc:	7e 20                	jle    40fe <fourfiles+0xde>
      for(j = 0; j < n; j++){
    40de:	31 c0                	xor    %eax,%eax
        if(buf[j] != '0'+i){
    40e0:	83 fe 01             	cmp    $0x1,%esi
    40e3:	0f be 88 80 b5 00 00 	movsbl 0xb580(%eax),%ecx
    40ea:	19 d2                	sbb    %edx,%edx
    40ec:	83 c2 31             	add    $0x31,%edx
    40ef:	39 d1                	cmp    %edx,%ecx
    40f1:	75 5c                	jne    414f <fourfiles+0x12f>
      for(j = 0; j < n; j++){
    40f3:	83 c0 01             	add    $0x1,%eax
    40f6:	39 c7                	cmp    %eax,%edi
    40f8:	75 e6                	jne    40e0 <fourfiles+0xc0>
      total += n;
    40fa:	01 fb                	add    %edi,%ebx
    40fc:	eb c2                	jmp    40c0 <fourfiles+0xa0>
    close(fd);
    40fe:	83 ec 0c             	sub    $0xc,%esp
    4101:	ff 75 d4             	push   -0x2c(%ebp)
    4104:	e8 f2 27 00 00       	call   68fb <close>
    if(total != 12*500){
    4109:	83 c4 10             	add    $0x10,%esp
    410c:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    4112:	0f 85 d4 00 00 00    	jne    41ec <fourfiles+0x1cc>
    unlink(fname);
    4118:	83 ec 0c             	sub    $0xc,%esp
    411b:	ff 75 d0             	push   -0x30(%ebp)
    411e:	e8 00 28 00 00       	call   6923 <unlink>
  for(i = 0; i < 2; i++){
    4123:	83 c4 10             	add    $0x10,%esp
    4126:	83 fe 01             	cmp    $0x1,%esi
    4129:	75 1a                	jne    4145 <fourfiles+0x125>
  printf(1, "fourfiles ok\n");
    412b:	83 ec 08             	sub    $0x8,%esp
    412e:	68 02 72 00 00       	push   $0x7202
    4133:	6a 01                	push   $0x1
    4135:	e8 f6 28 00 00       	call   6a30 <printf>
}
    413a:	83 c4 10             	add    $0x10,%esp
    413d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4140:	5b                   	pop    %ebx
    4141:	5e                   	pop    %esi
    4142:	5f                   	pop    %edi
    4143:	5d                   	pop    %ebp
    4144:	c3                   	ret    
    4145:	be 01 00 00 00       	mov    $0x1,%esi
    414a:	e9 4f ff ff ff       	jmp    409e <fourfiles+0x7e>
          printf(1, "wrong char\n");
    414f:	83 ec 08             	sub    $0x8,%esp
    4152:	68 e5 71 00 00       	push   $0x71e5
    4157:	6a 01                	push   $0x1
    4159:	e8 d2 28 00 00       	call   6a30 <printf>
          exit();
    415e:	e8 70 27 00 00       	call   68d3 <exit>
      fd = open(fname, O_CREATE | O_RDWR);
    4163:	83 ec 08             	sub    $0x8,%esp
    4166:	68 02 02 00 00       	push   $0x202
    416b:	56                   	push   %esi
    416c:	e8 a2 27 00 00       	call   6913 <open>
      if(fd < 0){
    4171:	83 c4 10             	add    $0x10,%esp
      fd = open(fname, O_CREATE | O_RDWR);
    4174:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    4176:	85 c0                	test   %eax,%eax
    4178:	78 45                	js     41bf <fourfiles+0x19f>
      memset(buf, '0'+pi, 512);
    417a:	83 ec 04             	sub    $0x4,%esp
    417d:	83 c3 30             	add    $0x30,%ebx
    4180:	68 00 02 00 00       	push   $0x200
    4185:	53                   	push   %ebx
    4186:	bb 0c 00 00 00       	mov    $0xc,%ebx
    418b:	68 80 b5 00 00       	push   $0xb580
    4190:	e8 ab 25 00 00       	call   6740 <memset>
    4195:	83 c4 10             	add    $0x10,%esp
        if((n = write(fd, buf, 500)) != 500){
    4198:	83 ec 04             	sub    $0x4,%esp
    419b:	68 f4 01 00 00       	push   $0x1f4
    41a0:	68 80 b5 00 00       	push   $0xb580
    41a5:	56                   	push   %esi
    41a6:	e8 48 27 00 00       	call   68f3 <write>
    41ab:	83 c4 10             	add    $0x10,%esp
    41ae:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    41b3:	75 4a                	jne    41ff <fourfiles+0x1df>
      for(i = 0; i < 12; i++){
    41b5:	83 eb 01             	sub    $0x1,%ebx
    41b8:	75 de                	jne    4198 <fourfiles+0x178>
      exit();
    41ba:	e8 14 27 00 00       	call   68d3 <exit>
        printf(1, "create failed\n");
    41bf:	51                   	push   %ecx
    41c0:	51                   	push   %ecx
    41c1:	68 5f 74 00 00       	push   $0x745f
    41c6:	6a 01                	push   $0x1
    41c8:	e8 63 28 00 00       	call   6a30 <printf>
        exit();
    41cd:	e8 01 27 00 00       	call   68d3 <exit>
    41d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      printf(1, "fork failed\n");
    41d8:	83 ec 08             	sub    $0x8,%esp
    41db:	68 99 7c 00 00       	push   $0x7c99
    41e0:	6a 01                	push   $0x1
    41e2:	e8 49 28 00 00       	call   6a30 <printf>
      exit();
    41e7:	e8 e7 26 00 00       	call   68d3 <exit>
      printf(1, "wrong length %d\n", total);
    41ec:	50                   	push   %eax
    41ed:	53                   	push   %ebx
    41ee:	68 f1 71 00 00       	push   $0x71f1
    41f3:	6a 01                	push   $0x1
    41f5:	e8 36 28 00 00       	call   6a30 <printf>
      exit();
    41fa:	e8 d4 26 00 00       	call   68d3 <exit>
          printf(1, "write failed %d\n", n);
    41ff:	52                   	push   %edx
    4200:	50                   	push   %eax
    4201:	68 d4 71 00 00       	push   $0x71d4
    4206:	6a 01                	push   $0x1
    4208:	e8 23 28 00 00       	call   6a30 <printf>
          exit();
    420d:	e8 c1 26 00 00       	call   68d3 <exit>
    4212:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4219:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00004220 <createdelete>:
{
    4220:	55                   	push   %ebp
    4221:	89 e5                	mov    %esp,%ebp
    4223:	57                   	push   %edi
    4224:	56                   	push   %esi
    4225:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    4226:	31 db                	xor    %ebx,%ebx
{
    4228:	83 ec 44             	sub    $0x44,%esp
  printf(1, "createdelete test\n");
    422b:	68 10 72 00 00       	push   $0x7210
    4230:	6a 01                	push   $0x1
    4232:	e8 f9 27 00 00       	call   6a30 <printf>
    4237:	83 c4 10             	add    $0x10,%esp
    pid = fork();
    423a:	e8 8c 26 00 00       	call   68cb <fork>
    if(pid < 0){
    423f:	85 c0                	test   %eax,%eax
    4241:	0f 88 c3 01 00 00    	js     440a <createdelete+0x1ea>
    if(pid == 0){
    4247:	0f 84 13 01 00 00    	je     4360 <createdelete+0x140>
  for(pi = 0; pi < 4; pi++){
    424d:	83 c3 01             	add    $0x1,%ebx
    4250:	83 fb 04             	cmp    $0x4,%ebx
    4253:	75 e5                	jne    423a <createdelete+0x1a>
    wait();
    4255:	e8 81 26 00 00       	call   68db <wait>
  for(i = 0; i < N; i++){
    425a:	31 f6                	xor    %esi,%esi
    425c:	8d 7d c8             	lea    -0x38(%ebp),%edi
    wait();
    425f:	e8 77 26 00 00       	call   68db <wait>
    4264:	e8 72 26 00 00       	call   68db <wait>
    4269:	e8 6d 26 00 00       	call   68db <wait>
  name[0] = name[1] = name[2] = 0;
    426e:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
  for(i = 0; i < N; i++){
    4272:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if((i == 0 || i >= N/2) && fd < 0){
    4278:	85 f6                	test   %esi,%esi
    427a:	8d 46 30             	lea    0x30(%esi),%eax
    427d:	0f 94 c3             	sete   %bl
    4280:	83 fe 09             	cmp    $0x9,%esi
    4283:	88 45 c7             	mov    %al,-0x39(%ebp)
    4286:	0f 9f c0             	setg   %al
    4289:	09 c3                	or     %eax,%ebx
      } else if((i >= 1 && i < N/2) && fd >= 0){
    428b:	8d 46 ff             	lea    -0x1(%esi),%eax
    428e:	89 45 c0             	mov    %eax,-0x40(%ebp)
      if((i == 0 || i >= N/2) && fd < 0){
    4291:	88 5d c6             	mov    %bl,-0x3a(%ebp)
    4294:	bb 70 00 00 00       	mov    $0x70,%ebx
      fd = open(name, 0);
    4299:	83 ec 08             	sub    $0x8,%esp
      name[1] = '0' + i;
    429c:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      name[0] = 'p' + pi;
    42a0:	88 5d c8             	mov    %bl,-0x38(%ebp)
      fd = open(name, 0);
    42a3:	6a 00                	push   $0x0
    42a5:	57                   	push   %edi
      name[1] = '0' + i;
    42a6:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    42a9:	e8 65 26 00 00       	call   6913 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    42ae:	83 c4 10             	add    $0x10,%esp
    42b1:	80 7d c6 00          	cmpb   $0x0,-0x3a(%ebp)
    42b5:	0f 84 85 00 00 00    	je     4340 <createdelete+0x120>
    42bb:	85 c0                	test   %eax,%eax
    42bd:	0f 88 32 01 00 00    	js     43f5 <createdelete+0x1d5>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    42c3:	83 7d c0 08          	cmpl   $0x8,-0x40(%ebp)
    42c7:	76 7b                	jbe    4344 <createdelete+0x124>
        close(fd);
    42c9:	83 ec 0c             	sub    $0xc,%esp
    42cc:	50                   	push   %eax
    42cd:	e8 29 26 00 00       	call   68fb <close>
    42d2:	83 c4 10             	add    $0x10,%esp
    for(pi = 0; pi < 4; pi++){
    42d5:	83 c3 01             	add    $0x1,%ebx
    42d8:	80 fb 74             	cmp    $0x74,%bl
    42db:	75 bc                	jne    4299 <createdelete+0x79>
  for(i = 0; i < N; i++){
    42dd:	83 c6 01             	add    $0x1,%esi
    42e0:	83 fe 14             	cmp    $0x14,%esi
    42e3:	75 93                	jne    4278 <createdelete+0x58>
    42e5:	be 70 00 00 00       	mov    $0x70,%esi
    42ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    for(pi = 0; pi < 4; pi++){
    42f0:	8d 46 c0             	lea    -0x40(%esi),%eax
      name[0] = 'p' + i;
    42f3:	bb 04 00 00 00       	mov    $0x4,%ebx
    42f8:	88 45 c7             	mov    %al,-0x39(%ebp)
      unlink(name);
    42fb:	83 ec 0c             	sub    $0xc,%esp
      name[0] = 'p' + i;
    42fe:	89 f0                	mov    %esi,%eax
      unlink(name);
    4300:	57                   	push   %edi
      name[0] = 'p' + i;
    4301:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    4304:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
    4308:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    430b:	e8 13 26 00 00       	call   6923 <unlink>
    for(pi = 0; pi < 4; pi++){
    4310:	83 c4 10             	add    $0x10,%esp
    4313:	83 eb 01             	sub    $0x1,%ebx
    4316:	75 e3                	jne    42fb <createdelete+0xdb>
  for(i = 0; i < N; i++){
    4318:	83 c6 01             	add    $0x1,%esi
    431b:	89 f0                	mov    %esi,%eax
    431d:	3c 84                	cmp    $0x84,%al
    431f:	75 cf                	jne    42f0 <createdelete+0xd0>
  printf(1, "createdelete ok\n");
    4321:	83 ec 08             	sub    $0x8,%esp
    4324:	68 23 72 00 00       	push   $0x7223
    4329:	6a 01                	push   $0x1
    432b:	e8 00 27 00 00       	call   6a30 <printf>
}
    4330:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4333:	5b                   	pop    %ebx
    4334:	5e                   	pop    %esi
    4335:	5f                   	pop    %edi
    4336:	5d                   	pop    %ebp
    4337:	c3                   	ret    
    4338:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    433f:	90                   	nop
      } else if((i >= 1 && i < N/2) && fd >= 0){
    4340:	85 c0                	test   %eax,%eax
    4342:	78 91                	js     42d5 <createdelete+0xb5>
        printf(1, "oops createdelete %s did exist\n", name);
    4344:	50                   	push   %eax
    4345:	57                   	push   %edi
    4346:	68 f4 7e 00 00       	push   $0x7ef4
    434b:	6a 01                	push   $0x1
    434d:	e8 de 26 00 00       	call   6a30 <printf>
        exit();
    4352:	e8 7c 25 00 00       	call   68d3 <exit>
    4357:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    435e:	66 90                	xchg   %ax,%ax
      name[0] = 'p' + pi;
    4360:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    4363:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    4367:	be 01 00 00 00       	mov    $0x1,%esi
    436c:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[0] = 'p' + pi;
    436f:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[2] = '\0';
    4372:	31 db                	xor    %ebx,%ebx
    4374:	eb 15                	jmp    438b <createdelete+0x16b>
    4376:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    437d:	8d 76 00             	lea    0x0(%esi),%esi
      for(i = 0; i < N; i++){
    4380:	83 fe 14             	cmp    $0x14,%esi
    4383:	74 6b                	je     43f0 <createdelete+0x1d0>
    4385:	83 c3 01             	add    $0x1,%ebx
    4388:	83 c6 01             	add    $0x1,%esi
        fd = open(name, O_CREATE | O_RDWR);
    438b:	83 ec 08             	sub    $0x8,%esp
        name[1] = '0' + i;
    438e:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    4391:	68 02 02 00 00       	push   $0x202
    4396:	57                   	push   %edi
        name[1] = '0' + i;
    4397:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    439a:	e8 74 25 00 00       	call   6913 <open>
        if(fd < 0){
    439f:	83 c4 10             	add    $0x10,%esp
    43a2:	85 c0                	test   %eax,%eax
    43a4:	78 78                	js     441e <createdelete+0x1fe>
        close(fd);
    43a6:	83 ec 0c             	sub    $0xc,%esp
    43a9:	50                   	push   %eax
    43aa:	e8 4c 25 00 00       	call   68fb <close>
        if(i > 0 && (i % 2 ) == 0){
    43af:	83 c4 10             	add    $0x10,%esp
    43b2:	85 db                	test   %ebx,%ebx
    43b4:	74 cf                	je     4385 <createdelete+0x165>
    43b6:	f6 c3 01             	test   $0x1,%bl
    43b9:	75 c5                	jne    4380 <createdelete+0x160>
          if(unlink(name) < 0){
    43bb:	83 ec 0c             	sub    $0xc,%esp
          name[1] = '0' + (i / 2);
    43be:	89 d8                	mov    %ebx,%eax
          if(unlink(name) < 0){
    43c0:	57                   	push   %edi
          name[1] = '0' + (i / 2);
    43c1:	d1 f8                	sar    %eax
    43c3:	83 c0 30             	add    $0x30,%eax
    43c6:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    43c9:	e8 55 25 00 00       	call   6923 <unlink>
    43ce:	83 c4 10             	add    $0x10,%esp
    43d1:	85 c0                	test   %eax,%eax
    43d3:	79 ab                	jns    4380 <createdelete+0x160>
            printf(1, "unlink failed\n");
    43d5:	52                   	push   %edx
    43d6:	52                   	push   %edx
    43d7:	68 11 6e 00 00       	push   $0x6e11
    43dc:	6a 01                	push   $0x1
    43de:	e8 4d 26 00 00       	call   6a30 <printf>
            exit();
    43e3:	e8 eb 24 00 00       	call   68d3 <exit>
    43e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    43ef:	90                   	nop
      exit();
    43f0:	e8 de 24 00 00       	call   68d3 <exit>
        printf(1, "oops createdelete %s didn't exist\n", name);
    43f5:	83 ec 04             	sub    $0x4,%esp
    43f8:	57                   	push   %edi
    43f9:	68 d0 7e 00 00       	push   $0x7ed0
    43fe:	6a 01                	push   $0x1
    4400:	e8 2b 26 00 00       	call   6a30 <printf>
        exit();
    4405:	e8 c9 24 00 00       	call   68d3 <exit>
      printf(1, "fork failed\n");
    440a:	83 ec 08             	sub    $0x8,%esp
    440d:	68 99 7c 00 00       	push   $0x7c99
    4412:	6a 01                	push   $0x1
    4414:	e8 17 26 00 00       	call   6a30 <printf>
      exit();
    4419:	e8 b5 24 00 00       	call   68d3 <exit>
          printf(1, "create failed\n");
    441e:	83 ec 08             	sub    $0x8,%esp
    4421:	68 5f 74 00 00       	push   $0x745f
    4426:	6a 01                	push   $0x1
    4428:	e8 03 26 00 00       	call   6a30 <printf>
          exit();
    442d:	e8 a1 24 00 00       	call   68d3 <exit>
    4432:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4439:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00004440 <unlinkread>:
{
    4440:	55                   	push   %ebp
    4441:	89 e5                	mov    %esp,%ebp
    4443:	56                   	push   %esi
    4444:	53                   	push   %ebx
  printf(1, "unlinkread test\n");
    4445:	83 ec 08             	sub    $0x8,%esp
    4448:	68 34 72 00 00       	push   $0x7234
    444d:	6a 01                	push   $0x1
    444f:	e8 dc 25 00 00       	call   6a30 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    4454:	5b                   	pop    %ebx
    4455:	5e                   	pop    %esi
    4456:	68 02 02 00 00       	push   $0x202
    445b:	68 45 72 00 00       	push   $0x7245
    4460:	e8 ae 24 00 00       	call   6913 <open>
  if(fd < 0){
    4465:	83 c4 10             	add    $0x10,%esp
    4468:	85 c0                	test   %eax,%eax
    446a:	0f 88 e6 00 00 00    	js     4556 <unlinkread+0x116>
  write(fd, "hello", 5);
    4470:	83 ec 04             	sub    $0x4,%esp
    4473:	89 c3                	mov    %eax,%ebx
    4475:	6a 05                	push   $0x5
    4477:	68 6a 72 00 00       	push   $0x726a
    447c:	50                   	push   %eax
    447d:	e8 71 24 00 00       	call   68f3 <write>
  close(fd);
    4482:	89 1c 24             	mov    %ebx,(%esp)
    4485:	e8 71 24 00 00       	call   68fb <close>
  fd = open("unlinkread", O_RDWR);
    448a:	58                   	pop    %eax
    448b:	5a                   	pop    %edx
    448c:	6a 02                	push   $0x2
    448e:	68 45 72 00 00       	push   $0x7245
    4493:	e8 7b 24 00 00       	call   6913 <open>
  if(fd < 0){
    4498:	83 c4 10             	add    $0x10,%esp
  fd = open("unlinkread", O_RDWR);
    449b:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    449d:	85 c0                	test   %eax,%eax
    449f:	0f 88 10 01 00 00    	js     45b5 <unlinkread+0x175>
  if(unlink("unlinkread") != 0){
    44a5:	83 ec 0c             	sub    $0xc,%esp
    44a8:	68 45 72 00 00       	push   $0x7245
    44ad:	e8 71 24 00 00       	call   6923 <unlink>
    44b2:	83 c4 10             	add    $0x10,%esp
    44b5:	85 c0                	test   %eax,%eax
    44b7:	0f 85 e5 00 00 00    	jne    45a2 <unlinkread+0x162>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    44bd:	83 ec 08             	sub    $0x8,%esp
    44c0:	68 02 02 00 00       	push   $0x202
    44c5:	68 45 72 00 00       	push   $0x7245
    44ca:	e8 44 24 00 00       	call   6913 <open>
  write(fd1, "yyy", 3);
    44cf:	83 c4 0c             	add    $0xc,%esp
    44d2:	6a 03                	push   $0x3
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    44d4:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    44d6:	68 a2 72 00 00       	push   $0x72a2
    44db:	50                   	push   %eax
    44dc:	e8 12 24 00 00       	call   68f3 <write>
  close(fd1);
    44e1:	89 34 24             	mov    %esi,(%esp)
    44e4:	e8 12 24 00 00       	call   68fb <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    44e9:	83 c4 0c             	add    $0xc,%esp
    44ec:	68 00 20 00 00       	push   $0x2000
    44f1:	68 80 b5 00 00       	push   $0xb580
    44f6:	53                   	push   %ebx
    44f7:	e8 ef 23 00 00       	call   68eb <read>
    44fc:	83 c4 10             	add    $0x10,%esp
    44ff:	83 f8 05             	cmp    $0x5,%eax
    4502:	0f 85 87 00 00 00    	jne    458f <unlinkread+0x14f>
  if(buf[0] != 'h'){
    4508:	80 3d 80 b5 00 00 68 	cmpb   $0x68,0xb580
    450f:	75 6b                	jne    457c <unlinkread+0x13c>
  if(write(fd, buf, 10) != 10){
    4511:	83 ec 04             	sub    $0x4,%esp
    4514:	6a 0a                	push   $0xa
    4516:	68 80 b5 00 00       	push   $0xb580
    451b:	53                   	push   %ebx
    451c:	e8 d2 23 00 00       	call   68f3 <write>
    4521:	83 c4 10             	add    $0x10,%esp
    4524:	83 f8 0a             	cmp    $0xa,%eax
    4527:	75 40                	jne    4569 <unlinkread+0x129>
  close(fd);
    4529:	83 ec 0c             	sub    $0xc,%esp
    452c:	53                   	push   %ebx
    452d:	e8 c9 23 00 00       	call   68fb <close>
  unlink("unlinkread");
    4532:	c7 04 24 45 72 00 00 	movl   $0x7245,(%esp)
    4539:	e8 e5 23 00 00       	call   6923 <unlink>
  printf(1, "unlinkread ok\n");
    453e:	58                   	pop    %eax
    453f:	5a                   	pop    %edx
    4540:	68 ed 72 00 00       	push   $0x72ed
    4545:	6a 01                	push   $0x1
    4547:	e8 e4 24 00 00       	call   6a30 <printf>
}
    454c:	83 c4 10             	add    $0x10,%esp
    454f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    4552:	5b                   	pop    %ebx
    4553:	5e                   	pop    %esi
    4554:	5d                   	pop    %ebp
    4555:	c3                   	ret    
    printf(1, "create unlinkread failed\n");
    4556:	51                   	push   %ecx
    4557:	51                   	push   %ecx
    4558:	68 50 72 00 00       	push   $0x7250
    455d:	6a 01                	push   $0x1
    455f:	e8 cc 24 00 00       	call   6a30 <printf>
    exit();
    4564:	e8 6a 23 00 00       	call   68d3 <exit>
    printf(1, "unlinkread write failed\n");
    4569:	51                   	push   %ecx
    456a:	51                   	push   %ecx
    456b:	68 d4 72 00 00       	push   $0x72d4
    4570:	6a 01                	push   $0x1
    4572:	e8 b9 24 00 00       	call   6a30 <printf>
    exit();
    4577:	e8 57 23 00 00       	call   68d3 <exit>
    printf(1, "unlinkread wrong data\n");
    457c:	53                   	push   %ebx
    457d:	53                   	push   %ebx
    457e:	68 bd 72 00 00       	push   $0x72bd
    4583:	6a 01                	push   $0x1
    4585:	e8 a6 24 00 00       	call   6a30 <printf>
    exit();
    458a:	e8 44 23 00 00       	call   68d3 <exit>
    printf(1, "unlinkread read failed");
    458f:	56                   	push   %esi
    4590:	56                   	push   %esi
    4591:	68 a6 72 00 00       	push   $0x72a6
    4596:	6a 01                	push   $0x1
    4598:	e8 93 24 00 00       	call   6a30 <printf>
    exit();
    459d:	e8 31 23 00 00       	call   68d3 <exit>
    printf(1, "unlink unlinkread failed\n");
    45a2:	50                   	push   %eax
    45a3:	50                   	push   %eax
    45a4:	68 88 72 00 00       	push   $0x7288
    45a9:	6a 01                	push   $0x1
    45ab:	e8 80 24 00 00       	call   6a30 <printf>
    exit();
    45b0:	e8 1e 23 00 00       	call   68d3 <exit>
    printf(1, "open unlinkread failed\n");
    45b5:	50                   	push   %eax
    45b6:	50                   	push   %eax
    45b7:	68 70 72 00 00       	push   $0x7270
    45bc:	6a 01                	push   $0x1
    45be:	e8 6d 24 00 00       	call   6a30 <printf>
    exit();
    45c3:	e8 0b 23 00 00       	call   68d3 <exit>
    45c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    45cf:	90                   	nop

000045d0 <linktest>:
{
    45d0:	55                   	push   %ebp
    45d1:	89 e5                	mov    %esp,%ebp
    45d3:	53                   	push   %ebx
    45d4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "linktest\n");
    45d7:	68 fc 72 00 00       	push   $0x72fc
    45dc:	6a 01                	push   $0x1
    45de:	e8 4d 24 00 00       	call   6a30 <printf>
  unlink("lf1");
    45e3:	c7 04 24 06 73 00 00 	movl   $0x7306,(%esp)
    45ea:	e8 34 23 00 00       	call   6923 <unlink>
  unlink("lf2");
    45ef:	c7 04 24 0a 73 00 00 	movl   $0x730a,(%esp)
    45f6:	e8 28 23 00 00       	call   6923 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    45fb:	58                   	pop    %eax
    45fc:	5a                   	pop    %edx
    45fd:	68 02 02 00 00       	push   $0x202
    4602:	68 06 73 00 00       	push   $0x7306
    4607:	e8 07 23 00 00       	call   6913 <open>
  if(fd < 0){
    460c:	83 c4 10             	add    $0x10,%esp
    460f:	85 c0                	test   %eax,%eax
    4611:	0f 88 1e 01 00 00    	js     4735 <linktest+0x165>
  if(write(fd, "hello", 5) != 5){
    4617:	83 ec 04             	sub    $0x4,%esp
    461a:	89 c3                	mov    %eax,%ebx
    461c:	6a 05                	push   $0x5
    461e:	68 6a 72 00 00       	push   $0x726a
    4623:	50                   	push   %eax
    4624:	e8 ca 22 00 00       	call   68f3 <write>
    4629:	83 c4 10             	add    $0x10,%esp
    462c:	83 f8 05             	cmp    $0x5,%eax
    462f:	0f 85 98 01 00 00    	jne    47cd <linktest+0x1fd>
  close(fd);
    4635:	83 ec 0c             	sub    $0xc,%esp
    4638:	53                   	push   %ebx
    4639:	e8 bd 22 00 00       	call   68fb <close>
  if(link("lf1", "lf2") < 0){
    463e:	5b                   	pop    %ebx
    463f:	58                   	pop    %eax
    4640:	68 0a 73 00 00       	push   $0x730a
    4645:	68 06 73 00 00       	push   $0x7306
    464a:	e8 e4 22 00 00       	call   6933 <link>
    464f:	83 c4 10             	add    $0x10,%esp
    4652:	85 c0                	test   %eax,%eax
    4654:	0f 88 60 01 00 00    	js     47ba <linktest+0x1ea>
  unlink("lf1");
    465a:	83 ec 0c             	sub    $0xc,%esp
    465d:	68 06 73 00 00       	push   $0x7306
    4662:	e8 bc 22 00 00       	call   6923 <unlink>
  if(open("lf1", 0) >= 0){
    4667:	58                   	pop    %eax
    4668:	5a                   	pop    %edx
    4669:	6a 00                	push   $0x0
    466b:	68 06 73 00 00       	push   $0x7306
    4670:	e8 9e 22 00 00       	call   6913 <open>
    4675:	83 c4 10             	add    $0x10,%esp
    4678:	85 c0                	test   %eax,%eax
    467a:	0f 89 27 01 00 00    	jns    47a7 <linktest+0x1d7>
  fd = open("lf2", 0);
    4680:	83 ec 08             	sub    $0x8,%esp
    4683:	6a 00                	push   $0x0
    4685:	68 0a 73 00 00       	push   $0x730a
    468a:	e8 84 22 00 00       	call   6913 <open>
  if(fd < 0){
    468f:	83 c4 10             	add    $0x10,%esp
  fd = open("lf2", 0);
    4692:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    4694:	85 c0                	test   %eax,%eax
    4696:	0f 88 f8 00 00 00    	js     4794 <linktest+0x1c4>
  if(read(fd, buf, sizeof(buf)) != 5){
    469c:	83 ec 04             	sub    $0x4,%esp
    469f:	68 00 20 00 00       	push   $0x2000
    46a4:	68 80 b5 00 00       	push   $0xb580
    46a9:	50                   	push   %eax
    46aa:	e8 3c 22 00 00       	call   68eb <read>
    46af:	83 c4 10             	add    $0x10,%esp
    46b2:	83 f8 05             	cmp    $0x5,%eax
    46b5:	0f 85 c6 00 00 00    	jne    4781 <linktest+0x1b1>
  close(fd);
    46bb:	83 ec 0c             	sub    $0xc,%esp
    46be:	53                   	push   %ebx
    46bf:	e8 37 22 00 00       	call   68fb <close>
  if(link("lf2", "lf2") >= 0){
    46c4:	58                   	pop    %eax
    46c5:	5a                   	pop    %edx
    46c6:	68 0a 73 00 00       	push   $0x730a
    46cb:	68 0a 73 00 00       	push   $0x730a
    46d0:	e8 5e 22 00 00       	call   6933 <link>
    46d5:	83 c4 10             	add    $0x10,%esp
    46d8:	85 c0                	test   %eax,%eax
    46da:	0f 89 8e 00 00 00    	jns    476e <linktest+0x19e>
  unlink("lf2");
    46e0:	83 ec 0c             	sub    $0xc,%esp
    46e3:	68 0a 73 00 00       	push   $0x730a
    46e8:	e8 36 22 00 00       	call   6923 <unlink>
  if(link("lf2", "lf1") >= 0){
    46ed:	59                   	pop    %ecx
    46ee:	5b                   	pop    %ebx
    46ef:	68 06 73 00 00       	push   $0x7306
    46f4:	68 0a 73 00 00       	push   $0x730a
    46f9:	e8 35 22 00 00       	call   6933 <link>
    46fe:	83 c4 10             	add    $0x10,%esp
    4701:	85 c0                	test   %eax,%eax
    4703:	79 56                	jns    475b <linktest+0x18b>
  if(link(".", "lf1") >= 0){
    4705:	83 ec 08             	sub    $0x8,%esp
    4708:	68 06 73 00 00       	push   $0x7306
    470d:	68 ce 75 00 00       	push   $0x75ce
    4712:	e8 1c 22 00 00       	call   6933 <link>
    4717:	83 c4 10             	add    $0x10,%esp
    471a:	85 c0                	test   %eax,%eax
    471c:	79 2a                	jns    4748 <linktest+0x178>
  printf(1, "linktest ok\n");
    471e:	83 ec 08             	sub    $0x8,%esp
    4721:	68 a4 73 00 00       	push   $0x73a4
    4726:	6a 01                	push   $0x1
    4728:	e8 03 23 00 00       	call   6a30 <printf>
}
    472d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    4730:	83 c4 10             	add    $0x10,%esp
    4733:	c9                   	leave  
    4734:	c3                   	ret    
    printf(1, "create lf1 failed\n");
    4735:	50                   	push   %eax
    4736:	50                   	push   %eax
    4737:	68 0e 73 00 00       	push   $0x730e
    473c:	6a 01                	push   $0x1
    473e:	e8 ed 22 00 00       	call   6a30 <printf>
    exit();
    4743:	e8 8b 21 00 00       	call   68d3 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    4748:	50                   	push   %eax
    4749:	50                   	push   %eax
    474a:	68 88 73 00 00       	push   $0x7388
    474f:	6a 01                	push   $0x1
    4751:	e8 da 22 00 00       	call   6a30 <printf>
    exit();
    4756:	e8 78 21 00 00       	call   68d3 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    475b:	52                   	push   %edx
    475c:	52                   	push   %edx
    475d:	68 3c 7f 00 00       	push   $0x7f3c
    4762:	6a 01                	push   $0x1
    4764:	e8 c7 22 00 00       	call   6a30 <printf>
    exit();
    4769:	e8 65 21 00 00       	call   68d3 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    476e:	50                   	push   %eax
    476f:	50                   	push   %eax
    4770:	68 6a 73 00 00       	push   $0x736a
    4775:	6a 01                	push   $0x1
    4777:	e8 b4 22 00 00       	call   6a30 <printf>
    exit();
    477c:	e8 52 21 00 00       	call   68d3 <exit>
    printf(1, "read lf2 failed\n");
    4781:	51                   	push   %ecx
    4782:	51                   	push   %ecx
    4783:	68 59 73 00 00       	push   $0x7359
    4788:	6a 01                	push   $0x1
    478a:	e8 a1 22 00 00       	call   6a30 <printf>
    exit();
    478f:	e8 3f 21 00 00       	call   68d3 <exit>
    printf(1, "open lf2 failed\n");
    4794:	53                   	push   %ebx
    4795:	53                   	push   %ebx
    4796:	68 48 73 00 00       	push   $0x7348
    479b:	6a 01                	push   $0x1
    479d:	e8 8e 22 00 00       	call   6a30 <printf>
    exit();
    47a2:	e8 2c 21 00 00       	call   68d3 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    47a7:	50                   	push   %eax
    47a8:	50                   	push   %eax
    47a9:	68 14 7f 00 00       	push   $0x7f14
    47ae:	6a 01                	push   $0x1
    47b0:	e8 7b 22 00 00       	call   6a30 <printf>
    exit();
    47b5:	e8 19 21 00 00       	call   68d3 <exit>
    printf(1, "link lf1 lf2 failed\n");
    47ba:	51                   	push   %ecx
    47bb:	51                   	push   %ecx
    47bc:	68 33 73 00 00       	push   $0x7333
    47c1:	6a 01                	push   $0x1
    47c3:	e8 68 22 00 00       	call   6a30 <printf>
    exit();
    47c8:	e8 06 21 00 00       	call   68d3 <exit>
    printf(1, "write lf1 failed\n");
    47cd:	50                   	push   %eax
    47ce:	50                   	push   %eax
    47cf:	68 21 73 00 00       	push   $0x7321
    47d4:	6a 01                	push   $0x1
    47d6:	e8 55 22 00 00       	call   6a30 <printf>
    exit();
    47db:	e8 f3 20 00 00       	call   68d3 <exit>

000047e0 <concreate>:
{
    47e0:	55                   	push   %ebp
    47e1:	89 e5                	mov    %esp,%ebp
    47e3:	57                   	push   %edi
    47e4:	56                   	push   %esi
  for(i = 0; i < 40; i++){
    47e5:	31 f6                	xor    %esi,%esi
{
    47e7:	53                   	push   %ebx
    47e8:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    47eb:	83 ec 64             	sub    $0x64,%esp
  printf(1, "concreate test\n");
    47ee:	68 b1 73 00 00       	push   $0x73b1
    47f3:	6a 01                	push   $0x1
    47f5:	e8 36 22 00 00       	call   6a30 <printf>
  file[0] = 'C';
    47fa:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    47fe:	83 c4 10             	add    $0x10,%esp
    4801:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
  for(i = 0; i < 40; i++){
    4805:	eb 4c                	jmp    4853 <concreate+0x73>
    4807:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    480e:	66 90                	xchg   %ax,%ax
    4810:	69 c6 ab aa aa aa    	imul   $0xaaaaaaab,%esi,%eax
    if(pid && (i % 3) == 1){
    4816:	3d ab aa aa aa       	cmp    $0xaaaaaaab,%eax
    481b:	0f 83 af 00 00 00    	jae    48d0 <concreate+0xf0>
      fd = open(file, O_CREATE | O_RDWR);
    4821:	83 ec 08             	sub    $0x8,%esp
    4824:	68 02 02 00 00       	push   $0x202
    4829:	53                   	push   %ebx
    482a:	e8 e4 20 00 00       	call   6913 <open>
      if(fd < 0){
    482f:	83 c4 10             	add    $0x10,%esp
    4832:	85 c0                	test   %eax,%eax
    4834:	78 5f                	js     4895 <concreate+0xb5>
      close(fd);
    4836:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    4839:	83 c6 01             	add    $0x1,%esi
      close(fd);
    483c:	50                   	push   %eax
    483d:	e8 b9 20 00 00       	call   68fb <close>
    4842:	83 c4 10             	add    $0x10,%esp
      wait();
    4845:	e8 91 20 00 00       	call   68db <wait>
  for(i = 0; i < 40; i++){
    484a:	83 fe 28             	cmp    $0x28,%esi
    484d:	0f 84 9f 00 00 00    	je     48f2 <concreate+0x112>
    unlink(file);
    4853:	83 ec 0c             	sub    $0xc,%esp
    file[1] = '0' + i;
    4856:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    4859:	53                   	push   %ebx
    file[1] = '0' + i;
    485a:	88 45 ae             	mov    %al,-0x52(%ebp)
    unlink(file);
    485d:	e8 c1 20 00 00       	call   6923 <unlink>
    pid = fork();
    4862:	e8 64 20 00 00       	call   68cb <fork>
    if(pid && (i % 3) == 1){
    4867:	83 c4 10             	add    $0x10,%esp
    486a:	85 c0                	test   %eax,%eax
    486c:	75 a2                	jne    4810 <concreate+0x30>
      link("C0", file);
    486e:	69 f6 cd cc cc cc    	imul   $0xcccccccd,%esi,%esi
    } else if(pid == 0 && (i % 5) == 1){
    4874:	81 fe cd cc cc cc    	cmp    $0xcccccccd,%esi
    487a:	73 34                	jae    48b0 <concreate+0xd0>
      fd = open(file, O_CREATE | O_RDWR);
    487c:	83 ec 08             	sub    $0x8,%esp
    487f:	68 02 02 00 00       	push   $0x202
    4884:	53                   	push   %ebx
    4885:	e8 89 20 00 00       	call   6913 <open>
      if(fd < 0){
    488a:	83 c4 10             	add    $0x10,%esp
    488d:	85 c0                	test   %eax,%eax
    488f:	0f 89 39 02 00 00    	jns    4ace <concreate+0x2ee>
        printf(1, "concreate create %s failed\n", file);
    4895:	83 ec 04             	sub    $0x4,%esp
    4898:	53                   	push   %ebx
    4899:	68 c4 73 00 00       	push   $0x73c4
    489e:	6a 01                	push   $0x1
    48a0:	e8 8b 21 00 00       	call   6a30 <printf>
        exit();
    48a5:	e8 29 20 00 00       	call   68d3 <exit>
    48aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      link("C0", file);
    48b0:	83 ec 08             	sub    $0x8,%esp
    48b3:	53                   	push   %ebx
    48b4:	68 c1 73 00 00       	push   $0x73c1
    48b9:	e8 75 20 00 00       	call   6933 <link>
    48be:	83 c4 10             	add    $0x10,%esp
      exit();
    48c1:	e8 0d 20 00 00       	call   68d3 <exit>
    48c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    48cd:	8d 76 00             	lea    0x0(%esi),%esi
      link("C0", file);
    48d0:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 40; i++){
    48d3:	83 c6 01             	add    $0x1,%esi
      link("C0", file);
    48d6:	53                   	push   %ebx
    48d7:	68 c1 73 00 00       	push   $0x73c1
    48dc:	e8 52 20 00 00       	call   6933 <link>
    48e1:	83 c4 10             	add    $0x10,%esp
      wait();
    48e4:	e8 f2 1f 00 00       	call   68db <wait>
  for(i = 0; i < 40; i++){
    48e9:	83 fe 28             	cmp    $0x28,%esi
    48ec:	0f 85 61 ff ff ff    	jne    4853 <concreate+0x73>
  memset(fa, 0, sizeof(fa));
    48f2:	83 ec 04             	sub    $0x4,%esp
    48f5:	8d 45 c0             	lea    -0x40(%ebp),%eax
    48f8:	6a 28                	push   $0x28
    48fa:	6a 00                	push   $0x0
    48fc:	50                   	push   %eax
    48fd:	e8 3e 1e 00 00       	call   6740 <memset>
  fd = open(".", 0);
    4902:	5e                   	pop    %esi
    4903:	5f                   	pop    %edi
    4904:	6a 00                	push   $0x0
    4906:	68 ce 75 00 00       	push   $0x75ce
    490b:	8d 7d b0             	lea    -0x50(%ebp),%edi
    490e:	e8 00 20 00 00       	call   6913 <open>
  n = 0;
    4913:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  while(read(fd, &de, sizeof(de)) > 0){
    491a:	83 c4 10             	add    $0x10,%esp
  fd = open(".", 0);
    491d:	89 c6                	mov    %eax,%esi
  while(read(fd, &de, sizeof(de)) > 0){
    491f:	90                   	nop
    4920:	83 ec 04             	sub    $0x4,%esp
    4923:	6a 10                	push   $0x10
    4925:	57                   	push   %edi
    4926:	56                   	push   %esi
    4927:	e8 bf 1f 00 00       	call   68eb <read>
    492c:	83 c4 10             	add    $0x10,%esp
    492f:	85 c0                	test   %eax,%eax
    4931:	7e 3d                	jle    4970 <concreate+0x190>
    if(de.inum == 0)
    4933:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    4938:	74 e6                	je     4920 <concreate+0x140>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    493a:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    493e:	75 e0                	jne    4920 <concreate+0x140>
    4940:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    4944:	75 da                	jne    4920 <concreate+0x140>
      i = de.name[1] - '0';
    4946:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    494a:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    494d:	83 f8 27             	cmp    $0x27,%eax
    4950:	0f 87 60 01 00 00    	ja     4ab6 <concreate+0x2d6>
      if(fa[i]){
    4956:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    495b:	0f 85 3d 01 00 00    	jne    4a9e <concreate+0x2be>
      n++;
    4961:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
      fa[i] = 1;
    4965:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    496a:	eb b4                	jmp    4920 <concreate+0x140>
    496c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  close(fd);
    4970:	83 ec 0c             	sub    $0xc,%esp
    4973:	56                   	push   %esi
    4974:	e8 82 1f 00 00       	call   68fb <close>
  if(n != 40){
    4979:	83 c4 10             	add    $0x10,%esp
    497c:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    4980:	0f 85 05 01 00 00    	jne    4a8b <concreate+0x2ab>
  for(i = 0; i < 40; i++){
    4986:	31 f6                	xor    %esi,%esi
    4988:	eb 4c                	jmp    49d6 <concreate+0x1f6>
    498a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
       ((i % 3) == 1 && pid != 0)){
    4990:	85 ff                	test   %edi,%edi
    4992:	74 05                	je     4999 <concreate+0x1b9>
    4994:	83 f8 01             	cmp    $0x1,%eax
    4997:	74 6c                	je     4a05 <concreate+0x225>
      unlink(file);
    4999:	83 ec 0c             	sub    $0xc,%esp
    499c:	53                   	push   %ebx
    499d:	e8 81 1f 00 00       	call   6923 <unlink>
      unlink(file);
    49a2:	89 1c 24             	mov    %ebx,(%esp)
    49a5:	e8 79 1f 00 00       	call   6923 <unlink>
      unlink(file);
    49aa:	89 1c 24             	mov    %ebx,(%esp)
    49ad:	e8 71 1f 00 00       	call   6923 <unlink>
      unlink(file);
    49b2:	89 1c 24             	mov    %ebx,(%esp)
    49b5:	e8 69 1f 00 00       	call   6923 <unlink>
    49ba:	83 c4 10             	add    $0x10,%esp
    if(pid == 0)
    49bd:	85 ff                	test   %edi,%edi
    49bf:	0f 84 fc fe ff ff    	je     48c1 <concreate+0xe1>
      wait();
    49c5:	e8 11 1f 00 00       	call   68db <wait>
  for(i = 0; i < 40; i++){
    49ca:	83 c6 01             	add    $0x1,%esi
    49cd:	83 fe 28             	cmp    $0x28,%esi
    49d0:	0f 84 8a 00 00 00    	je     4a60 <concreate+0x280>
    file[1] = '0' + i;
    49d6:	8d 46 30             	lea    0x30(%esi),%eax
    49d9:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    49dc:	e8 ea 1e 00 00       	call   68cb <fork>
    49e1:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    49e3:	85 c0                	test   %eax,%eax
    49e5:	0f 88 8c 00 00 00    	js     4a77 <concreate+0x297>
    if(((i % 3) == 0 && pid == 0) ||
    49eb:	b8 ab aa aa aa       	mov    $0xaaaaaaab,%eax
    49f0:	f7 e6                	mul    %esi
    49f2:	89 d0                	mov    %edx,%eax
    49f4:	83 e2 fe             	and    $0xfffffffe,%edx
    49f7:	d1 e8                	shr    %eax
    49f9:	01 c2                	add    %eax,%edx
    49fb:	89 f0                	mov    %esi,%eax
    49fd:	29 d0                	sub    %edx,%eax
    49ff:	89 c1                	mov    %eax,%ecx
    4a01:	09 f9                	or     %edi,%ecx
    4a03:	75 8b                	jne    4990 <concreate+0x1b0>
      close(open(file, 0));
    4a05:	83 ec 08             	sub    $0x8,%esp
    4a08:	6a 00                	push   $0x0
    4a0a:	53                   	push   %ebx
    4a0b:	e8 03 1f 00 00       	call   6913 <open>
    4a10:	89 04 24             	mov    %eax,(%esp)
    4a13:	e8 e3 1e 00 00       	call   68fb <close>
      close(open(file, 0));
    4a18:	58                   	pop    %eax
    4a19:	5a                   	pop    %edx
    4a1a:	6a 00                	push   $0x0
    4a1c:	53                   	push   %ebx
    4a1d:	e8 f1 1e 00 00       	call   6913 <open>
    4a22:	89 04 24             	mov    %eax,(%esp)
    4a25:	e8 d1 1e 00 00       	call   68fb <close>
      close(open(file, 0));
    4a2a:	59                   	pop    %ecx
    4a2b:	58                   	pop    %eax
    4a2c:	6a 00                	push   $0x0
    4a2e:	53                   	push   %ebx
    4a2f:	e8 df 1e 00 00       	call   6913 <open>
    4a34:	89 04 24             	mov    %eax,(%esp)
    4a37:	e8 bf 1e 00 00       	call   68fb <close>
      close(open(file, 0));
    4a3c:	58                   	pop    %eax
    4a3d:	5a                   	pop    %edx
    4a3e:	6a 00                	push   $0x0
    4a40:	53                   	push   %ebx
    4a41:	e8 cd 1e 00 00       	call   6913 <open>
    4a46:	89 04 24             	mov    %eax,(%esp)
    4a49:	e8 ad 1e 00 00       	call   68fb <close>
    4a4e:	83 c4 10             	add    $0x10,%esp
    4a51:	e9 67 ff ff ff       	jmp    49bd <concreate+0x1dd>
    4a56:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4a5d:	8d 76 00             	lea    0x0(%esi),%esi
  printf(1, "concreate ok\n");
    4a60:	83 ec 08             	sub    $0x8,%esp
    4a63:	68 16 74 00 00       	push   $0x7416
    4a68:	6a 01                	push   $0x1
    4a6a:	e8 c1 1f 00 00       	call   6a30 <printf>
}
    4a6f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4a72:	5b                   	pop    %ebx
    4a73:	5e                   	pop    %esi
    4a74:	5f                   	pop    %edi
    4a75:	5d                   	pop    %ebp
    4a76:	c3                   	ret    
      printf(1, "fork failed\n");
    4a77:	83 ec 08             	sub    $0x8,%esp
    4a7a:	68 99 7c 00 00       	push   $0x7c99
    4a7f:	6a 01                	push   $0x1
    4a81:	e8 aa 1f 00 00       	call   6a30 <printf>
      exit();
    4a86:	e8 48 1e 00 00       	call   68d3 <exit>
    printf(1, "concreate not enough files in directory listing\n");
    4a8b:	51                   	push   %ecx
    4a8c:	51                   	push   %ecx
    4a8d:	68 60 7f 00 00       	push   $0x7f60
    4a92:	6a 01                	push   $0x1
    4a94:	e8 97 1f 00 00       	call   6a30 <printf>
    exit();
    4a99:	e8 35 1e 00 00       	call   68d3 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    4a9e:	83 ec 04             	sub    $0x4,%esp
    4aa1:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    4aa4:	50                   	push   %eax
    4aa5:	68 f9 73 00 00       	push   $0x73f9
    4aaa:	6a 01                	push   $0x1
    4aac:	e8 7f 1f 00 00       	call   6a30 <printf>
        exit();
    4ab1:	e8 1d 1e 00 00       	call   68d3 <exit>
        printf(1, "concreate weird file %s\n", de.name);
    4ab6:	83 ec 04             	sub    $0x4,%esp
    4ab9:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    4abc:	50                   	push   %eax
    4abd:	68 e0 73 00 00       	push   $0x73e0
    4ac2:	6a 01                	push   $0x1
    4ac4:	e8 67 1f 00 00       	call   6a30 <printf>
        exit();
    4ac9:	e8 05 1e 00 00       	call   68d3 <exit>
      close(fd);
    4ace:	83 ec 0c             	sub    $0xc,%esp
    4ad1:	50                   	push   %eax
    4ad2:	e8 24 1e 00 00       	call   68fb <close>
    4ad7:	83 c4 10             	add    $0x10,%esp
    4ada:	e9 e2 fd ff ff       	jmp    48c1 <concreate+0xe1>
    4adf:	90                   	nop

00004ae0 <linkunlink>:
{
    4ae0:	55                   	push   %ebp
    4ae1:	89 e5                	mov    %esp,%ebp
    4ae3:	57                   	push   %edi
    4ae4:	56                   	push   %esi
    4ae5:	53                   	push   %ebx
    4ae6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "linkunlink test\n");
    4ae9:	68 24 74 00 00       	push   $0x7424
    4aee:	6a 01                	push   $0x1
    4af0:	e8 3b 1f 00 00       	call   6a30 <printf>
  unlink("x");
    4af5:	c7 04 24 b1 76 00 00 	movl   $0x76b1,(%esp)
    4afc:	e8 22 1e 00 00       	call   6923 <unlink>
  pid = fork();
    4b01:	e8 c5 1d 00 00       	call   68cb <fork>
  if(pid < 0){
    4b06:	83 c4 10             	add    $0x10,%esp
  pid = fork();
    4b09:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    4b0c:	85 c0                	test   %eax,%eax
    4b0e:	0f 88 b6 00 00 00    	js     4bca <linkunlink+0xea>
  unsigned int x = (pid ? 1 : 97);
    4b14:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    4b18:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    4b1d:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    4b22:	19 ff                	sbb    %edi,%edi
    4b24:	83 e7 60             	and    $0x60,%edi
    4b27:	83 c7 01             	add    $0x1,%edi
    4b2a:	eb 1e                	jmp    4b4a <linkunlink+0x6a>
    4b2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    4b30:	83 f8 01             	cmp    $0x1,%eax
    4b33:	74 7b                	je     4bb0 <linkunlink+0xd0>
      unlink("x");
    4b35:	83 ec 0c             	sub    $0xc,%esp
    4b38:	68 b1 76 00 00       	push   $0x76b1
    4b3d:	e8 e1 1d 00 00       	call   6923 <unlink>
    4b42:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    4b45:	83 eb 01             	sub    $0x1,%ebx
    4b48:	74 41                	je     4b8b <linkunlink+0xab>
    x = x * 1103515245 + 12345;
    4b4a:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    4b50:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    4b56:	89 f8                	mov    %edi,%eax
    4b58:	f7 e6                	mul    %esi
    4b5a:	89 d0                	mov    %edx,%eax
    4b5c:	83 e2 fe             	and    $0xfffffffe,%edx
    4b5f:	d1 e8                	shr    %eax
    4b61:	01 c2                	add    %eax,%edx
    4b63:	89 f8                	mov    %edi,%eax
    4b65:	29 d0                	sub    %edx,%eax
    4b67:	75 c7                	jne    4b30 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    4b69:	83 ec 08             	sub    $0x8,%esp
    4b6c:	68 02 02 00 00       	push   $0x202
    4b71:	68 b1 76 00 00       	push   $0x76b1
    4b76:	e8 98 1d 00 00       	call   6913 <open>
    4b7b:	89 04 24             	mov    %eax,(%esp)
    4b7e:	e8 78 1d 00 00       	call   68fb <close>
    4b83:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    4b86:	83 eb 01             	sub    $0x1,%ebx
    4b89:	75 bf                	jne    4b4a <linkunlink+0x6a>
  if(pid)
    4b8b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4b8e:	85 c0                	test   %eax,%eax
    4b90:	74 4b                	je     4bdd <linkunlink+0xfd>
    wait();
    4b92:	e8 44 1d 00 00       	call   68db <wait>
  printf(1, "linkunlink ok\n");
    4b97:	83 ec 08             	sub    $0x8,%esp
    4b9a:	68 39 74 00 00       	push   $0x7439
    4b9f:	6a 01                	push   $0x1
    4ba1:	e8 8a 1e 00 00       	call   6a30 <printf>
}
    4ba6:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4ba9:	5b                   	pop    %ebx
    4baa:	5e                   	pop    %esi
    4bab:	5f                   	pop    %edi
    4bac:	5d                   	pop    %ebp
    4bad:	c3                   	ret    
    4bae:	66 90                	xchg   %ax,%ax
      link("cat", "x");
    4bb0:	83 ec 08             	sub    $0x8,%esp
    4bb3:	68 b1 76 00 00       	push   $0x76b1
    4bb8:	68 35 74 00 00       	push   $0x7435
    4bbd:	e8 71 1d 00 00       	call   6933 <link>
    4bc2:	83 c4 10             	add    $0x10,%esp
    4bc5:	e9 7b ff ff ff       	jmp    4b45 <linkunlink+0x65>
    printf(1, "fork failed\n");
    4bca:	52                   	push   %edx
    4bcb:	52                   	push   %edx
    4bcc:	68 99 7c 00 00       	push   $0x7c99
    4bd1:	6a 01                	push   $0x1
    4bd3:	e8 58 1e 00 00       	call   6a30 <printf>
    exit();
    4bd8:	e8 f6 1c 00 00       	call   68d3 <exit>
    exit();
    4bdd:	e8 f1 1c 00 00       	call   68d3 <exit>
    4be2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4be9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00004bf0 <bigdir>:
{
    4bf0:	55                   	push   %ebp
    4bf1:	89 e5                	mov    %esp,%ebp
    4bf3:	57                   	push   %edi
    4bf4:	56                   	push   %esi
    4bf5:	53                   	push   %ebx
    4bf6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "bigdir test\n");
    4bf9:	68 48 74 00 00       	push   $0x7448
    4bfe:	6a 01                	push   $0x1
    4c00:	e8 2b 1e 00 00       	call   6a30 <printf>
  unlink("bd");
    4c05:	c7 04 24 55 74 00 00 	movl   $0x7455,(%esp)
    4c0c:	e8 12 1d 00 00       	call   6923 <unlink>
  fd = open("bd", O_CREATE);
    4c11:	5a                   	pop    %edx
    4c12:	59                   	pop    %ecx
    4c13:	68 00 02 00 00       	push   $0x200
    4c18:	68 55 74 00 00       	push   $0x7455
    4c1d:	e8 f1 1c 00 00       	call   6913 <open>
  if(fd < 0){
    4c22:	83 c4 10             	add    $0x10,%esp
    4c25:	85 c0                	test   %eax,%eax
    4c27:	0f 88 de 00 00 00    	js     4d0b <bigdir+0x11b>
  close(fd);
    4c2d:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 500; i++){
    4c30:	31 f6                	xor    %esi,%esi
    4c32:	8d 7d de             	lea    -0x22(%ebp),%edi
  close(fd);
    4c35:	50                   	push   %eax
    4c36:	e8 c0 1c 00 00       	call   68fb <close>
    4c3b:	83 c4 10             	add    $0x10,%esp
    4c3e:	66 90                	xchg   %ax,%ax
    name[1] = '0' + (i / 64);
    4c40:	89 f0                	mov    %esi,%eax
    if(link("bd", name) != 0){
    4c42:	83 ec 08             	sub    $0x8,%esp
    name[0] = 'x';
    4c45:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    4c49:	c1 f8 06             	sar    $0x6,%eax
    if(link("bd", name) != 0){
    4c4c:	57                   	push   %edi
    name[1] = '0' + (i / 64);
    4c4d:	83 c0 30             	add    $0x30,%eax
    if(link("bd", name) != 0){
    4c50:	68 55 74 00 00       	push   $0x7455
    name[1] = '0' + (i / 64);
    4c55:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    4c58:	89 f0                	mov    %esi,%eax
    4c5a:	83 e0 3f             	and    $0x3f,%eax
    name[3] = '\0';
    4c5d:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[2] = '0' + (i % 64);
    4c61:	83 c0 30             	add    $0x30,%eax
    4c64:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(link("bd", name) != 0){
    4c67:	e8 c7 1c 00 00       	call   6933 <link>
    4c6c:	83 c4 10             	add    $0x10,%esp
    4c6f:	89 c3                	mov    %eax,%ebx
    4c71:	85 c0                	test   %eax,%eax
    4c73:	75 6e                	jne    4ce3 <bigdir+0xf3>
  for(i = 0; i < 500; i++){
    4c75:	83 c6 01             	add    $0x1,%esi
    4c78:	81 fe f4 01 00 00    	cmp    $0x1f4,%esi
    4c7e:	75 c0                	jne    4c40 <bigdir+0x50>
  unlink("bd");
    4c80:	83 ec 0c             	sub    $0xc,%esp
    4c83:	68 55 74 00 00       	push   $0x7455
    4c88:	e8 96 1c 00 00       	call   6923 <unlink>
    4c8d:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + (i / 64);
    4c90:	89 d8                	mov    %ebx,%eax
    if(unlink(name) != 0){
    4c92:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'x';
    4c95:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    4c99:	c1 f8 06             	sar    $0x6,%eax
    if(unlink(name) != 0){
    4c9c:	57                   	push   %edi
    name[1] = '0' + (i / 64);
    4c9d:	83 c0 30             	add    $0x30,%eax
    name[3] = '\0';
    4ca0:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    4ca4:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    4ca7:	89 d8                	mov    %ebx,%eax
    4ca9:	83 e0 3f             	and    $0x3f,%eax
    4cac:	83 c0 30             	add    $0x30,%eax
    4caf:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(unlink(name) != 0){
    4cb2:	e8 6c 1c 00 00       	call   6923 <unlink>
    4cb7:	83 c4 10             	add    $0x10,%esp
    4cba:	85 c0                	test   %eax,%eax
    4cbc:	75 39                	jne    4cf7 <bigdir+0x107>
  for(i = 0; i < 500; i++){
    4cbe:	83 c3 01             	add    $0x1,%ebx
    4cc1:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    4cc7:	75 c7                	jne    4c90 <bigdir+0xa0>
  printf(1, "bigdir ok\n");
    4cc9:	83 ec 08             	sub    $0x8,%esp
    4ccc:	68 97 74 00 00       	push   $0x7497
    4cd1:	6a 01                	push   $0x1
    4cd3:	e8 58 1d 00 00       	call   6a30 <printf>
    4cd8:	83 c4 10             	add    $0x10,%esp
}
    4cdb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4cde:	5b                   	pop    %ebx
    4cdf:	5e                   	pop    %esi
    4ce0:	5f                   	pop    %edi
    4ce1:	5d                   	pop    %ebp
    4ce2:	c3                   	ret    
      printf(1, "bigdir link failed\n");
    4ce3:	83 ec 08             	sub    $0x8,%esp
    4ce6:	68 6e 74 00 00       	push   $0x746e
    4ceb:	6a 01                	push   $0x1
    4ced:	e8 3e 1d 00 00       	call   6a30 <printf>
      exit();
    4cf2:	e8 dc 1b 00 00       	call   68d3 <exit>
      printf(1, "bigdir unlink failed");
    4cf7:	83 ec 08             	sub    $0x8,%esp
    4cfa:	68 82 74 00 00       	push   $0x7482
    4cff:	6a 01                	push   $0x1
    4d01:	e8 2a 1d 00 00       	call   6a30 <printf>
      exit();
    4d06:	e8 c8 1b 00 00       	call   68d3 <exit>
    printf(1, "bigdir create failed\n");
    4d0b:	50                   	push   %eax
    4d0c:	50                   	push   %eax
    4d0d:	68 58 74 00 00       	push   $0x7458
    4d12:	6a 01                	push   $0x1
    4d14:	e8 17 1d 00 00       	call   6a30 <printf>
    exit();
    4d19:	e8 b5 1b 00 00       	call   68d3 <exit>
    4d1e:	66 90                	xchg   %ax,%ax

00004d20 <subdir>:
{
    4d20:	55                   	push   %ebp
    4d21:	89 e5                	mov    %esp,%ebp
    4d23:	53                   	push   %ebx
    4d24:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "subdir test\n");
    4d27:	68 a2 74 00 00       	push   $0x74a2
    4d2c:	6a 01                	push   $0x1
    4d2e:	e8 fd 1c 00 00       	call   6a30 <printf>
  unlink("ff");
    4d33:	c7 04 24 2b 75 00 00 	movl   $0x752b,(%esp)
    4d3a:	e8 e4 1b 00 00       	call   6923 <unlink>
  if(mkdir("dd") != 0){
    4d3f:	c7 04 24 c8 75 00 00 	movl   $0x75c8,(%esp)
    4d46:	e8 f0 1b 00 00       	call   693b <mkdir>
    4d4b:	83 c4 10             	add    $0x10,%esp
    4d4e:	85 c0                	test   %eax,%eax
    4d50:	0f 85 b3 05 00 00    	jne    5309 <subdir+0x5e9>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    4d56:	83 ec 08             	sub    $0x8,%esp
    4d59:	68 02 02 00 00       	push   $0x202
    4d5e:	68 01 75 00 00       	push   $0x7501
    4d63:	e8 ab 1b 00 00       	call   6913 <open>
  if(fd < 0){
    4d68:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/ff", O_CREATE | O_RDWR);
    4d6b:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    4d6d:	85 c0                	test   %eax,%eax
    4d6f:	0f 88 81 05 00 00    	js     52f6 <subdir+0x5d6>
  write(fd, "ff", 2);
    4d75:	83 ec 04             	sub    $0x4,%esp
    4d78:	6a 02                	push   $0x2
    4d7a:	68 2b 75 00 00       	push   $0x752b
    4d7f:	50                   	push   %eax
    4d80:	e8 6e 1b 00 00       	call   68f3 <write>
  close(fd);
    4d85:	89 1c 24             	mov    %ebx,(%esp)
    4d88:	e8 6e 1b 00 00       	call   68fb <close>
  if(unlink("dd") >= 0){
    4d8d:	c7 04 24 c8 75 00 00 	movl   $0x75c8,(%esp)
    4d94:	e8 8a 1b 00 00       	call   6923 <unlink>
    4d99:	83 c4 10             	add    $0x10,%esp
    4d9c:	85 c0                	test   %eax,%eax
    4d9e:	0f 89 3f 05 00 00    	jns    52e3 <subdir+0x5c3>
  if(mkdir("/dd/dd") != 0){
    4da4:	83 ec 0c             	sub    $0xc,%esp
    4da7:	68 dc 74 00 00       	push   $0x74dc
    4dac:	e8 8a 1b 00 00       	call   693b <mkdir>
    4db1:	83 c4 10             	add    $0x10,%esp
    4db4:	85 c0                	test   %eax,%eax
    4db6:	0f 85 14 05 00 00    	jne    52d0 <subdir+0x5b0>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    4dbc:	83 ec 08             	sub    $0x8,%esp
    4dbf:	68 02 02 00 00       	push   $0x202
    4dc4:	68 fe 74 00 00       	push   $0x74fe
    4dc9:	e8 45 1b 00 00       	call   6913 <open>
  if(fd < 0){
    4dce:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    4dd1:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    4dd3:	85 c0                	test   %eax,%eax
    4dd5:	0f 88 24 04 00 00    	js     51ff <subdir+0x4df>
  write(fd, "FF", 2);
    4ddb:	83 ec 04             	sub    $0x4,%esp
    4dde:	6a 02                	push   $0x2
    4de0:	68 1f 75 00 00       	push   $0x751f
    4de5:	50                   	push   %eax
    4de6:	e8 08 1b 00 00       	call   68f3 <write>
  close(fd);
    4deb:	89 1c 24             	mov    %ebx,(%esp)
    4dee:	e8 08 1b 00 00       	call   68fb <close>
  fd = open("dd/dd/../ff", 0);
    4df3:	58                   	pop    %eax
    4df4:	5a                   	pop    %edx
    4df5:	6a 00                	push   $0x0
    4df7:	68 22 75 00 00       	push   $0x7522
    4dfc:	e8 12 1b 00 00       	call   6913 <open>
  if(fd < 0){
    4e01:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/../ff", 0);
    4e04:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    4e06:	85 c0                	test   %eax,%eax
    4e08:	0f 88 de 03 00 00    	js     51ec <subdir+0x4cc>
  cc = read(fd, buf, sizeof(buf));
    4e0e:	83 ec 04             	sub    $0x4,%esp
    4e11:	68 00 20 00 00       	push   $0x2000
    4e16:	68 80 b5 00 00       	push   $0xb580
    4e1b:	50                   	push   %eax
    4e1c:	e8 ca 1a 00 00       	call   68eb <read>
  if(cc != 2 || buf[0] != 'f'){
    4e21:	83 c4 10             	add    $0x10,%esp
    4e24:	83 f8 02             	cmp    $0x2,%eax
    4e27:	0f 85 3a 03 00 00    	jne    5167 <subdir+0x447>
    4e2d:	80 3d 80 b5 00 00 66 	cmpb   $0x66,0xb580
    4e34:	0f 85 2d 03 00 00    	jne    5167 <subdir+0x447>
  close(fd);
    4e3a:	83 ec 0c             	sub    $0xc,%esp
    4e3d:	53                   	push   %ebx
    4e3e:	e8 b8 1a 00 00       	call   68fb <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    4e43:	59                   	pop    %ecx
    4e44:	5b                   	pop    %ebx
    4e45:	68 62 75 00 00       	push   $0x7562
    4e4a:	68 fe 74 00 00       	push   $0x74fe
    4e4f:	e8 df 1a 00 00       	call   6933 <link>
    4e54:	83 c4 10             	add    $0x10,%esp
    4e57:	85 c0                	test   %eax,%eax
    4e59:	0f 85 c6 03 00 00    	jne    5225 <subdir+0x505>
  if(unlink("dd/dd/ff") != 0){
    4e5f:	83 ec 0c             	sub    $0xc,%esp
    4e62:	68 fe 74 00 00       	push   $0x74fe
    4e67:	e8 b7 1a 00 00       	call   6923 <unlink>
    4e6c:	83 c4 10             	add    $0x10,%esp
    4e6f:	85 c0                	test   %eax,%eax
    4e71:	0f 85 16 03 00 00    	jne    518d <subdir+0x46d>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    4e77:	83 ec 08             	sub    $0x8,%esp
    4e7a:	6a 00                	push   $0x0
    4e7c:	68 fe 74 00 00       	push   $0x74fe
    4e81:	e8 8d 1a 00 00       	call   6913 <open>
    4e86:	83 c4 10             	add    $0x10,%esp
    4e89:	85 c0                	test   %eax,%eax
    4e8b:	0f 89 2c 04 00 00    	jns    52bd <subdir+0x59d>
  if(chdir("dd") != 0){
    4e91:	83 ec 0c             	sub    $0xc,%esp
    4e94:	68 c8 75 00 00       	push   $0x75c8
    4e99:	e8 a5 1a 00 00       	call   6943 <chdir>
    4e9e:	83 c4 10             	add    $0x10,%esp
    4ea1:	85 c0                	test   %eax,%eax
    4ea3:	0f 85 01 04 00 00    	jne    52aa <subdir+0x58a>
  if(chdir("dd/../../dd") != 0){
    4ea9:	83 ec 0c             	sub    $0xc,%esp
    4eac:	68 96 75 00 00       	push   $0x7596
    4eb1:	e8 8d 1a 00 00       	call   6943 <chdir>
    4eb6:	83 c4 10             	add    $0x10,%esp
    4eb9:	85 c0                	test   %eax,%eax
    4ebb:	0f 85 b9 02 00 00    	jne    517a <subdir+0x45a>
  if(chdir("dd/../../../dd") != 0){
    4ec1:	83 ec 0c             	sub    $0xc,%esp
    4ec4:	68 bc 75 00 00       	push   $0x75bc
    4ec9:	e8 75 1a 00 00       	call   6943 <chdir>
    4ece:	83 c4 10             	add    $0x10,%esp
    4ed1:	85 c0                	test   %eax,%eax
    4ed3:	0f 85 a1 02 00 00    	jne    517a <subdir+0x45a>
  if(chdir("./..") != 0){
    4ed9:	83 ec 0c             	sub    $0xc,%esp
    4edc:	68 cb 75 00 00       	push   $0x75cb
    4ee1:	e8 5d 1a 00 00       	call   6943 <chdir>
    4ee6:	83 c4 10             	add    $0x10,%esp
    4ee9:	85 c0                	test   %eax,%eax
    4eeb:	0f 85 21 03 00 00    	jne    5212 <subdir+0x4f2>
  fd = open("dd/dd/ffff", 0);
    4ef1:	83 ec 08             	sub    $0x8,%esp
    4ef4:	6a 00                	push   $0x0
    4ef6:	68 62 75 00 00       	push   $0x7562
    4efb:	e8 13 1a 00 00       	call   6913 <open>
  if(fd < 0){
    4f00:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ffff", 0);
    4f03:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    4f05:	85 c0                	test   %eax,%eax
    4f07:	0f 88 e0 04 00 00    	js     53ed <subdir+0x6cd>
  if(read(fd, buf, sizeof(buf)) != 2){
    4f0d:	83 ec 04             	sub    $0x4,%esp
    4f10:	68 00 20 00 00       	push   $0x2000
    4f15:	68 80 b5 00 00       	push   $0xb580
    4f1a:	50                   	push   %eax
    4f1b:	e8 cb 19 00 00       	call   68eb <read>
    4f20:	83 c4 10             	add    $0x10,%esp
    4f23:	83 f8 02             	cmp    $0x2,%eax
    4f26:	0f 85 ae 04 00 00    	jne    53da <subdir+0x6ba>
  close(fd);
    4f2c:	83 ec 0c             	sub    $0xc,%esp
    4f2f:	53                   	push   %ebx
    4f30:	e8 c6 19 00 00       	call   68fb <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    4f35:	58                   	pop    %eax
    4f36:	5a                   	pop    %edx
    4f37:	6a 00                	push   $0x0
    4f39:	68 fe 74 00 00       	push   $0x74fe
    4f3e:	e8 d0 19 00 00       	call   6913 <open>
    4f43:	83 c4 10             	add    $0x10,%esp
    4f46:	85 c0                	test   %eax,%eax
    4f48:	0f 89 65 02 00 00    	jns    51b3 <subdir+0x493>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    4f4e:	83 ec 08             	sub    $0x8,%esp
    4f51:	68 02 02 00 00       	push   $0x202
    4f56:	68 16 76 00 00       	push   $0x7616
    4f5b:	e8 b3 19 00 00       	call   6913 <open>
    4f60:	83 c4 10             	add    $0x10,%esp
    4f63:	85 c0                	test   %eax,%eax
    4f65:	0f 89 35 02 00 00    	jns    51a0 <subdir+0x480>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    4f6b:	83 ec 08             	sub    $0x8,%esp
    4f6e:	68 02 02 00 00       	push   $0x202
    4f73:	68 3b 76 00 00       	push   $0x763b
    4f78:	e8 96 19 00 00       	call   6913 <open>
    4f7d:	83 c4 10             	add    $0x10,%esp
    4f80:	85 c0                	test   %eax,%eax
    4f82:	0f 89 0f 03 00 00    	jns    5297 <subdir+0x577>
  if(open("dd", O_CREATE) >= 0){
    4f88:	83 ec 08             	sub    $0x8,%esp
    4f8b:	68 00 02 00 00       	push   $0x200
    4f90:	68 c8 75 00 00       	push   $0x75c8
    4f95:	e8 79 19 00 00       	call   6913 <open>
    4f9a:	83 c4 10             	add    $0x10,%esp
    4f9d:	85 c0                	test   %eax,%eax
    4f9f:	0f 89 df 02 00 00    	jns    5284 <subdir+0x564>
  if(open("dd", O_RDWR) >= 0){
    4fa5:	83 ec 08             	sub    $0x8,%esp
    4fa8:	6a 02                	push   $0x2
    4faa:	68 c8 75 00 00       	push   $0x75c8
    4faf:	e8 5f 19 00 00       	call   6913 <open>
    4fb4:	83 c4 10             	add    $0x10,%esp
    4fb7:	85 c0                	test   %eax,%eax
    4fb9:	0f 89 b2 02 00 00    	jns    5271 <subdir+0x551>
  if(open("dd", O_WRONLY) >= 0){
    4fbf:	83 ec 08             	sub    $0x8,%esp
    4fc2:	6a 01                	push   $0x1
    4fc4:	68 c8 75 00 00       	push   $0x75c8
    4fc9:	e8 45 19 00 00       	call   6913 <open>
    4fce:	83 c4 10             	add    $0x10,%esp
    4fd1:	85 c0                	test   %eax,%eax
    4fd3:	0f 89 85 02 00 00    	jns    525e <subdir+0x53e>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    4fd9:	83 ec 08             	sub    $0x8,%esp
    4fdc:	68 aa 76 00 00       	push   $0x76aa
    4fe1:	68 16 76 00 00       	push   $0x7616
    4fe6:	e8 48 19 00 00       	call   6933 <link>
    4feb:	83 c4 10             	add    $0x10,%esp
    4fee:	85 c0                	test   %eax,%eax
    4ff0:	0f 84 55 02 00 00    	je     524b <subdir+0x52b>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    4ff6:	83 ec 08             	sub    $0x8,%esp
    4ff9:	68 aa 76 00 00       	push   $0x76aa
    4ffe:	68 3b 76 00 00       	push   $0x763b
    5003:	e8 2b 19 00 00       	call   6933 <link>
    5008:	83 c4 10             	add    $0x10,%esp
    500b:	85 c0                	test   %eax,%eax
    500d:	0f 84 25 02 00 00    	je     5238 <subdir+0x518>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    5013:	83 ec 08             	sub    $0x8,%esp
    5016:	68 62 75 00 00       	push   $0x7562
    501b:	68 01 75 00 00       	push   $0x7501
    5020:	e8 0e 19 00 00       	call   6933 <link>
    5025:	83 c4 10             	add    $0x10,%esp
    5028:	85 c0                	test   %eax,%eax
    502a:	0f 84 a9 01 00 00    	je     51d9 <subdir+0x4b9>
  if(mkdir("dd/ff/ff") == 0){
    5030:	83 ec 0c             	sub    $0xc,%esp
    5033:	68 16 76 00 00       	push   $0x7616
    5038:	e8 fe 18 00 00       	call   693b <mkdir>
    503d:	83 c4 10             	add    $0x10,%esp
    5040:	85 c0                	test   %eax,%eax
    5042:	0f 84 7e 01 00 00    	je     51c6 <subdir+0x4a6>
  if(mkdir("dd/xx/ff") == 0){
    5048:	83 ec 0c             	sub    $0xc,%esp
    504b:	68 3b 76 00 00       	push   $0x763b
    5050:	e8 e6 18 00 00       	call   693b <mkdir>
    5055:	83 c4 10             	add    $0x10,%esp
    5058:	85 c0                	test   %eax,%eax
    505a:	0f 84 67 03 00 00    	je     53c7 <subdir+0x6a7>
  if(mkdir("dd/dd/ffff") == 0){
    5060:	83 ec 0c             	sub    $0xc,%esp
    5063:	68 62 75 00 00       	push   $0x7562
    5068:	e8 ce 18 00 00       	call   693b <mkdir>
    506d:	83 c4 10             	add    $0x10,%esp
    5070:	85 c0                	test   %eax,%eax
    5072:	0f 84 3c 03 00 00    	je     53b4 <subdir+0x694>
  if(unlink("dd/xx/ff") == 0){
    5078:	83 ec 0c             	sub    $0xc,%esp
    507b:	68 3b 76 00 00       	push   $0x763b
    5080:	e8 9e 18 00 00       	call   6923 <unlink>
    5085:	83 c4 10             	add    $0x10,%esp
    5088:	85 c0                	test   %eax,%eax
    508a:	0f 84 11 03 00 00    	je     53a1 <subdir+0x681>
  if(unlink("dd/ff/ff") == 0){
    5090:	83 ec 0c             	sub    $0xc,%esp
    5093:	68 16 76 00 00       	push   $0x7616
    5098:	e8 86 18 00 00       	call   6923 <unlink>
    509d:	83 c4 10             	add    $0x10,%esp
    50a0:	85 c0                	test   %eax,%eax
    50a2:	0f 84 e6 02 00 00    	je     538e <subdir+0x66e>
  if(chdir("dd/ff") == 0){
    50a8:	83 ec 0c             	sub    $0xc,%esp
    50ab:	68 01 75 00 00       	push   $0x7501
    50b0:	e8 8e 18 00 00       	call   6943 <chdir>
    50b5:	83 c4 10             	add    $0x10,%esp
    50b8:	85 c0                	test   %eax,%eax
    50ba:	0f 84 bb 02 00 00    	je     537b <subdir+0x65b>
  if(chdir("dd/xx") == 0){
    50c0:	83 ec 0c             	sub    $0xc,%esp
    50c3:	68 ad 76 00 00       	push   $0x76ad
    50c8:	e8 76 18 00 00       	call   6943 <chdir>
    50cd:	83 c4 10             	add    $0x10,%esp
    50d0:	85 c0                	test   %eax,%eax
    50d2:	0f 84 90 02 00 00    	je     5368 <subdir+0x648>
  if(unlink("dd/dd/ffff") != 0){
    50d8:	83 ec 0c             	sub    $0xc,%esp
    50db:	68 62 75 00 00       	push   $0x7562
    50e0:	e8 3e 18 00 00       	call   6923 <unlink>
    50e5:	83 c4 10             	add    $0x10,%esp
    50e8:	85 c0                	test   %eax,%eax
    50ea:	0f 85 9d 00 00 00    	jne    518d <subdir+0x46d>
  if(unlink("dd/ff") != 0){
    50f0:	83 ec 0c             	sub    $0xc,%esp
    50f3:	68 01 75 00 00       	push   $0x7501
    50f8:	e8 26 18 00 00       	call   6923 <unlink>
    50fd:	83 c4 10             	add    $0x10,%esp
    5100:	85 c0                	test   %eax,%eax
    5102:	0f 85 4d 02 00 00    	jne    5355 <subdir+0x635>
  if(unlink("dd") == 0){
    5108:	83 ec 0c             	sub    $0xc,%esp
    510b:	68 c8 75 00 00       	push   $0x75c8
    5110:	e8 0e 18 00 00       	call   6923 <unlink>
    5115:	83 c4 10             	add    $0x10,%esp
    5118:	85 c0                	test   %eax,%eax
    511a:	0f 84 22 02 00 00    	je     5342 <subdir+0x622>
  if(unlink("dd/dd") < 0){
    5120:	83 ec 0c             	sub    $0xc,%esp
    5123:	68 dd 74 00 00       	push   $0x74dd
    5128:	e8 f6 17 00 00       	call   6923 <unlink>
    512d:	83 c4 10             	add    $0x10,%esp
    5130:	85 c0                	test   %eax,%eax
    5132:	0f 88 f7 01 00 00    	js     532f <subdir+0x60f>
  if(unlink("dd") < 0){
    5138:	83 ec 0c             	sub    $0xc,%esp
    513b:	68 c8 75 00 00       	push   $0x75c8
    5140:	e8 de 17 00 00       	call   6923 <unlink>
    5145:	83 c4 10             	add    $0x10,%esp
    5148:	85 c0                	test   %eax,%eax
    514a:	0f 88 cc 01 00 00    	js     531c <subdir+0x5fc>
  printf(1, "subdir ok\n");
    5150:	83 ec 08             	sub    $0x8,%esp
    5153:	68 aa 77 00 00       	push   $0x77aa
    5158:	6a 01                	push   $0x1
    515a:	e8 d1 18 00 00       	call   6a30 <printf>
}
    515f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    5162:	83 c4 10             	add    $0x10,%esp
    5165:	c9                   	leave  
    5166:	c3                   	ret    
    printf(1, "dd/dd/../ff wrong content\n");
    5167:	50                   	push   %eax
    5168:	50                   	push   %eax
    5169:	68 47 75 00 00       	push   $0x7547
    516e:	6a 01                	push   $0x1
    5170:	e8 bb 18 00 00       	call   6a30 <printf>
    exit();
    5175:	e8 59 17 00 00       	call   68d3 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    517a:	50                   	push   %eax
    517b:	50                   	push   %eax
    517c:	68 a2 75 00 00       	push   $0x75a2
    5181:	6a 01                	push   $0x1
    5183:	e8 a8 18 00 00       	call   6a30 <printf>
    exit();
    5188:	e8 46 17 00 00       	call   68d3 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    518d:	50                   	push   %eax
    518e:	50                   	push   %eax
    518f:	68 6d 75 00 00       	push   $0x756d
    5194:	6a 01                	push   $0x1
    5196:	e8 95 18 00 00       	call   6a30 <printf>
    exit();
    519b:	e8 33 17 00 00       	call   68d3 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    51a0:	51                   	push   %ecx
    51a1:	51                   	push   %ecx
    51a2:	68 1f 76 00 00       	push   $0x761f
    51a7:	6a 01                	push   $0x1
    51a9:	e8 82 18 00 00       	call   6a30 <printf>
    exit();
    51ae:	e8 20 17 00 00       	call   68d3 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    51b3:	53                   	push   %ebx
    51b4:	53                   	push   %ebx
    51b5:	68 04 80 00 00       	push   $0x8004
    51ba:	6a 01                	push   $0x1
    51bc:	e8 6f 18 00 00       	call   6a30 <printf>
    exit();
    51c1:	e8 0d 17 00 00       	call   68d3 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    51c6:	51                   	push   %ecx
    51c7:	51                   	push   %ecx
    51c8:	68 b3 76 00 00       	push   $0x76b3
    51cd:	6a 01                	push   $0x1
    51cf:	e8 5c 18 00 00       	call   6a30 <printf>
    exit();
    51d4:	e8 fa 16 00 00       	call   68d3 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    51d9:	53                   	push   %ebx
    51da:	53                   	push   %ebx
    51db:	68 74 80 00 00       	push   $0x8074
    51e0:	6a 01                	push   $0x1
    51e2:	e8 49 18 00 00       	call   6a30 <printf>
    exit();
    51e7:	e8 e7 16 00 00       	call   68d3 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    51ec:	50                   	push   %eax
    51ed:	50                   	push   %eax
    51ee:	68 2e 75 00 00       	push   $0x752e
    51f3:	6a 01                	push   $0x1
    51f5:	e8 36 18 00 00       	call   6a30 <printf>
    exit();
    51fa:	e8 d4 16 00 00       	call   68d3 <exit>
    printf(1, "create dd/dd/ff failed\n");
    51ff:	51                   	push   %ecx
    5200:	51                   	push   %ecx
    5201:	68 07 75 00 00       	push   $0x7507
    5206:	6a 01                	push   $0x1
    5208:	e8 23 18 00 00       	call   6a30 <printf>
    exit();
    520d:	e8 c1 16 00 00       	call   68d3 <exit>
    printf(1, "chdir ./.. failed\n");
    5212:	50                   	push   %eax
    5213:	50                   	push   %eax
    5214:	68 d0 75 00 00       	push   $0x75d0
    5219:	6a 01                	push   $0x1
    521b:	e8 10 18 00 00       	call   6a30 <printf>
    exit();
    5220:	e8 ae 16 00 00       	call   68d3 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    5225:	52                   	push   %edx
    5226:	52                   	push   %edx
    5227:	68 bc 7f 00 00       	push   $0x7fbc
    522c:	6a 01                	push   $0x1
    522e:	e8 fd 17 00 00       	call   6a30 <printf>
    exit();
    5233:	e8 9b 16 00 00       	call   68d3 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    5238:	50                   	push   %eax
    5239:	50                   	push   %eax
    523a:	68 50 80 00 00       	push   $0x8050
    523f:	6a 01                	push   $0x1
    5241:	e8 ea 17 00 00       	call   6a30 <printf>
    exit();
    5246:	e8 88 16 00 00       	call   68d3 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    524b:	50                   	push   %eax
    524c:	50                   	push   %eax
    524d:	68 2c 80 00 00       	push   $0x802c
    5252:	6a 01                	push   $0x1
    5254:	e8 d7 17 00 00       	call   6a30 <printf>
    exit();
    5259:	e8 75 16 00 00       	call   68d3 <exit>
    printf(1, "open dd wronly succeeded!\n");
    525e:	50                   	push   %eax
    525f:	50                   	push   %eax
    5260:	68 8f 76 00 00       	push   $0x768f
    5265:	6a 01                	push   $0x1
    5267:	e8 c4 17 00 00       	call   6a30 <printf>
    exit();
    526c:	e8 62 16 00 00       	call   68d3 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    5271:	50                   	push   %eax
    5272:	50                   	push   %eax
    5273:	68 76 76 00 00       	push   $0x7676
    5278:	6a 01                	push   $0x1
    527a:	e8 b1 17 00 00       	call   6a30 <printf>
    exit();
    527f:	e8 4f 16 00 00       	call   68d3 <exit>
    printf(1, "create dd succeeded!\n");
    5284:	50                   	push   %eax
    5285:	50                   	push   %eax
    5286:	68 60 76 00 00       	push   $0x7660
    528b:	6a 01                	push   $0x1
    528d:	e8 9e 17 00 00       	call   6a30 <printf>
    exit();
    5292:	e8 3c 16 00 00       	call   68d3 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    5297:	52                   	push   %edx
    5298:	52                   	push   %edx
    5299:	68 44 76 00 00       	push   $0x7644
    529e:	6a 01                	push   $0x1
    52a0:	e8 8b 17 00 00       	call   6a30 <printf>
    exit();
    52a5:	e8 29 16 00 00       	call   68d3 <exit>
    printf(1, "chdir dd failed\n");
    52aa:	50                   	push   %eax
    52ab:	50                   	push   %eax
    52ac:	68 85 75 00 00       	push   $0x7585
    52b1:	6a 01                	push   $0x1
    52b3:	e8 78 17 00 00       	call   6a30 <printf>
    exit();
    52b8:	e8 16 16 00 00       	call   68d3 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    52bd:	50                   	push   %eax
    52be:	50                   	push   %eax
    52bf:	68 e0 7f 00 00       	push   $0x7fe0
    52c4:	6a 01                	push   $0x1
    52c6:	e8 65 17 00 00       	call   6a30 <printf>
    exit();
    52cb:	e8 03 16 00 00       	call   68d3 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    52d0:	53                   	push   %ebx
    52d1:	53                   	push   %ebx
    52d2:	68 e3 74 00 00       	push   $0x74e3
    52d7:	6a 01                	push   $0x1
    52d9:	e8 52 17 00 00       	call   6a30 <printf>
    exit();
    52de:	e8 f0 15 00 00       	call   68d3 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    52e3:	50                   	push   %eax
    52e4:	50                   	push   %eax
    52e5:	68 94 7f 00 00       	push   $0x7f94
    52ea:	6a 01                	push   $0x1
    52ec:	e8 3f 17 00 00       	call   6a30 <printf>
    exit();
    52f1:	e8 dd 15 00 00       	call   68d3 <exit>
    printf(1, "create dd/ff failed\n");
    52f6:	50                   	push   %eax
    52f7:	50                   	push   %eax
    52f8:	68 c7 74 00 00       	push   $0x74c7
    52fd:	6a 01                	push   $0x1
    52ff:	e8 2c 17 00 00       	call   6a30 <printf>
    exit();
    5304:	e8 ca 15 00 00       	call   68d3 <exit>
    printf(1, "subdir mkdir dd failed\n");
    5309:	50                   	push   %eax
    530a:	50                   	push   %eax
    530b:	68 af 74 00 00       	push   $0x74af
    5310:	6a 01                	push   $0x1
    5312:	e8 19 17 00 00       	call   6a30 <printf>
    exit();
    5317:	e8 b7 15 00 00       	call   68d3 <exit>
    printf(1, "unlink dd failed\n");
    531c:	50                   	push   %eax
    531d:	50                   	push   %eax
    531e:	68 98 77 00 00       	push   $0x7798
    5323:	6a 01                	push   $0x1
    5325:	e8 06 17 00 00       	call   6a30 <printf>
    exit();
    532a:	e8 a4 15 00 00       	call   68d3 <exit>
    printf(1, "unlink dd/dd failed\n");
    532f:	52                   	push   %edx
    5330:	52                   	push   %edx
    5331:	68 83 77 00 00       	push   $0x7783
    5336:	6a 01                	push   $0x1
    5338:	e8 f3 16 00 00       	call   6a30 <printf>
    exit();
    533d:	e8 91 15 00 00       	call   68d3 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    5342:	51                   	push   %ecx
    5343:	51                   	push   %ecx
    5344:	68 98 80 00 00       	push   $0x8098
    5349:	6a 01                	push   $0x1
    534b:	e8 e0 16 00 00       	call   6a30 <printf>
    exit();
    5350:	e8 7e 15 00 00       	call   68d3 <exit>
    printf(1, "unlink dd/ff failed\n");
    5355:	53                   	push   %ebx
    5356:	53                   	push   %ebx
    5357:	68 6e 77 00 00       	push   $0x776e
    535c:	6a 01                	push   $0x1
    535e:	e8 cd 16 00 00       	call   6a30 <printf>
    exit();
    5363:	e8 6b 15 00 00       	call   68d3 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    5368:	50                   	push   %eax
    5369:	50                   	push   %eax
    536a:	68 56 77 00 00       	push   $0x7756
    536f:	6a 01                	push   $0x1
    5371:	e8 ba 16 00 00       	call   6a30 <printf>
    exit();
    5376:	e8 58 15 00 00       	call   68d3 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    537b:	50                   	push   %eax
    537c:	50                   	push   %eax
    537d:	68 3e 77 00 00       	push   $0x773e
    5382:	6a 01                	push   $0x1
    5384:	e8 a7 16 00 00       	call   6a30 <printf>
    exit();
    5389:	e8 45 15 00 00       	call   68d3 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    538e:	50                   	push   %eax
    538f:	50                   	push   %eax
    5390:	68 22 77 00 00       	push   $0x7722
    5395:	6a 01                	push   $0x1
    5397:	e8 94 16 00 00       	call   6a30 <printf>
    exit();
    539c:	e8 32 15 00 00       	call   68d3 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    53a1:	50                   	push   %eax
    53a2:	50                   	push   %eax
    53a3:	68 06 77 00 00       	push   $0x7706
    53a8:	6a 01                	push   $0x1
    53aa:	e8 81 16 00 00       	call   6a30 <printf>
    exit();
    53af:	e8 1f 15 00 00       	call   68d3 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    53b4:	50                   	push   %eax
    53b5:	50                   	push   %eax
    53b6:	68 e9 76 00 00       	push   $0x76e9
    53bb:	6a 01                	push   $0x1
    53bd:	e8 6e 16 00 00       	call   6a30 <printf>
    exit();
    53c2:	e8 0c 15 00 00       	call   68d3 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    53c7:	52                   	push   %edx
    53c8:	52                   	push   %edx
    53c9:	68 ce 76 00 00       	push   $0x76ce
    53ce:	6a 01                	push   $0x1
    53d0:	e8 5b 16 00 00       	call   6a30 <printf>
    exit();
    53d5:	e8 f9 14 00 00       	call   68d3 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    53da:	51                   	push   %ecx
    53db:	51                   	push   %ecx
    53dc:	68 fb 75 00 00       	push   $0x75fb
    53e1:	6a 01                	push   $0x1
    53e3:	e8 48 16 00 00       	call   6a30 <printf>
    exit();
    53e8:	e8 e6 14 00 00       	call   68d3 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    53ed:	53                   	push   %ebx
    53ee:	53                   	push   %ebx
    53ef:	68 e3 75 00 00       	push   $0x75e3
    53f4:	6a 01                	push   $0x1
    53f6:	e8 35 16 00 00       	call   6a30 <printf>
    exit();
    53fb:	e8 d3 14 00 00       	call   68d3 <exit>

00005400 <bigwrite>:
{
    5400:	55                   	push   %ebp
    5401:	89 e5                	mov    %esp,%ebp
    5403:	56                   	push   %esi
    5404:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    5405:	bb f3 01 00 00       	mov    $0x1f3,%ebx
  printf(1, "bigwrite test\n");
    540a:	83 ec 08             	sub    $0x8,%esp
    540d:	68 b5 77 00 00       	push   $0x77b5
    5412:	6a 01                	push   $0x1
    5414:	e8 17 16 00 00       	call   6a30 <printf>
  unlink("bigwrite");
    5419:	c7 04 24 c4 77 00 00 	movl   $0x77c4,(%esp)
    5420:	e8 fe 14 00 00       	call   6923 <unlink>
    5425:	83 c4 10             	add    $0x10,%esp
    5428:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    542f:	90                   	nop
    fd = open("bigwrite", O_CREATE | O_RDWR);
    5430:	83 ec 08             	sub    $0x8,%esp
    5433:	68 02 02 00 00       	push   $0x202
    5438:	68 c4 77 00 00       	push   $0x77c4
    543d:	e8 d1 14 00 00       	call   6913 <open>
    if(fd < 0){
    5442:	83 c4 10             	add    $0x10,%esp
    fd = open("bigwrite", O_CREATE | O_RDWR);
    5445:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    5447:	85 c0                	test   %eax,%eax
    5449:	78 7e                	js     54c9 <bigwrite+0xc9>
      int cc = write(fd, buf, sz);
    544b:	83 ec 04             	sub    $0x4,%esp
    544e:	53                   	push   %ebx
    544f:	68 80 b5 00 00       	push   $0xb580
    5454:	50                   	push   %eax
    5455:	e8 99 14 00 00       	call   68f3 <write>
      if(cc != sz){
    545a:	83 c4 10             	add    $0x10,%esp
    545d:	39 d8                	cmp    %ebx,%eax
    545f:	75 55                	jne    54b6 <bigwrite+0xb6>
      int cc = write(fd, buf, sz);
    5461:	83 ec 04             	sub    $0x4,%esp
    5464:	53                   	push   %ebx
    5465:	68 80 b5 00 00       	push   $0xb580
    546a:	56                   	push   %esi
    546b:	e8 83 14 00 00       	call   68f3 <write>
      if(cc != sz){
    5470:	83 c4 10             	add    $0x10,%esp
    5473:	39 d8                	cmp    %ebx,%eax
    5475:	75 3f                	jne    54b6 <bigwrite+0xb6>
    close(fd);
    5477:	83 ec 0c             	sub    $0xc,%esp
  for(sz = 499; sz < 12*512; sz += 471){
    547a:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    5480:	56                   	push   %esi
    5481:	e8 75 14 00 00       	call   68fb <close>
    unlink("bigwrite");
    5486:	c7 04 24 c4 77 00 00 	movl   $0x77c4,(%esp)
    548d:	e8 91 14 00 00       	call   6923 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    5492:	83 c4 10             	add    $0x10,%esp
    5495:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    549b:	75 93                	jne    5430 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    549d:	83 ec 08             	sub    $0x8,%esp
    54a0:	68 f7 77 00 00       	push   $0x77f7
    54a5:	6a 01                	push   $0x1
    54a7:	e8 84 15 00 00       	call   6a30 <printf>
}
    54ac:	83 c4 10             	add    $0x10,%esp
    54af:	8d 65 f8             	lea    -0x8(%ebp),%esp
    54b2:	5b                   	pop    %ebx
    54b3:	5e                   	pop    %esi
    54b4:	5d                   	pop    %ebp
    54b5:	c3                   	ret    
        printf(1, "write(%d) ret %d\n", sz, cc);
    54b6:	50                   	push   %eax
    54b7:	53                   	push   %ebx
    54b8:	68 e5 77 00 00       	push   $0x77e5
    54bd:	6a 01                	push   $0x1
    54bf:	e8 6c 15 00 00       	call   6a30 <printf>
        exit();
    54c4:	e8 0a 14 00 00       	call   68d3 <exit>
      printf(1, "cannot create bigwrite\n");
    54c9:	83 ec 08             	sub    $0x8,%esp
    54cc:	68 cd 77 00 00       	push   $0x77cd
    54d1:	6a 01                	push   $0x1
    54d3:	e8 58 15 00 00       	call   6a30 <printf>
      exit();
    54d8:	e8 f6 13 00 00       	call   68d3 <exit>
    54dd:	8d 76 00             	lea    0x0(%esi),%esi

000054e0 <bigfile>:
{
    54e0:	55                   	push   %ebp
    54e1:	89 e5                	mov    %esp,%ebp
    54e3:	57                   	push   %edi
    54e4:	56                   	push   %esi
    54e5:	53                   	push   %ebx
    54e6:	83 ec 14             	sub    $0x14,%esp
  printf(1, "bigfile test\n");
    54e9:	68 04 78 00 00       	push   $0x7804
    54ee:	6a 01                	push   $0x1
    54f0:	e8 3b 15 00 00       	call   6a30 <printf>
  unlink("bigfile");
    54f5:	c7 04 24 20 78 00 00 	movl   $0x7820,(%esp)
    54fc:	e8 22 14 00 00       	call   6923 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    5501:	58                   	pop    %eax
    5502:	5a                   	pop    %edx
    5503:	68 02 02 00 00       	push   $0x202
    5508:	68 20 78 00 00       	push   $0x7820
    550d:	e8 01 14 00 00       	call   6913 <open>
  if(fd < 0){
    5512:	83 c4 10             	add    $0x10,%esp
    5515:	85 c0                	test   %eax,%eax
    5517:	0f 88 5e 01 00 00    	js     567b <bigfile+0x19b>
    551d:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 20; i++){
    551f:	31 db                	xor    %ebx,%ebx
    5521:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    5528:	83 ec 04             	sub    $0x4,%esp
    552b:	68 58 02 00 00       	push   $0x258
    5530:	53                   	push   %ebx
    5531:	68 80 b5 00 00       	push   $0xb580
    5536:	e8 05 12 00 00       	call   6740 <memset>
    if(write(fd, buf, 600) != 600){
    553b:	83 c4 0c             	add    $0xc,%esp
    553e:	68 58 02 00 00       	push   $0x258
    5543:	68 80 b5 00 00       	push   $0xb580
    5548:	56                   	push   %esi
    5549:	e8 a5 13 00 00       	call   68f3 <write>
    554e:	83 c4 10             	add    $0x10,%esp
    5551:	3d 58 02 00 00       	cmp    $0x258,%eax
    5556:	0f 85 f8 00 00 00    	jne    5654 <bigfile+0x174>
  for(i = 0; i < 20; i++){
    555c:	83 c3 01             	add    $0x1,%ebx
    555f:	83 fb 14             	cmp    $0x14,%ebx
    5562:	75 c4                	jne    5528 <bigfile+0x48>
  close(fd);
    5564:	83 ec 0c             	sub    $0xc,%esp
    5567:	56                   	push   %esi
    5568:	e8 8e 13 00 00       	call   68fb <close>
  fd = open("bigfile", 0);
    556d:	5e                   	pop    %esi
    556e:	5f                   	pop    %edi
    556f:	6a 00                	push   $0x0
    5571:	68 20 78 00 00       	push   $0x7820
    5576:	e8 98 13 00 00       	call   6913 <open>
  if(fd < 0){
    557b:	83 c4 10             	add    $0x10,%esp
  fd = open("bigfile", 0);
    557e:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    5580:	85 c0                	test   %eax,%eax
    5582:	0f 88 e0 00 00 00    	js     5668 <bigfile+0x188>
  total = 0;
    5588:	31 db                	xor    %ebx,%ebx
  for(i = 0; ; i++){
    558a:	31 ff                	xor    %edi,%edi
    558c:	eb 30                	jmp    55be <bigfile+0xde>
    558e:	66 90                	xchg   %ax,%ax
    if(cc != 300){
    5590:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    5595:	0f 85 91 00 00 00    	jne    562c <bigfile+0x14c>
    if(buf[0] != i/2 || buf[299] != i/2){
    559b:	89 fa                	mov    %edi,%edx
    559d:	0f be 05 80 b5 00 00 	movsbl 0xb580,%eax
    55a4:	d1 fa                	sar    %edx
    55a6:	39 d0                	cmp    %edx,%eax
    55a8:	75 6e                	jne    5618 <bigfile+0x138>
    55aa:	0f be 15 ab b6 00 00 	movsbl 0xb6ab,%edx
    55b1:	39 d0                	cmp    %edx,%eax
    55b3:	75 63                	jne    5618 <bigfile+0x138>
    total += cc;
    55b5:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    55bb:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    55be:	83 ec 04             	sub    $0x4,%esp
    55c1:	68 2c 01 00 00       	push   $0x12c
    55c6:	68 80 b5 00 00       	push   $0xb580
    55cb:	56                   	push   %esi
    55cc:	e8 1a 13 00 00       	call   68eb <read>
    if(cc < 0){
    55d1:	83 c4 10             	add    $0x10,%esp
    55d4:	85 c0                	test   %eax,%eax
    55d6:	78 68                	js     5640 <bigfile+0x160>
    if(cc == 0)
    55d8:	75 b6                	jne    5590 <bigfile+0xb0>
  close(fd);
    55da:	83 ec 0c             	sub    $0xc,%esp
    55dd:	56                   	push   %esi
    55de:	e8 18 13 00 00       	call   68fb <close>
  if(total != 20*600){
    55e3:	83 c4 10             	add    $0x10,%esp
    55e6:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    55ec:	0f 85 9c 00 00 00    	jne    568e <bigfile+0x1ae>
  unlink("bigfile");
    55f2:	83 ec 0c             	sub    $0xc,%esp
    55f5:	68 20 78 00 00       	push   $0x7820
    55fa:	e8 24 13 00 00       	call   6923 <unlink>
  printf(1, "bigfile test ok\n");
    55ff:	58                   	pop    %eax
    5600:	5a                   	pop    %edx
    5601:	68 af 78 00 00       	push   $0x78af
    5606:	6a 01                	push   $0x1
    5608:	e8 23 14 00 00       	call   6a30 <printf>
}
    560d:	83 c4 10             	add    $0x10,%esp
    5610:	8d 65 f4             	lea    -0xc(%ebp),%esp
    5613:	5b                   	pop    %ebx
    5614:	5e                   	pop    %esi
    5615:	5f                   	pop    %edi
    5616:	5d                   	pop    %ebp
    5617:	c3                   	ret    
      printf(1, "read bigfile wrong data\n");
    5618:	83 ec 08             	sub    $0x8,%esp
    561b:	68 7c 78 00 00       	push   $0x787c
    5620:	6a 01                	push   $0x1
    5622:	e8 09 14 00 00       	call   6a30 <printf>
      exit();
    5627:	e8 a7 12 00 00       	call   68d3 <exit>
      printf(1, "short read bigfile\n");
    562c:	83 ec 08             	sub    $0x8,%esp
    562f:	68 68 78 00 00       	push   $0x7868
    5634:	6a 01                	push   $0x1
    5636:	e8 f5 13 00 00       	call   6a30 <printf>
      exit();
    563b:	e8 93 12 00 00       	call   68d3 <exit>
      printf(1, "read bigfile failed\n");
    5640:	83 ec 08             	sub    $0x8,%esp
    5643:	68 53 78 00 00       	push   $0x7853
    5648:	6a 01                	push   $0x1
    564a:	e8 e1 13 00 00       	call   6a30 <printf>
      exit();
    564f:	e8 7f 12 00 00       	call   68d3 <exit>
      printf(1, "write bigfile failed\n");
    5654:	83 ec 08             	sub    $0x8,%esp
    5657:	68 28 78 00 00       	push   $0x7828
    565c:	6a 01                	push   $0x1
    565e:	e8 cd 13 00 00       	call   6a30 <printf>
      exit();
    5663:	e8 6b 12 00 00       	call   68d3 <exit>
    printf(1, "cannot open bigfile\n");
    5668:	53                   	push   %ebx
    5669:	53                   	push   %ebx
    566a:	68 3e 78 00 00       	push   $0x783e
    566f:	6a 01                	push   $0x1
    5671:	e8 ba 13 00 00       	call   6a30 <printf>
    exit();
    5676:	e8 58 12 00 00       	call   68d3 <exit>
    printf(1, "cannot create bigfile");
    567b:	50                   	push   %eax
    567c:	50                   	push   %eax
    567d:	68 12 78 00 00       	push   $0x7812
    5682:	6a 01                	push   $0x1
    5684:	e8 a7 13 00 00       	call   6a30 <printf>
    exit();
    5689:	e8 45 12 00 00       	call   68d3 <exit>
    printf(1, "read bigfile wrong total\n");
    568e:	51                   	push   %ecx
    568f:	51                   	push   %ecx
    5690:	68 95 78 00 00       	push   $0x7895
    5695:	6a 01                	push   $0x1
    5697:	e8 94 13 00 00       	call   6a30 <printf>
    exit();
    569c:	e8 32 12 00 00       	call   68d3 <exit>
    56a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    56a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    56af:	90                   	nop

000056b0 <fourteen>:
{
    56b0:	55                   	push   %ebp
    56b1:	89 e5                	mov    %esp,%ebp
    56b3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "fourteen test\n");
    56b6:	68 c0 78 00 00       	push   $0x78c0
    56bb:	6a 01                	push   $0x1
    56bd:	e8 6e 13 00 00       	call   6a30 <printf>
  if(mkdir("12345678901234") != 0){
    56c2:	c7 04 24 fb 78 00 00 	movl   $0x78fb,(%esp)
    56c9:	e8 6d 12 00 00       	call   693b <mkdir>
    56ce:	83 c4 10             	add    $0x10,%esp
    56d1:	85 c0                	test   %eax,%eax
    56d3:	0f 85 97 00 00 00    	jne    5770 <fourteen+0xc0>
  if(mkdir("12345678901234/123456789012345") != 0){
    56d9:	83 ec 0c             	sub    $0xc,%esp
    56dc:	68 b8 80 00 00       	push   $0x80b8
    56e1:	e8 55 12 00 00       	call   693b <mkdir>
    56e6:	83 c4 10             	add    $0x10,%esp
    56e9:	85 c0                	test   %eax,%eax
    56eb:	0f 85 de 00 00 00    	jne    57cf <fourteen+0x11f>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    56f1:	83 ec 08             	sub    $0x8,%esp
    56f4:	68 00 02 00 00       	push   $0x200
    56f9:	68 08 81 00 00       	push   $0x8108
    56fe:	e8 10 12 00 00       	call   6913 <open>
  if(fd < 0){
    5703:	83 c4 10             	add    $0x10,%esp
    5706:	85 c0                	test   %eax,%eax
    5708:	0f 88 ae 00 00 00    	js     57bc <fourteen+0x10c>
  close(fd);
    570e:	83 ec 0c             	sub    $0xc,%esp
    5711:	50                   	push   %eax
    5712:	e8 e4 11 00 00       	call   68fb <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    5717:	58                   	pop    %eax
    5718:	5a                   	pop    %edx
    5719:	6a 00                	push   $0x0
    571b:	68 78 81 00 00       	push   $0x8178
    5720:	e8 ee 11 00 00       	call   6913 <open>
  if(fd < 0){
    5725:	83 c4 10             	add    $0x10,%esp
    5728:	85 c0                	test   %eax,%eax
    572a:	78 7d                	js     57a9 <fourteen+0xf9>
  close(fd);
    572c:	83 ec 0c             	sub    $0xc,%esp
    572f:	50                   	push   %eax
    5730:	e8 c6 11 00 00       	call   68fb <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    5735:	c7 04 24 ec 78 00 00 	movl   $0x78ec,(%esp)
    573c:	e8 fa 11 00 00       	call   693b <mkdir>
    5741:	83 c4 10             	add    $0x10,%esp
    5744:	85 c0                	test   %eax,%eax
    5746:	74 4e                	je     5796 <fourteen+0xe6>
  if(mkdir("123456789012345/12345678901234") == 0){
    5748:	83 ec 0c             	sub    $0xc,%esp
    574b:	68 14 82 00 00       	push   $0x8214
    5750:	e8 e6 11 00 00       	call   693b <mkdir>
    5755:	83 c4 10             	add    $0x10,%esp
    5758:	85 c0                	test   %eax,%eax
    575a:	74 27                	je     5783 <fourteen+0xd3>
  printf(1, "fourteen ok\n");
    575c:	83 ec 08             	sub    $0x8,%esp
    575f:	68 0a 79 00 00       	push   $0x790a
    5764:	6a 01                	push   $0x1
    5766:	e8 c5 12 00 00       	call   6a30 <printf>
}
    576b:	83 c4 10             	add    $0x10,%esp
    576e:	c9                   	leave  
    576f:	c3                   	ret    
    printf(1, "mkdir 12345678901234 failed\n");
    5770:	50                   	push   %eax
    5771:	50                   	push   %eax
    5772:	68 cf 78 00 00       	push   $0x78cf
    5777:	6a 01                	push   $0x1
    5779:	e8 b2 12 00 00       	call   6a30 <printf>
    exit();
    577e:	e8 50 11 00 00       	call   68d3 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    5783:	50                   	push   %eax
    5784:	50                   	push   %eax
    5785:	68 34 82 00 00       	push   $0x8234
    578a:	6a 01                	push   $0x1
    578c:	e8 9f 12 00 00       	call   6a30 <printf>
    exit();
    5791:	e8 3d 11 00 00       	call   68d3 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    5796:	52                   	push   %edx
    5797:	52                   	push   %edx
    5798:	68 e4 81 00 00       	push   $0x81e4
    579d:	6a 01                	push   $0x1
    579f:	e8 8c 12 00 00       	call   6a30 <printf>
    exit();
    57a4:	e8 2a 11 00 00       	call   68d3 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    57a9:	51                   	push   %ecx
    57aa:	51                   	push   %ecx
    57ab:	68 a8 81 00 00       	push   $0x81a8
    57b0:	6a 01                	push   $0x1
    57b2:	e8 79 12 00 00       	call   6a30 <printf>
    exit();
    57b7:	e8 17 11 00 00       	call   68d3 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    57bc:	51                   	push   %ecx
    57bd:	51                   	push   %ecx
    57be:	68 38 81 00 00       	push   $0x8138
    57c3:	6a 01                	push   $0x1
    57c5:	e8 66 12 00 00       	call   6a30 <printf>
    exit();
    57ca:	e8 04 11 00 00       	call   68d3 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    57cf:	50                   	push   %eax
    57d0:	50                   	push   %eax
    57d1:	68 d8 80 00 00       	push   $0x80d8
    57d6:	6a 01                	push   $0x1
    57d8:	e8 53 12 00 00       	call   6a30 <printf>
    exit();
    57dd:	e8 f1 10 00 00       	call   68d3 <exit>
    57e2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    57e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000057f0 <rmdot>:
{
    57f0:	55                   	push   %ebp
    57f1:	89 e5                	mov    %esp,%ebp
    57f3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    57f6:	68 17 79 00 00       	push   $0x7917
    57fb:	6a 01                	push   $0x1
    57fd:	e8 2e 12 00 00       	call   6a30 <printf>
  if(mkdir("dots") != 0){
    5802:	c7 04 24 23 79 00 00 	movl   $0x7923,(%esp)
    5809:	e8 2d 11 00 00       	call   693b <mkdir>
    580e:	83 c4 10             	add    $0x10,%esp
    5811:	85 c0                	test   %eax,%eax
    5813:	0f 85 b0 00 00 00    	jne    58c9 <rmdot+0xd9>
  if(chdir("dots") != 0){
    5819:	83 ec 0c             	sub    $0xc,%esp
    581c:	68 23 79 00 00       	push   $0x7923
    5821:	e8 1d 11 00 00       	call   6943 <chdir>
    5826:	83 c4 10             	add    $0x10,%esp
    5829:	85 c0                	test   %eax,%eax
    582b:	0f 85 1d 01 00 00    	jne    594e <rmdot+0x15e>
  if(unlink(".") == 0){
    5831:	83 ec 0c             	sub    $0xc,%esp
    5834:	68 ce 75 00 00       	push   $0x75ce
    5839:	e8 e5 10 00 00       	call   6923 <unlink>
    583e:	83 c4 10             	add    $0x10,%esp
    5841:	85 c0                	test   %eax,%eax
    5843:	0f 84 f2 00 00 00    	je     593b <rmdot+0x14b>
  if(unlink("..") == 0){
    5849:	83 ec 0c             	sub    $0xc,%esp
    584c:	68 cd 75 00 00       	push   $0x75cd
    5851:	e8 cd 10 00 00       	call   6923 <unlink>
    5856:	83 c4 10             	add    $0x10,%esp
    5859:	85 c0                	test   %eax,%eax
    585b:	0f 84 c7 00 00 00    	je     5928 <rmdot+0x138>
  if(chdir("/") != 0){
    5861:	83 ec 0c             	sub    $0xc,%esp
    5864:	68 a1 6d 00 00       	push   $0x6da1
    5869:	e8 d5 10 00 00       	call   6943 <chdir>
    586e:	83 c4 10             	add    $0x10,%esp
    5871:	85 c0                	test   %eax,%eax
    5873:	0f 85 9c 00 00 00    	jne    5915 <rmdot+0x125>
  if(unlink("dots/.") == 0){
    5879:	83 ec 0c             	sub    $0xc,%esp
    587c:	68 6b 79 00 00       	push   $0x796b
    5881:	e8 9d 10 00 00       	call   6923 <unlink>
    5886:	83 c4 10             	add    $0x10,%esp
    5889:	85 c0                	test   %eax,%eax
    588b:	74 75                	je     5902 <rmdot+0x112>
  if(unlink("dots/..") == 0){
    588d:	83 ec 0c             	sub    $0xc,%esp
    5890:	68 89 79 00 00       	push   $0x7989
    5895:	e8 89 10 00 00       	call   6923 <unlink>
    589a:	83 c4 10             	add    $0x10,%esp
    589d:	85 c0                	test   %eax,%eax
    589f:	74 4e                	je     58ef <rmdot+0xff>
  if(unlink("dots") != 0){
    58a1:	83 ec 0c             	sub    $0xc,%esp
    58a4:	68 23 79 00 00       	push   $0x7923
    58a9:	e8 75 10 00 00       	call   6923 <unlink>
    58ae:	83 c4 10             	add    $0x10,%esp
    58b1:	85 c0                	test   %eax,%eax
    58b3:	75 27                	jne    58dc <rmdot+0xec>
  printf(1, "rmdot ok\n");
    58b5:	83 ec 08             	sub    $0x8,%esp
    58b8:	68 be 79 00 00       	push   $0x79be
    58bd:	6a 01                	push   $0x1
    58bf:	e8 6c 11 00 00       	call   6a30 <printf>
}
    58c4:	83 c4 10             	add    $0x10,%esp
    58c7:	c9                   	leave  
    58c8:	c3                   	ret    
    printf(1, "mkdir dots failed\n");
    58c9:	50                   	push   %eax
    58ca:	50                   	push   %eax
    58cb:	68 28 79 00 00       	push   $0x7928
    58d0:	6a 01                	push   $0x1
    58d2:	e8 59 11 00 00       	call   6a30 <printf>
    exit();
    58d7:	e8 f7 0f 00 00       	call   68d3 <exit>
    printf(1, "unlink dots failed!\n");
    58dc:	50                   	push   %eax
    58dd:	50                   	push   %eax
    58de:	68 a9 79 00 00       	push   $0x79a9
    58e3:	6a 01                	push   $0x1
    58e5:	e8 46 11 00 00       	call   6a30 <printf>
    exit();
    58ea:	e8 e4 0f 00 00       	call   68d3 <exit>
    printf(1, "unlink dots/.. worked!\n");
    58ef:	52                   	push   %edx
    58f0:	52                   	push   %edx
    58f1:	68 91 79 00 00       	push   $0x7991
    58f6:	6a 01                	push   $0x1
    58f8:	e8 33 11 00 00       	call   6a30 <printf>
    exit();
    58fd:	e8 d1 0f 00 00       	call   68d3 <exit>
    printf(1, "unlink dots/. worked!\n");
    5902:	51                   	push   %ecx
    5903:	51                   	push   %ecx
    5904:	68 72 79 00 00       	push   $0x7972
    5909:	6a 01                	push   $0x1
    590b:	e8 20 11 00 00       	call   6a30 <printf>
    exit();
    5910:	e8 be 0f 00 00       	call   68d3 <exit>
    printf(1, "chdir / failed\n");
    5915:	50                   	push   %eax
    5916:	50                   	push   %eax
    5917:	68 a3 6d 00 00       	push   $0x6da3
    591c:	6a 01                	push   $0x1
    591e:	e8 0d 11 00 00       	call   6a30 <printf>
    exit();
    5923:	e8 ab 0f 00 00       	call   68d3 <exit>
    printf(1, "rm .. worked!\n");
    5928:	50                   	push   %eax
    5929:	50                   	push   %eax
    592a:	68 5c 79 00 00       	push   $0x795c
    592f:	6a 01                	push   $0x1
    5931:	e8 fa 10 00 00       	call   6a30 <printf>
    exit();
    5936:	e8 98 0f 00 00       	call   68d3 <exit>
    printf(1, "rm . worked!\n");
    593b:	50                   	push   %eax
    593c:	50                   	push   %eax
    593d:	68 4e 79 00 00       	push   $0x794e
    5942:	6a 01                	push   $0x1
    5944:	e8 e7 10 00 00       	call   6a30 <printf>
    exit();
    5949:	e8 85 0f 00 00       	call   68d3 <exit>
    printf(1, "chdir dots failed\n");
    594e:	50                   	push   %eax
    594f:	50                   	push   %eax
    5950:	68 3b 79 00 00       	push   $0x793b
    5955:	6a 01                	push   $0x1
    5957:	e8 d4 10 00 00       	call   6a30 <printf>
    exit();
    595c:	e8 72 0f 00 00       	call   68d3 <exit>
    5961:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    5968:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    596f:	90                   	nop

00005970 <dirfile>:
{
    5970:	55                   	push   %ebp
    5971:	89 e5                	mov    %esp,%ebp
    5973:	53                   	push   %ebx
    5974:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "dir vs file\n");
    5977:	68 c8 79 00 00       	push   $0x79c8
    597c:	6a 01                	push   $0x1
    597e:	e8 ad 10 00 00       	call   6a30 <printf>
  fd = open("dirfile", O_CREATE);
    5983:	5b                   	pop    %ebx
    5984:	58                   	pop    %eax
    5985:	68 00 02 00 00       	push   $0x200
    598a:	68 d5 79 00 00       	push   $0x79d5
    598f:	e8 7f 0f 00 00       	call   6913 <open>
  if(fd < 0){
    5994:	83 c4 10             	add    $0x10,%esp
    5997:	85 c0                	test   %eax,%eax
    5999:	0f 88 43 01 00 00    	js     5ae2 <dirfile+0x172>
  close(fd);
    599f:	83 ec 0c             	sub    $0xc,%esp
    59a2:	50                   	push   %eax
    59a3:	e8 53 0f 00 00       	call   68fb <close>
  if(chdir("dirfile") == 0){
    59a8:	c7 04 24 d5 79 00 00 	movl   $0x79d5,(%esp)
    59af:	e8 8f 0f 00 00       	call   6943 <chdir>
    59b4:	83 c4 10             	add    $0x10,%esp
    59b7:	85 c0                	test   %eax,%eax
    59b9:	0f 84 10 01 00 00    	je     5acf <dirfile+0x15f>
  fd = open("dirfile/xx", 0);
    59bf:	83 ec 08             	sub    $0x8,%esp
    59c2:	6a 00                	push   $0x0
    59c4:	68 0e 7a 00 00       	push   $0x7a0e
    59c9:	e8 45 0f 00 00       	call   6913 <open>
  if(fd >= 0){
    59ce:	83 c4 10             	add    $0x10,%esp
    59d1:	85 c0                	test   %eax,%eax
    59d3:	0f 89 e3 00 00 00    	jns    5abc <dirfile+0x14c>
  fd = open("dirfile/xx", O_CREATE);
    59d9:	83 ec 08             	sub    $0x8,%esp
    59dc:	68 00 02 00 00       	push   $0x200
    59e1:	68 0e 7a 00 00       	push   $0x7a0e
    59e6:	e8 28 0f 00 00       	call   6913 <open>
  if(fd >= 0){
    59eb:	83 c4 10             	add    $0x10,%esp
    59ee:	85 c0                	test   %eax,%eax
    59f0:	0f 89 c6 00 00 00    	jns    5abc <dirfile+0x14c>
  if(mkdir("dirfile/xx") == 0){
    59f6:	83 ec 0c             	sub    $0xc,%esp
    59f9:	68 0e 7a 00 00       	push   $0x7a0e
    59fe:	e8 38 0f 00 00       	call   693b <mkdir>
    5a03:	83 c4 10             	add    $0x10,%esp
    5a06:	85 c0                	test   %eax,%eax
    5a08:	0f 84 46 01 00 00    	je     5b54 <dirfile+0x1e4>
  if(unlink("dirfile/xx") == 0){
    5a0e:	83 ec 0c             	sub    $0xc,%esp
    5a11:	68 0e 7a 00 00       	push   $0x7a0e
    5a16:	e8 08 0f 00 00       	call   6923 <unlink>
    5a1b:	83 c4 10             	add    $0x10,%esp
    5a1e:	85 c0                	test   %eax,%eax
    5a20:	0f 84 1b 01 00 00    	je     5b41 <dirfile+0x1d1>
  if(link("README", "dirfile/xx") == 0){
    5a26:	83 ec 08             	sub    $0x8,%esp
    5a29:	68 0e 7a 00 00       	push   $0x7a0e
    5a2e:	68 72 7a 00 00       	push   $0x7a72
    5a33:	e8 fb 0e 00 00       	call   6933 <link>
    5a38:	83 c4 10             	add    $0x10,%esp
    5a3b:	85 c0                	test   %eax,%eax
    5a3d:	0f 84 eb 00 00 00    	je     5b2e <dirfile+0x1be>
  if(unlink("dirfile") != 0){
    5a43:	83 ec 0c             	sub    $0xc,%esp
    5a46:	68 d5 79 00 00       	push   $0x79d5
    5a4b:	e8 d3 0e 00 00       	call   6923 <unlink>
    5a50:	83 c4 10             	add    $0x10,%esp
    5a53:	85 c0                	test   %eax,%eax
    5a55:	0f 85 c0 00 00 00    	jne    5b1b <dirfile+0x1ab>
  fd = open(".", O_RDWR);
    5a5b:	83 ec 08             	sub    $0x8,%esp
    5a5e:	6a 02                	push   $0x2
    5a60:	68 ce 75 00 00       	push   $0x75ce
    5a65:	e8 a9 0e 00 00       	call   6913 <open>
  if(fd >= 0){
    5a6a:	83 c4 10             	add    $0x10,%esp
    5a6d:	85 c0                	test   %eax,%eax
    5a6f:	0f 89 93 00 00 00    	jns    5b08 <dirfile+0x198>
  fd = open(".", 0);
    5a75:	83 ec 08             	sub    $0x8,%esp
    5a78:	6a 00                	push   $0x0
    5a7a:	68 ce 75 00 00       	push   $0x75ce
    5a7f:	e8 8f 0e 00 00       	call   6913 <open>
  if(write(fd, "x", 1) > 0){
    5a84:	83 c4 0c             	add    $0xc,%esp
    5a87:	6a 01                	push   $0x1
  fd = open(".", 0);
    5a89:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    5a8b:	68 b1 76 00 00       	push   $0x76b1
    5a90:	50                   	push   %eax
    5a91:	e8 5d 0e 00 00       	call   68f3 <write>
    5a96:	83 c4 10             	add    $0x10,%esp
    5a99:	85 c0                	test   %eax,%eax
    5a9b:	7f 58                	jg     5af5 <dirfile+0x185>
  close(fd);
    5a9d:	83 ec 0c             	sub    $0xc,%esp
    5aa0:	53                   	push   %ebx
    5aa1:	e8 55 0e 00 00       	call   68fb <close>
  printf(1, "dir vs file OK\n");
    5aa6:	58                   	pop    %eax
    5aa7:	5a                   	pop    %edx
    5aa8:	68 a5 7a 00 00       	push   $0x7aa5
    5aad:	6a 01                	push   $0x1
    5aaf:	e8 7c 0f 00 00       	call   6a30 <printf>
}
    5ab4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    5ab7:	83 c4 10             	add    $0x10,%esp
    5aba:	c9                   	leave  
    5abb:	c3                   	ret    
    printf(1, "create dirfile/xx succeeded!\n");
    5abc:	50                   	push   %eax
    5abd:	50                   	push   %eax
    5abe:	68 19 7a 00 00       	push   $0x7a19
    5ac3:	6a 01                	push   $0x1
    5ac5:	e8 66 0f 00 00       	call   6a30 <printf>
    exit();
    5aca:	e8 04 0e 00 00       	call   68d3 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    5acf:	52                   	push   %edx
    5ad0:	52                   	push   %edx
    5ad1:	68 f4 79 00 00       	push   $0x79f4
    5ad6:	6a 01                	push   $0x1
    5ad8:	e8 53 0f 00 00       	call   6a30 <printf>
    exit();
    5add:	e8 f1 0d 00 00       	call   68d3 <exit>
    printf(1, "create dirfile failed\n");
    5ae2:	51                   	push   %ecx
    5ae3:	51                   	push   %ecx
    5ae4:	68 dd 79 00 00       	push   $0x79dd
    5ae9:	6a 01                	push   $0x1
    5aeb:	e8 40 0f 00 00       	call   6a30 <printf>
    exit();
    5af0:	e8 de 0d 00 00       	call   68d3 <exit>
    printf(1, "write . succeeded!\n");
    5af5:	51                   	push   %ecx
    5af6:	51                   	push   %ecx
    5af7:	68 91 7a 00 00       	push   $0x7a91
    5afc:	6a 01                	push   $0x1
    5afe:	e8 2d 0f 00 00       	call   6a30 <printf>
    exit();
    5b03:	e8 cb 0d 00 00       	call   68d3 <exit>
    printf(1, "open . for writing succeeded!\n");
    5b08:	53                   	push   %ebx
    5b09:	53                   	push   %ebx
    5b0a:	68 88 82 00 00       	push   $0x8288
    5b0f:	6a 01                	push   $0x1
    5b11:	e8 1a 0f 00 00       	call   6a30 <printf>
    exit();
    5b16:	e8 b8 0d 00 00       	call   68d3 <exit>
    printf(1, "unlink dirfile failed!\n");
    5b1b:	50                   	push   %eax
    5b1c:	50                   	push   %eax
    5b1d:	68 79 7a 00 00       	push   $0x7a79
    5b22:	6a 01                	push   $0x1
    5b24:	e8 07 0f 00 00       	call   6a30 <printf>
    exit();
    5b29:	e8 a5 0d 00 00       	call   68d3 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    5b2e:	50                   	push   %eax
    5b2f:	50                   	push   %eax
    5b30:	68 68 82 00 00       	push   $0x8268
    5b35:	6a 01                	push   $0x1
    5b37:	e8 f4 0e 00 00       	call   6a30 <printf>
    exit();
    5b3c:	e8 92 0d 00 00       	call   68d3 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    5b41:	50                   	push   %eax
    5b42:	50                   	push   %eax
    5b43:	68 54 7a 00 00       	push   $0x7a54
    5b48:	6a 01                	push   $0x1
    5b4a:	e8 e1 0e 00 00       	call   6a30 <printf>
    exit();
    5b4f:	e8 7f 0d 00 00       	call   68d3 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    5b54:	50                   	push   %eax
    5b55:	50                   	push   %eax
    5b56:	68 37 7a 00 00       	push   $0x7a37
    5b5b:	6a 01                	push   $0x1
    5b5d:	e8 ce 0e 00 00       	call   6a30 <printf>
    exit();
    5b62:	e8 6c 0d 00 00       	call   68d3 <exit>
    5b67:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    5b6e:	66 90                	xchg   %ax,%ax

00005b70 <iref>:
{
    5b70:	55                   	push   %ebp
    5b71:	89 e5                	mov    %esp,%ebp
    5b73:	53                   	push   %ebx
  printf(1, "empty file name\n");
    5b74:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    5b79:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "empty file name\n");
    5b7c:	68 b5 7a 00 00       	push   $0x7ab5
    5b81:	6a 01                	push   $0x1
    5b83:	e8 a8 0e 00 00       	call   6a30 <printf>
    5b88:	83 c4 10             	add    $0x10,%esp
    5b8b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    5b8f:	90                   	nop
    if(mkdir("irefd") != 0){
    5b90:	83 ec 0c             	sub    $0xc,%esp
    5b93:	68 c6 7a 00 00       	push   $0x7ac6
    5b98:	e8 9e 0d 00 00       	call   693b <mkdir>
    5b9d:	83 c4 10             	add    $0x10,%esp
    5ba0:	85 c0                	test   %eax,%eax
    5ba2:	0f 85 bb 00 00 00    	jne    5c63 <iref+0xf3>
    if(chdir("irefd") != 0){
    5ba8:	83 ec 0c             	sub    $0xc,%esp
    5bab:	68 c6 7a 00 00       	push   $0x7ac6
    5bb0:	e8 8e 0d 00 00       	call   6943 <chdir>
    5bb5:	83 c4 10             	add    $0x10,%esp
    5bb8:	85 c0                	test   %eax,%eax
    5bba:	0f 85 b7 00 00 00    	jne    5c77 <iref+0x107>
    mkdir("");
    5bc0:	83 ec 0c             	sub    $0xc,%esp
    5bc3:	68 7b 71 00 00       	push   $0x717b
    5bc8:	e8 6e 0d 00 00       	call   693b <mkdir>
    link("README", "");
    5bcd:	59                   	pop    %ecx
    5bce:	58                   	pop    %eax
    5bcf:	68 7b 71 00 00       	push   $0x717b
    5bd4:	68 72 7a 00 00       	push   $0x7a72
    5bd9:	e8 55 0d 00 00       	call   6933 <link>
    fd = open("", O_CREATE);
    5bde:	58                   	pop    %eax
    5bdf:	5a                   	pop    %edx
    5be0:	68 00 02 00 00       	push   $0x200
    5be5:	68 7b 71 00 00       	push   $0x717b
    5bea:	e8 24 0d 00 00       	call   6913 <open>
    if(fd >= 0)
    5bef:	83 c4 10             	add    $0x10,%esp
    5bf2:	85 c0                	test   %eax,%eax
    5bf4:	78 0c                	js     5c02 <iref+0x92>
      close(fd);
    5bf6:	83 ec 0c             	sub    $0xc,%esp
    5bf9:	50                   	push   %eax
    5bfa:	e8 fc 0c 00 00       	call   68fb <close>
    5bff:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    5c02:	83 ec 08             	sub    $0x8,%esp
    5c05:	68 00 02 00 00       	push   $0x200
    5c0a:	68 b0 76 00 00       	push   $0x76b0
    5c0f:	e8 ff 0c 00 00       	call   6913 <open>
    if(fd >= 0)
    5c14:	83 c4 10             	add    $0x10,%esp
    5c17:	85 c0                	test   %eax,%eax
    5c19:	78 0c                	js     5c27 <iref+0xb7>
      close(fd);
    5c1b:	83 ec 0c             	sub    $0xc,%esp
    5c1e:	50                   	push   %eax
    5c1f:	e8 d7 0c 00 00       	call   68fb <close>
    5c24:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    5c27:	83 ec 0c             	sub    $0xc,%esp
    5c2a:	68 b0 76 00 00       	push   $0x76b0
    5c2f:	e8 ef 0c 00 00       	call   6923 <unlink>
  for(i = 0; i < 50 + 1; i++){
    5c34:	83 c4 10             	add    $0x10,%esp
    5c37:	83 eb 01             	sub    $0x1,%ebx
    5c3a:	0f 85 50 ff ff ff    	jne    5b90 <iref+0x20>
  chdir("/");
    5c40:	83 ec 0c             	sub    $0xc,%esp
    5c43:	68 a1 6d 00 00       	push   $0x6da1
    5c48:	e8 f6 0c 00 00       	call   6943 <chdir>
  printf(1, "empty file name OK\n");
    5c4d:	58                   	pop    %eax
    5c4e:	5a                   	pop    %edx
    5c4f:	68 f4 7a 00 00       	push   $0x7af4
    5c54:	6a 01                	push   $0x1
    5c56:	e8 d5 0d 00 00       	call   6a30 <printf>
}
    5c5b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    5c5e:	83 c4 10             	add    $0x10,%esp
    5c61:	c9                   	leave  
    5c62:	c3                   	ret    
      printf(1, "mkdir irefd failed\n");
    5c63:	83 ec 08             	sub    $0x8,%esp
    5c66:	68 cc 7a 00 00       	push   $0x7acc
    5c6b:	6a 01                	push   $0x1
    5c6d:	e8 be 0d 00 00       	call   6a30 <printf>
      exit();
    5c72:	e8 5c 0c 00 00       	call   68d3 <exit>
      printf(1, "chdir irefd failed\n");
    5c77:	83 ec 08             	sub    $0x8,%esp
    5c7a:	68 e0 7a 00 00       	push   $0x7ae0
    5c7f:	6a 01                	push   $0x1
    5c81:	e8 aa 0d 00 00       	call   6a30 <printf>
      exit();
    5c86:	e8 48 0c 00 00       	call   68d3 <exit>
    5c8b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    5c8f:	90                   	nop

00005c90 <forktest>:
{
    5c90:	55                   	push   %ebp
    5c91:	89 e5                	mov    %esp,%ebp
    5c93:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    5c94:	31 db                	xor    %ebx,%ebx
{
    5c96:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "fork test\n");
    5c99:	68 08 7b 00 00       	push   $0x7b08
    5c9e:	6a 01                	push   $0x1
    5ca0:	e8 8b 0d 00 00       	call   6a30 <printf>
    5ca5:	83 c4 10             	add    $0x10,%esp
    5ca8:	eb 13                	jmp    5cbd <forktest+0x2d>
    5caa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(pid == 0)
    5cb0:	74 4a                	je     5cfc <forktest+0x6c>
  for(n=0; n<1000; n++){
    5cb2:	83 c3 01             	add    $0x1,%ebx
    5cb5:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    5cbb:	74 6b                	je     5d28 <forktest+0x98>
    pid = fork();
    5cbd:	e8 09 0c 00 00       	call   68cb <fork>
    if(pid < 0)
    5cc2:	85 c0                	test   %eax,%eax
    5cc4:	79 ea                	jns    5cb0 <forktest+0x20>
  for(; n > 0; n--){
    5cc6:	85 db                	test   %ebx,%ebx
    5cc8:	74 14                	je     5cde <forktest+0x4e>
    5cca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait() < 0){
    5cd0:	e8 06 0c 00 00       	call   68db <wait>
    5cd5:	85 c0                	test   %eax,%eax
    5cd7:	78 28                	js     5d01 <forktest+0x71>
  for(; n > 0; n--){
    5cd9:	83 eb 01             	sub    $0x1,%ebx
    5cdc:	75 f2                	jne    5cd0 <forktest+0x40>
  if(wait() != -1){
    5cde:	e8 f8 0b 00 00       	call   68db <wait>
    5ce3:	83 f8 ff             	cmp    $0xffffffff,%eax
    5ce6:	75 2d                	jne    5d15 <forktest+0x85>
  printf(1, "fork test OK\n");
    5ce8:	83 ec 08             	sub    $0x8,%esp
    5ceb:	68 3a 7b 00 00       	push   $0x7b3a
    5cf0:	6a 01                	push   $0x1
    5cf2:	e8 39 0d 00 00       	call   6a30 <printf>
}
    5cf7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    5cfa:	c9                   	leave  
    5cfb:	c3                   	ret    
      exit();
    5cfc:	e8 d2 0b 00 00       	call   68d3 <exit>
      printf(1, "wait stopped early\n");
    5d01:	83 ec 08             	sub    $0x8,%esp
    5d04:	68 13 7b 00 00       	push   $0x7b13
    5d09:	6a 01                	push   $0x1
    5d0b:	e8 20 0d 00 00       	call   6a30 <printf>
      exit();
    5d10:	e8 be 0b 00 00       	call   68d3 <exit>
    printf(1, "wait got too many\n");
    5d15:	52                   	push   %edx
    5d16:	52                   	push   %edx
    5d17:	68 27 7b 00 00       	push   $0x7b27
    5d1c:	6a 01                	push   $0x1
    5d1e:	e8 0d 0d 00 00       	call   6a30 <printf>
    exit();
    5d23:	e8 ab 0b 00 00       	call   68d3 <exit>
    printf(1, "fork claimed to work 1000 times!\n");
    5d28:	50                   	push   %eax
    5d29:	50                   	push   %eax
    5d2a:	68 a8 82 00 00       	push   $0x82a8
    5d2f:	6a 01                	push   $0x1
    5d31:	e8 fa 0c 00 00       	call   6a30 <printf>
    exit();
    5d36:	e8 98 0b 00 00       	call   68d3 <exit>
    5d3b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    5d3f:	90                   	nop

00005d40 <sbrktest>:
{
    5d40:	55                   	push   %ebp
    5d41:	89 e5                	mov    %esp,%ebp
    5d43:	57                   	push   %edi
    5d44:	56                   	push   %esi
  for(i = 0; i < 5000; i++){
    5d45:	31 f6                	xor    %esi,%esi
{
    5d47:	53                   	push   %ebx
    5d48:	83 ec 64             	sub    $0x64,%esp
  printf(stdout, "sbrk test\n");
    5d4b:	68 48 7b 00 00       	push   $0x7b48
    5d50:	ff 35 48 8e 00 00    	push   0x8e48
    5d56:	e8 d5 0c 00 00       	call   6a30 <printf>
  oldbrk = sbrk(0);
    5d5b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    5d62:	e8 f4 0b 00 00       	call   695b <sbrk>
  a = sbrk(0);
    5d67:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    5d6e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  a = sbrk(0);
    5d71:	e8 e5 0b 00 00       	call   695b <sbrk>
    5d76:	83 c4 10             	add    $0x10,%esp
    5d79:	89 c3                	mov    %eax,%ebx
  for(i = 0; i < 5000; i++){
    5d7b:	eb 05                	jmp    5d82 <sbrktest+0x42>
    5d7d:	8d 76 00             	lea    0x0(%esi),%esi
    a = b + 1;
    5d80:	89 c3                	mov    %eax,%ebx
    b = sbrk(1);
    5d82:	83 ec 0c             	sub    $0xc,%esp
    5d85:	6a 01                	push   $0x1
    5d87:	e8 cf 0b 00 00       	call   695b <sbrk>
    if(b != a){
    5d8c:	83 c4 10             	add    $0x10,%esp
    5d8f:	39 d8                	cmp    %ebx,%eax
    5d91:	0f 85 9c 02 00 00    	jne    6033 <sbrktest+0x2f3>
  for(i = 0; i < 5000; i++){
    5d97:	83 c6 01             	add    $0x1,%esi
    *b = 1;
    5d9a:	c6 03 01             	movb   $0x1,(%ebx)
    a = b + 1;
    5d9d:	8d 43 01             	lea    0x1(%ebx),%eax
  for(i = 0; i < 5000; i++){
    5da0:	81 fe 88 13 00 00    	cmp    $0x1388,%esi
    5da6:	75 d8                	jne    5d80 <sbrktest+0x40>
  pid = fork();
    5da8:	e8 1e 0b 00 00       	call   68cb <fork>
    5dad:	89 c6                	mov    %eax,%esi
  if(pid < 0){
    5daf:	85 c0                	test   %eax,%eax
    5db1:	0f 88 02 03 00 00    	js     60b9 <sbrktest+0x379>
  c = sbrk(1);
    5db7:	83 ec 0c             	sub    $0xc,%esp
  if(c != a + 1){
    5dba:	83 c3 02             	add    $0x2,%ebx
  c = sbrk(1);
    5dbd:	6a 01                	push   $0x1
    5dbf:	e8 97 0b 00 00       	call   695b <sbrk>
  c = sbrk(1);
    5dc4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    5dcb:	e8 8b 0b 00 00       	call   695b <sbrk>
  if(c != a + 1){
    5dd0:	83 c4 10             	add    $0x10,%esp
    5dd3:	39 c3                	cmp    %eax,%ebx
    5dd5:	0f 85 3b 03 00 00    	jne    6116 <sbrktest+0x3d6>
  if(pid == 0)
    5ddb:	85 f6                	test   %esi,%esi
    5ddd:	0f 84 2e 03 00 00    	je     6111 <sbrktest+0x3d1>
  wait();
    5de3:	e8 f3 0a 00 00       	call   68db <wait>
  a = sbrk(0);
    5de8:	83 ec 0c             	sub    $0xc,%esp
    5deb:	6a 00                	push   $0x0
    5ded:	e8 69 0b 00 00       	call   695b <sbrk>
    5df2:	89 c3                	mov    %eax,%ebx
  amt = (BIG) - (uint)a;
    5df4:	b8 00 00 40 06       	mov    $0x6400000,%eax
    5df9:	29 d8                	sub    %ebx,%eax
  p = sbrk(amt);
    5dfb:	89 04 24             	mov    %eax,(%esp)
    5dfe:	e8 58 0b 00 00       	call   695b <sbrk>
  if (p != a) {
    5e03:	83 c4 10             	add    $0x10,%esp
    5e06:	39 c3                	cmp    %eax,%ebx
    5e08:	0f 85 94 02 00 00    	jne    60a2 <sbrktest+0x362>
  a = sbrk(0);
    5e0e:	83 ec 0c             	sub    $0xc,%esp
  *lastaddr = 99;
    5e11:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    5e18:	6a 00                	push   $0x0
    5e1a:	e8 3c 0b 00 00       	call   695b <sbrk>
  c = sbrk(-4096);
    5e1f:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    5e26:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    5e28:	e8 2e 0b 00 00       	call   695b <sbrk>
  if(c == (char*)0xffffffff){
    5e2d:	83 c4 10             	add    $0x10,%esp
    5e30:	83 f8 ff             	cmp    $0xffffffff,%eax
    5e33:	0f 84 22 03 00 00    	je     615b <sbrktest+0x41b>
  c = sbrk(0);
    5e39:	83 ec 0c             	sub    $0xc,%esp
    5e3c:	6a 00                	push   $0x0
    5e3e:	e8 18 0b 00 00       	call   695b <sbrk>
  if(c != a - 4096){
    5e43:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    5e49:	83 c4 10             	add    $0x10,%esp
    5e4c:	39 d0                	cmp    %edx,%eax
    5e4e:	0f 85 f0 02 00 00    	jne    6144 <sbrktest+0x404>
  a = sbrk(0);
    5e54:	83 ec 0c             	sub    $0xc,%esp
    5e57:	6a 00                	push   $0x0
    5e59:	e8 fd 0a 00 00       	call   695b <sbrk>
  c = sbrk(4096);
    5e5e:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
  a = sbrk(0);
    5e65:	89 c3                	mov    %eax,%ebx
  c = sbrk(4096);
    5e67:	e8 ef 0a 00 00       	call   695b <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    5e6c:	83 c4 10             	add    $0x10,%esp
  c = sbrk(4096);
    5e6f:	89 c6                	mov    %eax,%esi
  if(c != a || sbrk(0) != a + 4096){
    5e71:	39 c3                	cmp    %eax,%ebx
    5e73:	0f 85 b4 02 00 00    	jne    612d <sbrktest+0x3ed>
    5e79:	83 ec 0c             	sub    $0xc,%esp
    5e7c:	6a 00                	push   $0x0
    5e7e:	e8 d8 0a 00 00       	call   695b <sbrk>
    5e83:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    5e89:	83 c4 10             	add    $0x10,%esp
    5e8c:	39 c2                	cmp    %eax,%edx
    5e8e:	0f 85 99 02 00 00    	jne    612d <sbrktest+0x3ed>
  if(*lastaddr == 99){
    5e94:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    5e9b:	0f 84 2f 02 00 00    	je     60d0 <sbrktest+0x390>
  a = sbrk(0);
    5ea1:	83 ec 0c             	sub    $0xc,%esp
    5ea4:	6a 00                	push   $0x0
    5ea6:	e8 b0 0a 00 00       	call   695b <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    5eab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    5eb2:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    5eb4:	e8 a2 0a 00 00       	call   695b <sbrk>
    5eb9:	89 c2                	mov    %eax,%edx
    5ebb:	8b 45 a4             	mov    -0x5c(%ebp),%eax
    5ebe:	29 d0                	sub    %edx,%eax
    5ec0:	89 04 24             	mov    %eax,(%esp)
    5ec3:	e8 93 0a 00 00       	call   695b <sbrk>
  if(c != a){
    5ec8:	83 c4 10             	add    $0x10,%esp
    5ecb:	39 c3                	cmp    %eax,%ebx
    5ecd:	0f 85 b8 01 00 00    	jne    608b <sbrktest+0x34b>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    5ed3:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    5ed8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    5edf:	90                   	nop
    ppid = getpid();
    5ee0:	e8 6e 0a 00 00       	call   6953 <getpid>
    5ee5:	89 c6                	mov    %eax,%esi
    pid = fork();
    5ee7:	e8 df 09 00 00       	call   68cb <fork>
    if(pid < 0){
    5eec:	85 c0                	test   %eax,%eax
    5eee:	0f 88 5d 01 00 00    	js     6051 <sbrktest+0x311>
    if(pid == 0){
    5ef4:	0f 84 6f 01 00 00    	je     6069 <sbrktest+0x329>
    wait();
    5efa:	e8 dc 09 00 00       	call   68db <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    5eff:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    5f05:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    5f0b:	75 d3                	jne    5ee0 <sbrktest+0x1a0>
  if(pipe(fds) != 0){
    5f0d:	83 ec 0c             	sub    $0xc,%esp
    5f10:	8d 45 b8             	lea    -0x48(%ebp),%eax
    5f13:	50                   	push   %eax
    5f14:	e8 ca 09 00 00       	call   68e3 <pipe>
    5f19:	83 c4 10             	add    $0x10,%esp
    5f1c:	85 c0                	test   %eax,%eax
    5f1e:	0f 85 da 01 00 00    	jne    60fe <sbrktest+0x3be>
    5f24:	8d 5d c0             	lea    -0x40(%ebp),%ebx
    5f27:	8d 75 e8             	lea    -0x18(%ebp),%esi
    5f2a:	89 df                	mov    %ebx,%edi
    5f2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if((pids[i] = fork()) == 0){
    5f30:	e8 96 09 00 00       	call   68cb <fork>
    5f35:	89 07                	mov    %eax,(%edi)
    5f37:	85 c0                	test   %eax,%eax
    5f39:	0f 84 91 00 00 00    	je     5fd0 <sbrktest+0x290>
    if(pids[i] != -1)
    5f3f:	83 f8 ff             	cmp    $0xffffffff,%eax
    5f42:	74 14                	je     5f58 <sbrktest+0x218>
      read(fds[0], &scratch, 1);
    5f44:	83 ec 04             	sub    $0x4,%esp
    5f47:	8d 45 b7             	lea    -0x49(%ebp),%eax
    5f4a:	6a 01                	push   $0x1
    5f4c:	50                   	push   %eax
    5f4d:	ff 75 b8             	push   -0x48(%ebp)
    5f50:	e8 96 09 00 00       	call   68eb <read>
    5f55:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    5f58:	83 c7 04             	add    $0x4,%edi
    5f5b:	39 f7                	cmp    %esi,%edi
    5f5d:	75 d1                	jne    5f30 <sbrktest+0x1f0>
  c = sbrk(4096);
    5f5f:	83 ec 0c             	sub    $0xc,%esp
    5f62:	68 00 10 00 00       	push   $0x1000
    5f67:	e8 ef 09 00 00       	call   695b <sbrk>
    5f6c:	83 c4 10             	add    $0x10,%esp
    5f6f:	89 c7                	mov    %eax,%edi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    5f71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(pids[i] == -1)
    5f78:	8b 03                	mov    (%ebx),%eax
    5f7a:	83 f8 ff             	cmp    $0xffffffff,%eax
    5f7d:	74 11                	je     5f90 <sbrktest+0x250>
    kill(pids[i]);
    5f7f:	83 ec 0c             	sub    $0xc,%esp
    5f82:	50                   	push   %eax
    5f83:	e8 7b 09 00 00       	call   6903 <kill>
    wait();
    5f88:	e8 4e 09 00 00       	call   68db <wait>
    5f8d:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    5f90:	83 c3 04             	add    $0x4,%ebx
    5f93:	39 de                	cmp    %ebx,%esi
    5f95:	75 e1                	jne    5f78 <sbrktest+0x238>
  if(c == (char*)0xffffffff){
    5f97:	83 ff ff             	cmp    $0xffffffff,%edi
    5f9a:	0f 84 47 01 00 00    	je     60e7 <sbrktest+0x3a7>
  if(sbrk(0) > oldbrk)
    5fa0:	83 ec 0c             	sub    $0xc,%esp
    5fa3:	6a 00                	push   $0x0
    5fa5:	e8 b1 09 00 00       	call   695b <sbrk>
    5faa:	83 c4 10             	add    $0x10,%esp
    5fad:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    5fb0:	72 60                	jb     6012 <sbrktest+0x2d2>
  printf(stdout, "sbrk test OK\n");
    5fb2:	83 ec 08             	sub    $0x8,%esp
    5fb5:	68 f0 7b 00 00       	push   $0x7bf0
    5fba:	ff 35 48 8e 00 00    	push   0x8e48
    5fc0:	e8 6b 0a 00 00       	call   6a30 <printf>
}
    5fc5:	83 c4 10             	add    $0x10,%esp
    5fc8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    5fcb:	5b                   	pop    %ebx
    5fcc:	5e                   	pop    %esi
    5fcd:	5f                   	pop    %edi
    5fce:	5d                   	pop    %ebp
    5fcf:	c3                   	ret    
      sbrk(BIG - (uint)sbrk(0));
    5fd0:	83 ec 0c             	sub    $0xc,%esp
    5fd3:	6a 00                	push   $0x0
    5fd5:	e8 81 09 00 00       	call   695b <sbrk>
    5fda:	89 c2                	mov    %eax,%edx
    5fdc:	b8 00 00 40 06       	mov    $0x6400000,%eax
    5fe1:	29 d0                	sub    %edx,%eax
    5fe3:	89 04 24             	mov    %eax,(%esp)
    5fe6:	e8 70 09 00 00       	call   695b <sbrk>
      write(fds[1], "x", 1);
    5feb:	83 c4 0c             	add    $0xc,%esp
    5fee:	6a 01                	push   $0x1
    5ff0:	68 b1 76 00 00       	push   $0x76b1
    5ff5:	ff 75 bc             	push   -0x44(%ebp)
    5ff8:	e8 f6 08 00 00       	call   68f3 <write>
    5ffd:	83 c4 10             	add    $0x10,%esp
      for(;;) sleep(1000);
    6000:	83 ec 0c             	sub    $0xc,%esp
    6003:	68 e8 03 00 00       	push   $0x3e8
    6008:	e8 56 09 00 00       	call   6963 <sleep>
    600d:	83 c4 10             	add    $0x10,%esp
    6010:	eb ee                	jmp    6000 <sbrktest+0x2c0>
    sbrk(-(sbrk(0) - oldbrk));
    6012:	83 ec 0c             	sub    $0xc,%esp
    6015:	6a 00                	push   $0x0
    6017:	e8 3f 09 00 00       	call   695b <sbrk>
    601c:	89 c2                	mov    %eax,%edx
    601e:	8b 45 a4             	mov    -0x5c(%ebp),%eax
    6021:	29 d0                	sub    %edx,%eax
    6023:	89 04 24             	mov    %eax,(%esp)
    6026:	e8 30 09 00 00       	call   695b <sbrk>
    602b:	83 c4 10             	add    $0x10,%esp
    602e:	e9 7f ff ff ff       	jmp    5fb2 <sbrktest+0x272>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    6033:	83 ec 0c             	sub    $0xc,%esp
    6036:	50                   	push   %eax
    6037:	53                   	push   %ebx
    6038:	56                   	push   %esi
    6039:	68 53 7b 00 00       	push   $0x7b53
    603e:	ff 35 48 8e 00 00    	push   0x8e48
    6044:	e8 e7 09 00 00       	call   6a30 <printf>
      exit();
    6049:	83 c4 20             	add    $0x20,%esp
    604c:	e8 82 08 00 00       	call   68d3 <exit>
      printf(stdout, "fork failed\n");
    6051:	83 ec 08             	sub    $0x8,%esp
    6054:	68 99 7c 00 00       	push   $0x7c99
    6059:	ff 35 48 8e 00 00    	push   0x8e48
    605f:	e8 cc 09 00 00       	call   6a30 <printf>
      exit();
    6064:	e8 6a 08 00 00       	call   68d3 <exit>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    6069:	0f be 03             	movsbl (%ebx),%eax
    606c:	50                   	push   %eax
    606d:	53                   	push   %ebx
    606e:	68 bc 7b 00 00       	push   $0x7bbc
    6073:	ff 35 48 8e 00 00    	push   0x8e48
    6079:	e8 b2 09 00 00       	call   6a30 <printf>
      kill(ppid);
    607e:	89 34 24             	mov    %esi,(%esp)
    6081:	e8 7d 08 00 00       	call   6903 <kill>
      exit();
    6086:	e8 48 08 00 00       	call   68d3 <exit>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    608b:	50                   	push   %eax
    608c:	53                   	push   %ebx
    608d:	68 9c 83 00 00       	push   $0x839c
    6092:	ff 35 48 8e 00 00    	push   0x8e48
    6098:	e8 93 09 00 00       	call   6a30 <printf>
    exit();
    609d:	e8 31 08 00 00       	call   68d3 <exit>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    60a2:	56                   	push   %esi
    60a3:	56                   	push   %esi
    60a4:	68 cc 82 00 00       	push   $0x82cc
    60a9:	ff 35 48 8e 00 00    	push   0x8e48
    60af:	e8 7c 09 00 00       	call   6a30 <printf>
    exit();
    60b4:	e8 1a 08 00 00       	call   68d3 <exit>
    printf(stdout, "sbrk test fork failed\n");
    60b9:	50                   	push   %eax
    60ba:	50                   	push   %eax
    60bb:	68 6e 7b 00 00       	push   $0x7b6e
    60c0:	ff 35 48 8e 00 00    	push   0x8e48
    60c6:	e8 65 09 00 00       	call   6a30 <printf>
    exit();
    60cb:	e8 03 08 00 00       	call   68d3 <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    60d0:	51                   	push   %ecx
    60d1:	51                   	push   %ecx
    60d2:	68 6c 83 00 00       	push   $0x836c
    60d7:	ff 35 48 8e 00 00    	push   0x8e48
    60dd:	e8 4e 09 00 00       	call   6a30 <printf>
    exit();
    60e2:	e8 ec 07 00 00       	call   68d3 <exit>
    printf(stdout, "failed sbrk leaked memory\n");
    60e7:	50                   	push   %eax
    60e8:	50                   	push   %eax
    60e9:	68 d5 7b 00 00       	push   $0x7bd5
    60ee:	ff 35 48 8e 00 00    	push   0x8e48
    60f4:	e8 37 09 00 00       	call   6a30 <printf>
    exit();
    60f9:	e8 d5 07 00 00       	call   68d3 <exit>
    printf(1, "pipe() failed\n");
    60fe:	52                   	push   %edx
    60ff:	52                   	push   %edx
    6100:	68 91 70 00 00       	push   $0x7091
    6105:	6a 01                	push   $0x1
    6107:	e8 24 09 00 00       	call   6a30 <printf>
    exit();
    610c:	e8 c2 07 00 00       	call   68d3 <exit>
    exit();
    6111:	e8 bd 07 00 00       	call   68d3 <exit>
    printf(stdout, "sbrk test failed post-fork\n");
    6116:	57                   	push   %edi
    6117:	57                   	push   %edi
    6118:	68 85 7b 00 00       	push   $0x7b85
    611d:	ff 35 48 8e 00 00    	push   0x8e48
    6123:	e8 08 09 00 00       	call   6a30 <printf>
    exit();
    6128:	e8 a6 07 00 00       	call   68d3 <exit>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    612d:	56                   	push   %esi
    612e:	53                   	push   %ebx
    612f:	68 44 83 00 00       	push   $0x8344
    6134:	ff 35 48 8e 00 00    	push   0x8e48
    613a:	e8 f1 08 00 00       	call   6a30 <printf>
    exit();
    613f:	e8 8f 07 00 00       	call   68d3 <exit>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    6144:	50                   	push   %eax
    6145:	53                   	push   %ebx
    6146:	68 0c 83 00 00       	push   $0x830c
    614b:	ff 35 48 8e 00 00    	push   0x8e48
    6151:	e8 da 08 00 00       	call   6a30 <printf>
    exit();
    6156:	e8 78 07 00 00       	call   68d3 <exit>
    printf(stdout, "sbrk could not deallocate\n");
    615b:	53                   	push   %ebx
    615c:	53                   	push   %ebx
    615d:	68 a1 7b 00 00       	push   $0x7ba1
    6162:	ff 35 48 8e 00 00    	push   0x8e48
    6168:	e8 c3 08 00 00       	call   6a30 <printf>
    exit();
    616d:	e8 61 07 00 00       	call   68d3 <exit>
    6172:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    6179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00006180 <validateint>:
}
    6180:	c3                   	ret    
    6181:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    6188:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    618f:	90                   	nop

00006190 <validatetest>:
{
    6190:	55                   	push   %ebp
    6191:	89 e5                	mov    %esp,%ebp
    6193:	56                   	push   %esi
  for(p = 0; p <= (uint)hi; p += 4096){
    6194:	31 f6                	xor    %esi,%esi
{
    6196:	53                   	push   %ebx
  printf(stdout, "validate test\n");
    6197:	83 ec 08             	sub    $0x8,%esp
    619a:	68 fe 7b 00 00       	push   $0x7bfe
    619f:	ff 35 48 8e 00 00    	push   0x8e48
    61a5:	e8 86 08 00 00       	call   6a30 <printf>
    61aa:	83 c4 10             	add    $0x10,%esp
    61ad:	8d 76 00             	lea    0x0(%esi),%esi
    if((pid = fork()) == 0){
    61b0:	e8 16 07 00 00       	call   68cb <fork>
    61b5:	89 c3                	mov    %eax,%ebx
    61b7:	85 c0                	test   %eax,%eax
    61b9:	74 63                	je     621e <validatetest+0x8e>
    sleep(0);
    61bb:	83 ec 0c             	sub    $0xc,%esp
    61be:	6a 00                	push   $0x0
    61c0:	e8 9e 07 00 00       	call   6963 <sleep>
    sleep(0);
    61c5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    61cc:	e8 92 07 00 00       	call   6963 <sleep>
    kill(pid);
    61d1:	89 1c 24             	mov    %ebx,(%esp)
    61d4:	e8 2a 07 00 00       	call   6903 <kill>
    wait();
    61d9:	e8 fd 06 00 00       	call   68db <wait>
    if(link("nosuchfile", (char*)p) != -1){
    61de:	58                   	pop    %eax
    61df:	5a                   	pop    %edx
    61e0:	56                   	push   %esi
    61e1:	68 0d 7c 00 00       	push   $0x7c0d
    61e6:	e8 48 07 00 00       	call   6933 <link>
    61eb:	83 c4 10             	add    $0x10,%esp
    61ee:	83 f8 ff             	cmp    $0xffffffff,%eax
    61f1:	75 30                	jne    6223 <validatetest+0x93>
  for(p = 0; p <= (uint)hi; p += 4096){
    61f3:	81 c6 00 10 00 00    	add    $0x1000,%esi
    61f9:	81 fe 00 40 11 00    	cmp    $0x114000,%esi
    61ff:	75 af                	jne    61b0 <validatetest+0x20>
  printf(stdout, "validate ok\n");
    6201:	83 ec 08             	sub    $0x8,%esp
    6204:	68 31 7c 00 00       	push   $0x7c31
    6209:	ff 35 48 8e 00 00    	push   0x8e48
    620f:	e8 1c 08 00 00       	call   6a30 <printf>
}
    6214:	83 c4 10             	add    $0x10,%esp
    6217:	8d 65 f8             	lea    -0x8(%ebp),%esp
    621a:	5b                   	pop    %ebx
    621b:	5e                   	pop    %esi
    621c:	5d                   	pop    %ebp
    621d:	c3                   	ret    
      exit();
    621e:	e8 b0 06 00 00       	call   68d3 <exit>
      printf(stdout, "link should not succeed\n");
    6223:	83 ec 08             	sub    $0x8,%esp
    6226:	68 18 7c 00 00       	push   $0x7c18
    622b:	ff 35 48 8e 00 00    	push   0x8e48
    6231:	e8 fa 07 00 00       	call   6a30 <printf>
      exit();
    6236:	e8 98 06 00 00       	call   68d3 <exit>
    623b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    623f:	90                   	nop

00006240 <bsstest>:
{
    6240:	55                   	push   %ebp
    6241:	89 e5                	mov    %esp,%ebp
    6243:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "bss test\n");
    6246:	68 3e 7c 00 00       	push   $0x7c3e
    624b:	ff 35 48 8e 00 00    	push   0x8e48
    6251:	e8 da 07 00 00       	call   6a30 <printf>
    6256:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(uninit); i++){
    6259:	31 c0                	xor    %eax,%eax
    625b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    625f:	90                   	nop
    if(uninit[i] != '\0'){
    6260:	80 b8 60 8e 00 00 00 	cmpb   $0x0,0x8e60(%eax)
    6267:	75 22                	jne    628b <bsstest+0x4b>
  for(i = 0; i < sizeof(uninit); i++){
    6269:	83 c0 01             	add    $0x1,%eax
    626c:	3d 10 27 00 00       	cmp    $0x2710,%eax
    6271:	75 ed                	jne    6260 <bsstest+0x20>
  printf(stdout, "bss test ok\n");
    6273:	83 ec 08             	sub    $0x8,%esp
    6276:	68 59 7c 00 00       	push   $0x7c59
    627b:	ff 35 48 8e 00 00    	push   0x8e48
    6281:	e8 aa 07 00 00       	call   6a30 <printf>
}
    6286:	83 c4 10             	add    $0x10,%esp
    6289:	c9                   	leave  
    628a:	c3                   	ret    
      printf(stdout, "bss test failed\n");
    628b:	83 ec 08             	sub    $0x8,%esp
    628e:	68 48 7c 00 00       	push   $0x7c48
    6293:	ff 35 48 8e 00 00    	push   0x8e48
    6299:	e8 92 07 00 00       	call   6a30 <printf>
      exit();
    629e:	e8 30 06 00 00       	call   68d3 <exit>
    62a3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    62aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000062b0 <bigargtest>:
{
    62b0:	55                   	push   %ebp
    62b1:	89 e5                	mov    %esp,%ebp
    62b3:	83 ec 14             	sub    $0x14,%esp
  unlink("bigarg-ok");
    62b6:	68 66 7c 00 00       	push   $0x7c66
    62bb:	e8 63 06 00 00       	call   6923 <unlink>
  pid = fork();
    62c0:	e8 06 06 00 00       	call   68cb <fork>
  if(pid == 0){
    62c5:	83 c4 10             	add    $0x10,%esp
    62c8:	85 c0                	test   %eax,%eax
    62ca:	74 44                	je     6310 <bigargtest+0x60>
  } else if(pid < 0){
    62cc:	0f 88 c5 00 00 00    	js     6397 <bigargtest+0xe7>
  wait();
    62d2:	e8 04 06 00 00       	call   68db <wait>
  fd = open("bigarg-ok", 0);
    62d7:	83 ec 08             	sub    $0x8,%esp
    62da:	6a 00                	push   $0x0
    62dc:	68 66 7c 00 00       	push   $0x7c66
    62e1:	e8 2d 06 00 00       	call   6913 <open>
  if(fd < 0){
    62e6:	83 c4 10             	add    $0x10,%esp
    62e9:	85 c0                	test   %eax,%eax
    62eb:	0f 88 8f 00 00 00    	js     6380 <bigargtest+0xd0>
  close(fd);
    62f1:	83 ec 0c             	sub    $0xc,%esp
    62f4:	50                   	push   %eax
    62f5:	e8 01 06 00 00       	call   68fb <close>
  unlink("bigarg-ok");
    62fa:	c7 04 24 66 7c 00 00 	movl   $0x7c66,(%esp)
    6301:	e8 1d 06 00 00       	call   6923 <unlink>
}
    6306:	83 c4 10             	add    $0x10,%esp
    6309:	c9                   	leave  
    630a:	c3                   	ret    
    630b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    630f:	90                   	nop
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    6310:	c7 04 85 80 d5 00 00 	movl   $0x83c0,0xd580(,%eax,4)
    6317:	c0 83 00 00 
    for(i = 0; i < MAXARG-1; i++)
    631b:	83 c0 01             	add    $0x1,%eax
    631e:	83 f8 1f             	cmp    $0x1f,%eax
    6321:	75 ed                	jne    6310 <bigargtest+0x60>
    printf(stdout, "bigarg test\n");
    6323:	51                   	push   %ecx
    6324:	51                   	push   %ecx
    6325:	68 70 7c 00 00       	push   $0x7c70
    632a:	ff 35 48 8e 00 00    	push   0x8e48
    args[MAXARG-1] = 0;
    6330:	c7 05 fc d5 00 00 00 	movl   $0x0,0xd5fc
    6337:	00 00 00 
    printf(stdout, "bigarg test\n");
    633a:	e8 f1 06 00 00       	call   6a30 <printf>
    exec("echo", args);
    633f:	58                   	pop    %eax
    6340:	5a                   	pop    %edx
    6341:	68 80 d5 00 00       	push   $0xd580
    6346:	68 3d 6e 00 00       	push   $0x6e3d
    634b:	e8 bb 05 00 00       	call   690b <exec>
    printf(stdout, "bigarg test ok\n");
    6350:	59                   	pop    %ecx
    6351:	58                   	pop    %eax
    6352:	68 7d 7c 00 00       	push   $0x7c7d
    6357:	ff 35 48 8e 00 00    	push   0x8e48
    635d:	e8 ce 06 00 00       	call   6a30 <printf>
    fd = open("bigarg-ok", O_CREATE);
    6362:	58                   	pop    %eax
    6363:	5a                   	pop    %edx
    6364:	68 00 02 00 00       	push   $0x200
    6369:	68 66 7c 00 00       	push   $0x7c66
    636e:	e8 a0 05 00 00       	call   6913 <open>
    close(fd);
    6373:	89 04 24             	mov    %eax,(%esp)
    6376:	e8 80 05 00 00       	call   68fb <close>
    exit();
    637b:	e8 53 05 00 00       	call   68d3 <exit>
    printf(stdout, "bigarg test failed!\n");
    6380:	50                   	push   %eax
    6381:	50                   	push   %eax
    6382:	68 a6 7c 00 00       	push   $0x7ca6
    6387:	ff 35 48 8e 00 00    	push   0x8e48
    638d:	e8 9e 06 00 00       	call   6a30 <printf>
    exit();
    6392:	e8 3c 05 00 00       	call   68d3 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    6397:	52                   	push   %edx
    6398:	52                   	push   %edx
    6399:	68 8d 7c 00 00       	push   $0x7c8d
    639e:	ff 35 48 8e 00 00    	push   0x8e48
    63a4:	e8 87 06 00 00       	call   6a30 <printf>
    exit();
    63a9:	e8 25 05 00 00       	call   68d3 <exit>
    63ae:	66 90                	xchg   %ax,%ax

000063b0 <fsfull>:
{
    63b0:	55                   	push   %ebp
    63b1:	89 e5                	mov    %esp,%ebp
    63b3:	57                   	push   %edi
    63b4:	56                   	push   %esi
  for(nfiles = 0; ; nfiles++){
    63b5:	31 f6                	xor    %esi,%esi
{
    63b7:	53                   	push   %ebx
    63b8:	83 ec 54             	sub    $0x54,%esp
  printf(1, "fsfull test\n");
    63bb:	68 bb 7c 00 00       	push   $0x7cbb
    63c0:	6a 01                	push   $0x1
    63c2:	e8 69 06 00 00       	call   6a30 <printf>
    63c7:	83 c4 10             	add    $0x10,%esp
    63ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    name[1] = '0' + nfiles / 1000;
    63d0:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    63d5:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    printf(1, "writing %s\n", name);
    63da:	83 ec 04             	sub    $0x4,%esp
    name[0] = 'f';
    63dd:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    63e1:	f7 e6                	mul    %esi
    name[5] = '\0';
    63e3:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    63e7:	c1 ea 06             	shr    $0x6,%edx
    63ea:	8d 42 30             	lea    0x30(%edx),%eax
    63ed:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    63f0:	69 c2 e8 03 00 00    	imul   $0x3e8,%edx,%eax
    63f6:	89 f2                	mov    %esi,%edx
    63f8:	29 c2                	sub    %eax,%edx
    63fa:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    63ff:	f7 e2                	mul    %edx
    name[3] = '0' + (nfiles % 100) / 10;
    6401:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    6406:	c1 ea 05             	shr    $0x5,%edx
    6409:	83 c2 30             	add    $0x30,%edx
    640c:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    640f:	f7 e6                	mul    %esi
    6411:	c1 ea 05             	shr    $0x5,%edx
    6414:	6b c2 64             	imul   $0x64,%edx,%eax
    6417:	89 f2                	mov    %esi,%edx
    6419:	29 c2                	sub    %eax,%edx
    641b:	89 d0                	mov    %edx,%eax
    641d:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    641f:	89 f0                	mov    %esi,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    6421:	c1 ea 03             	shr    $0x3,%edx
    6424:	83 c2 30             	add    $0x30,%edx
    6427:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    642a:	f7 e1                	mul    %ecx
    642c:	89 f0                	mov    %esi,%eax
    642e:	c1 ea 03             	shr    $0x3,%edx
    6431:	8d 14 92             	lea    (%edx,%edx,4),%edx
    6434:	01 d2                	add    %edx,%edx
    6436:	29 d0                	sub    %edx,%eax
    6438:	83 c0 30             	add    $0x30,%eax
    643b:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    643e:	8d 45 a8             	lea    -0x58(%ebp),%eax
    6441:	50                   	push   %eax
    6442:	68 c8 7c 00 00       	push   $0x7cc8
    6447:	6a 01                	push   $0x1
    6449:	e8 e2 05 00 00       	call   6a30 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    644e:	58                   	pop    %eax
    644f:	8d 45 a8             	lea    -0x58(%ebp),%eax
    6452:	5a                   	pop    %edx
    6453:	68 02 02 00 00       	push   $0x202
    6458:	50                   	push   %eax
    6459:	e8 b5 04 00 00       	call   6913 <open>
    if(fd < 0){
    645e:	83 c4 10             	add    $0x10,%esp
    int fd = open(name, O_CREATE|O_RDWR);
    6461:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    6463:	85 c0                	test   %eax,%eax
    6465:	78 4f                	js     64b6 <fsfull+0x106>
    int total = 0;
    6467:	31 db                	xor    %ebx,%ebx
    6469:	eb 07                	jmp    6472 <fsfull+0xc2>
    646b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    646f:	90                   	nop
      total += cc;
    6470:	01 c3                	add    %eax,%ebx
      int cc = write(fd, buf, 512);
    6472:	83 ec 04             	sub    $0x4,%esp
    6475:	68 00 02 00 00       	push   $0x200
    647a:	68 80 b5 00 00       	push   $0xb580
    647f:	57                   	push   %edi
    6480:	e8 6e 04 00 00       	call   68f3 <write>
      if(cc < 512)
    6485:	83 c4 10             	add    $0x10,%esp
    6488:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    648d:	7f e1                	jg     6470 <fsfull+0xc0>
    printf(1, "wrote %d bytes\n", total);
    648f:	83 ec 04             	sub    $0x4,%esp
    6492:	53                   	push   %ebx
    6493:	68 e4 7c 00 00       	push   $0x7ce4
    6498:	6a 01                	push   $0x1
    649a:	e8 91 05 00 00       	call   6a30 <printf>
    close(fd);
    649f:	89 3c 24             	mov    %edi,(%esp)
    64a2:	e8 54 04 00 00       	call   68fb <close>
    if(total == 0)
    64a7:	83 c4 10             	add    $0x10,%esp
    64aa:	85 db                	test   %ebx,%ebx
    64ac:	74 1e                	je     64cc <fsfull+0x11c>
  for(nfiles = 0; ; nfiles++){
    64ae:	83 c6 01             	add    $0x1,%esi
    64b1:	e9 1a ff ff ff       	jmp    63d0 <fsfull+0x20>
      printf(1, "open %s failed\n", name);
    64b6:	83 ec 04             	sub    $0x4,%esp
    64b9:	8d 45 a8             	lea    -0x58(%ebp),%eax
    64bc:	50                   	push   %eax
    64bd:	68 d4 7c 00 00       	push   $0x7cd4
    64c2:	6a 01                	push   $0x1
    64c4:	e8 67 05 00 00       	call   6a30 <printf>
      break;
    64c9:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + nfiles / 1000;
    64cc:	bf d3 4d 62 10       	mov    $0x10624dd3,%edi
    name[2] = '0' + (nfiles % 1000) / 100;
    64d1:	bb 1f 85 eb 51       	mov    $0x51eb851f,%ebx
    64d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    64dd:	8d 76 00             	lea    0x0(%esi),%esi
    name[1] = '0' + nfiles / 1000;
    64e0:	89 f0                	mov    %esi,%eax
    unlink(name);
    64e2:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'f';
    64e5:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    64e9:	f7 e7                	mul    %edi
    name[5] = '\0';
    64eb:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    64ef:	c1 ea 06             	shr    $0x6,%edx
    64f2:	8d 42 30             	lea    0x30(%edx),%eax
    64f5:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    64f8:	69 c2 e8 03 00 00    	imul   $0x3e8,%edx,%eax
    64fe:	89 f2                	mov    %esi,%edx
    6500:	29 c2                	sub    %eax,%edx
    6502:	89 d0                	mov    %edx,%eax
    6504:	f7 e3                	mul    %ebx
    name[3] = '0' + (nfiles % 100) / 10;
    6506:	89 f0                	mov    %esi,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    6508:	c1 ea 05             	shr    $0x5,%edx
    650b:	83 c2 30             	add    $0x30,%edx
    650e:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    6511:	f7 e3                	mul    %ebx
    6513:	c1 ea 05             	shr    $0x5,%edx
    6516:	6b ca 64             	imul   $0x64,%edx,%ecx
    6519:	89 f2                	mov    %esi,%edx
    651b:	29 ca                	sub    %ecx,%edx
    651d:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    6522:	89 d0                	mov    %edx,%eax
    6524:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    6526:	89 f0                	mov    %esi,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    6528:	c1 ea 03             	shr    $0x3,%edx
    652b:	83 c2 30             	add    $0x30,%edx
    652e:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    6531:	f7 e1                	mul    %ecx
    6533:	89 f0                	mov    %esi,%eax
    nfiles--;
    6535:	83 ee 01             	sub    $0x1,%esi
    name[4] = '0' + (nfiles % 10);
    6538:	c1 ea 03             	shr    $0x3,%edx
    653b:	8d 14 92             	lea    (%edx,%edx,4),%edx
    653e:	01 d2                	add    %edx,%edx
    6540:	29 d0                	sub    %edx,%eax
    6542:	83 c0 30             	add    $0x30,%eax
    6545:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    6548:	8d 45 a8             	lea    -0x58(%ebp),%eax
    654b:	50                   	push   %eax
    654c:	e8 d2 03 00 00       	call   6923 <unlink>
  while(nfiles >= 0){
    6551:	83 c4 10             	add    $0x10,%esp
    6554:	83 fe ff             	cmp    $0xffffffff,%esi
    6557:	75 87                	jne    64e0 <fsfull+0x130>
  printf(1, "fsfull test finished\n");
    6559:	83 ec 08             	sub    $0x8,%esp
    655c:	68 f4 7c 00 00       	push   $0x7cf4
    6561:	6a 01                	push   $0x1
    6563:	e8 c8 04 00 00       	call   6a30 <printf>
}
    6568:	83 c4 10             	add    $0x10,%esp
    656b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    656e:	5b                   	pop    %ebx
    656f:	5e                   	pop    %esi
    6570:	5f                   	pop    %edi
    6571:	5d                   	pop    %ebp
    6572:	c3                   	ret    
    6573:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    657a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00006580 <uio>:
{
    6580:	55                   	push   %ebp
    6581:	89 e5                	mov    %esp,%ebp
    6583:	83 ec 10             	sub    $0x10,%esp
  printf(1, "uio test\n");
    6586:	68 0a 7d 00 00       	push   $0x7d0a
    658b:	6a 01                	push   $0x1
    658d:	e8 9e 04 00 00       	call   6a30 <printf>
  pid = fork();
    6592:	e8 34 03 00 00       	call   68cb <fork>
  if(pid == 0){
    6597:	83 c4 10             	add    $0x10,%esp
    659a:	85 c0                	test   %eax,%eax
    659c:	74 1b                	je     65b9 <uio+0x39>
  } else if(pid < 0){
    659e:	78 3d                	js     65dd <uio+0x5d>
  wait();
    65a0:	e8 36 03 00 00       	call   68db <wait>
  printf(1, "uio test done\n");
    65a5:	83 ec 08             	sub    $0x8,%esp
    65a8:	68 14 7d 00 00       	push   $0x7d14
    65ad:	6a 01                	push   $0x1
    65af:	e8 7c 04 00 00       	call   6a30 <printf>
}
    65b4:	83 c4 10             	add    $0x10,%esp
    65b7:	c9                   	leave  
    65b8:	c3                   	ret    
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    65b9:	b8 09 00 00 00       	mov    $0x9,%eax
    65be:	ba 70 00 00 00       	mov    $0x70,%edx
    65c3:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    65c4:	ba 71 00 00 00       	mov    $0x71,%edx
    65c9:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    65ca:	52                   	push   %edx
    65cb:	52                   	push   %edx
    65cc:	68 a0 84 00 00       	push   $0x84a0
    65d1:	6a 01                	push   $0x1
    65d3:	e8 58 04 00 00       	call   6a30 <printf>
    exit();
    65d8:	e8 f6 02 00 00       	call   68d3 <exit>
    printf (1, "fork failed\n");
    65dd:	50                   	push   %eax
    65de:	50                   	push   %eax
    65df:	68 99 7c 00 00       	push   $0x7c99
    65e4:	6a 01                	push   $0x1
    65e6:	e8 45 04 00 00       	call   6a30 <printf>
    exit();
    65eb:	e8 e3 02 00 00       	call   68d3 <exit>

000065f0 <argptest>:
{
    65f0:	55                   	push   %ebp
    65f1:	89 e5                	mov    %esp,%ebp
    65f3:	53                   	push   %ebx
    65f4:	83 ec 0c             	sub    $0xc,%esp
  fd = open("init", O_RDONLY);
    65f7:	6a 00                	push   $0x0
    65f9:	68 23 7d 00 00       	push   $0x7d23
    65fe:	e8 10 03 00 00       	call   6913 <open>
  if (fd < 0) {
    6603:	83 c4 10             	add    $0x10,%esp
    6606:	85 c0                	test   %eax,%eax
    6608:	78 39                	js     6643 <argptest+0x53>
  read(fd, sbrk(0) - 1, -1);
    660a:	83 ec 0c             	sub    $0xc,%esp
    660d:	89 c3                	mov    %eax,%ebx
    660f:	6a 00                	push   $0x0
    6611:	e8 45 03 00 00       	call   695b <sbrk>
    6616:	83 c4 0c             	add    $0xc,%esp
    6619:	83 e8 01             	sub    $0x1,%eax
    661c:	6a ff                	push   $0xffffffff
    661e:	50                   	push   %eax
    661f:	53                   	push   %ebx
    6620:	e8 c6 02 00 00       	call   68eb <read>
  close(fd);
    6625:	89 1c 24             	mov    %ebx,(%esp)
    6628:	e8 ce 02 00 00       	call   68fb <close>
  printf(1, "arg test passed\n");
    662d:	58                   	pop    %eax
    662e:	5a                   	pop    %edx
    662f:	68 35 7d 00 00       	push   $0x7d35
    6634:	6a 01                	push   $0x1
    6636:	e8 f5 03 00 00       	call   6a30 <printf>
}
    663b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    663e:	83 c4 10             	add    $0x10,%esp
    6641:	c9                   	leave  
    6642:	c3                   	ret    
    printf(2, "open failed\n");
    6643:	51                   	push   %ecx
    6644:	51                   	push   %ecx
    6645:	68 28 7d 00 00       	push   $0x7d28
    664a:	6a 02                	push   $0x2
    664c:	e8 df 03 00 00       	call   6a30 <printf>
    exit();
    6651:	e8 7d 02 00 00       	call   68d3 <exit>
    6656:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    665d:	8d 76 00             	lea    0x0(%esi),%esi

00006660 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    6660:	69 05 44 8e 00 00 0d 	imul   $0x19660d,0x8e44,%eax
    6667:	66 19 00 
    666a:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    666f:	a3 44 8e 00 00       	mov    %eax,0x8e44
}
    6674:	c3                   	ret    
    6675:	66 90                	xchg   %ax,%ax
    6677:	66 90                	xchg   %ax,%ax
    6679:	66 90                	xchg   %ax,%ax
    667b:	66 90                	xchg   %ax,%ax
    667d:	66 90                	xchg   %ax,%ax
    667f:	90                   	nop

00006680 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    6680:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    6681:	31 c0                	xor    %eax,%eax
{
    6683:	89 e5                	mov    %esp,%ebp
    6685:	53                   	push   %ebx
    6686:	8b 4d 08             	mov    0x8(%ebp),%ecx
    6689:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    668c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
    6690:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    6694:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    6697:	83 c0 01             	add    $0x1,%eax
    669a:	84 d2                	test   %dl,%dl
    669c:	75 f2                	jne    6690 <strcpy+0x10>
    ;
  return os;
}
    669e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    66a1:	89 c8                	mov    %ecx,%eax
    66a3:	c9                   	leave  
    66a4:	c3                   	ret    
    66a5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    66ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000066b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    66b0:	55                   	push   %ebp
    66b1:	89 e5                	mov    %esp,%ebp
    66b3:	53                   	push   %ebx
    66b4:	8b 55 08             	mov    0x8(%ebp),%edx
    66b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    66ba:	0f b6 02             	movzbl (%edx),%eax
    66bd:	84 c0                	test   %al,%al
    66bf:	75 17                	jne    66d8 <strcmp+0x28>
    66c1:	eb 3a                	jmp    66fd <strcmp+0x4d>
    66c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    66c7:	90                   	nop
    66c8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
    66cc:	83 c2 01             	add    $0x1,%edx
    66cf:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    66d2:	84 c0                	test   %al,%al
    66d4:	74 1a                	je     66f0 <strcmp+0x40>
    p++, q++;
    66d6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
    66d8:	0f b6 19             	movzbl (%ecx),%ebx
    66db:	38 c3                	cmp    %al,%bl
    66dd:	74 e9                	je     66c8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
    66df:	29 d8                	sub    %ebx,%eax
}
    66e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    66e4:	c9                   	leave  
    66e5:	c3                   	ret    
    66e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    66ed:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
    66f0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    66f4:	31 c0                	xor    %eax,%eax
    66f6:	29 d8                	sub    %ebx,%eax
}
    66f8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    66fb:	c9                   	leave  
    66fc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
    66fd:	0f b6 19             	movzbl (%ecx),%ebx
    6700:	31 c0                	xor    %eax,%eax
    6702:	eb db                	jmp    66df <strcmp+0x2f>
    6704:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    670b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    670f:	90                   	nop

00006710 <strlen>:

uint
strlen(const char *s)
{
    6710:	55                   	push   %ebp
    6711:	89 e5                	mov    %esp,%ebp
    6713:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    6716:	80 3a 00             	cmpb   $0x0,(%edx)
    6719:	74 15                	je     6730 <strlen+0x20>
    671b:	31 c0                	xor    %eax,%eax
    671d:	8d 76 00             	lea    0x0(%esi),%esi
    6720:	83 c0 01             	add    $0x1,%eax
    6723:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    6727:	89 c1                	mov    %eax,%ecx
    6729:	75 f5                	jne    6720 <strlen+0x10>
    ;
  return n;
}
    672b:	89 c8                	mov    %ecx,%eax
    672d:	5d                   	pop    %ebp
    672e:	c3                   	ret    
    672f:	90                   	nop
  for(n = 0; s[n]; n++)
    6730:	31 c9                	xor    %ecx,%ecx
}
    6732:	5d                   	pop    %ebp
    6733:	89 c8                	mov    %ecx,%eax
    6735:	c3                   	ret    
    6736:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    673d:	8d 76 00             	lea    0x0(%esi),%esi

00006740 <memset>:

void*
memset(void *dst, int c, uint n)
{
    6740:	55                   	push   %ebp
    6741:	89 e5                	mov    %esp,%ebp
    6743:	57                   	push   %edi
    6744:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    6747:	8b 4d 10             	mov    0x10(%ebp),%ecx
    674a:	8b 45 0c             	mov    0xc(%ebp),%eax
    674d:	89 d7                	mov    %edx,%edi
    674f:	fc                   	cld    
    6750:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    6752:	8b 7d fc             	mov    -0x4(%ebp),%edi
    6755:	89 d0                	mov    %edx,%eax
    6757:	c9                   	leave  
    6758:	c3                   	ret    
    6759:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00006760 <strchr>:

char*
strchr(const char *s, char c)
{
    6760:	55                   	push   %ebp
    6761:	89 e5                	mov    %esp,%ebp
    6763:	8b 45 08             	mov    0x8(%ebp),%eax
    6766:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    676a:	0f b6 10             	movzbl (%eax),%edx
    676d:	84 d2                	test   %dl,%dl
    676f:	75 12                	jne    6783 <strchr+0x23>
    6771:	eb 1d                	jmp    6790 <strchr+0x30>
    6773:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    6777:	90                   	nop
    6778:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    677c:	83 c0 01             	add    $0x1,%eax
    677f:	84 d2                	test   %dl,%dl
    6781:	74 0d                	je     6790 <strchr+0x30>
    if(*s == c)
    6783:	38 d1                	cmp    %dl,%cl
    6785:	75 f1                	jne    6778 <strchr+0x18>
      return (char*)s;
  return 0;
}
    6787:	5d                   	pop    %ebp
    6788:	c3                   	ret    
    6789:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    6790:	31 c0                	xor    %eax,%eax
}
    6792:	5d                   	pop    %ebp
    6793:	c3                   	ret    
    6794:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    679b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    679f:	90                   	nop

000067a0 <gets>:

char*
gets(char *buf, int max)
{
    67a0:	55                   	push   %ebp
    67a1:	89 e5                	mov    %esp,%ebp
    67a3:	57                   	push   %edi
    67a4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    67a5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
    67a8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
    67a9:	31 db                	xor    %ebx,%ebx
{
    67ab:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
    67ae:	eb 27                	jmp    67d7 <gets+0x37>
    cc = read(0, &c, 1);
    67b0:	83 ec 04             	sub    $0x4,%esp
    67b3:	6a 01                	push   $0x1
    67b5:	57                   	push   %edi
    67b6:	6a 00                	push   $0x0
    67b8:	e8 2e 01 00 00       	call   68eb <read>
    if(cc < 1)
    67bd:	83 c4 10             	add    $0x10,%esp
    67c0:	85 c0                	test   %eax,%eax
    67c2:	7e 1d                	jle    67e1 <gets+0x41>
      break;
    buf[i++] = c;
    67c4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    67c8:	8b 55 08             	mov    0x8(%ebp),%edx
    67cb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    67cf:	3c 0a                	cmp    $0xa,%al
    67d1:	74 1d                	je     67f0 <gets+0x50>
    67d3:	3c 0d                	cmp    $0xd,%al
    67d5:	74 19                	je     67f0 <gets+0x50>
  for(i=0; i+1 < max; ){
    67d7:	89 de                	mov    %ebx,%esi
    67d9:	83 c3 01             	add    $0x1,%ebx
    67dc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    67df:	7c cf                	jl     67b0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    67e1:	8b 45 08             	mov    0x8(%ebp),%eax
    67e4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    67e8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    67eb:	5b                   	pop    %ebx
    67ec:	5e                   	pop    %esi
    67ed:	5f                   	pop    %edi
    67ee:	5d                   	pop    %ebp
    67ef:	c3                   	ret    
  buf[i] = '\0';
    67f0:	8b 45 08             	mov    0x8(%ebp),%eax
    67f3:	89 de                	mov    %ebx,%esi
    67f5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
    67f9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    67fc:	5b                   	pop    %ebx
    67fd:	5e                   	pop    %esi
    67fe:	5f                   	pop    %edi
    67ff:	5d                   	pop    %ebp
    6800:	c3                   	ret    
    6801:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    6808:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    680f:	90                   	nop

00006810 <stat>:

int
stat(const char *n, struct stat *st)
{
    6810:	55                   	push   %ebp
    6811:	89 e5                	mov    %esp,%ebp
    6813:	56                   	push   %esi
    6814:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    6815:	83 ec 08             	sub    $0x8,%esp
    6818:	6a 00                	push   $0x0
    681a:	ff 75 08             	push   0x8(%ebp)
    681d:	e8 f1 00 00 00       	call   6913 <open>
  if(fd < 0)
    6822:	83 c4 10             	add    $0x10,%esp
    6825:	85 c0                	test   %eax,%eax
    6827:	78 27                	js     6850 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    6829:	83 ec 08             	sub    $0x8,%esp
    682c:	ff 75 0c             	push   0xc(%ebp)
    682f:	89 c3                	mov    %eax,%ebx
    6831:	50                   	push   %eax
    6832:	e8 f4 00 00 00       	call   692b <fstat>
  close(fd);
    6837:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    683a:	89 c6                	mov    %eax,%esi
  close(fd);
    683c:	e8 ba 00 00 00       	call   68fb <close>
  return r;
    6841:	83 c4 10             	add    $0x10,%esp
}
    6844:	8d 65 f8             	lea    -0x8(%ebp),%esp
    6847:	89 f0                	mov    %esi,%eax
    6849:	5b                   	pop    %ebx
    684a:	5e                   	pop    %esi
    684b:	5d                   	pop    %ebp
    684c:	c3                   	ret    
    684d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    6850:	be ff ff ff ff       	mov    $0xffffffff,%esi
    6855:	eb ed                	jmp    6844 <stat+0x34>
    6857:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    685e:	66 90                	xchg   %ax,%ax

00006860 <atoi>:

int
atoi(const char *s)
{
    6860:	55                   	push   %ebp
    6861:	89 e5                	mov    %esp,%ebp
    6863:	53                   	push   %ebx
    6864:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    6867:	0f be 02             	movsbl (%edx),%eax
    686a:	8d 48 d0             	lea    -0x30(%eax),%ecx
    686d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    6870:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    6875:	77 1e                	ja     6895 <atoi+0x35>
    6877:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    687e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    6880:	83 c2 01             	add    $0x1,%edx
    6883:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    6886:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    688a:	0f be 02             	movsbl (%edx),%eax
    688d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    6890:	80 fb 09             	cmp    $0x9,%bl
    6893:	76 eb                	jbe    6880 <atoi+0x20>
  return n;
}
    6895:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    6898:	89 c8                	mov    %ecx,%eax
    689a:	c9                   	leave  
    689b:	c3                   	ret    
    689c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000068a0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    68a0:	55                   	push   %ebp
    68a1:	89 e5                	mov    %esp,%ebp
    68a3:	57                   	push   %edi
    68a4:	8b 45 10             	mov    0x10(%ebp),%eax
    68a7:	8b 55 08             	mov    0x8(%ebp),%edx
    68aa:	56                   	push   %esi
    68ab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    68ae:	85 c0                	test   %eax,%eax
    68b0:	7e 13                	jle    68c5 <memmove+0x25>
    68b2:	01 d0                	add    %edx,%eax
  dst = vdst;
    68b4:	89 d7                	mov    %edx,%edi
    68b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    68bd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
    68c0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    68c1:	39 f8                	cmp    %edi,%eax
    68c3:	75 fb                	jne    68c0 <memmove+0x20>
  return vdst;
}
    68c5:	5e                   	pop    %esi
    68c6:	89 d0                	mov    %edx,%eax
    68c8:	5f                   	pop    %edi
    68c9:	5d                   	pop    %ebp
    68ca:	c3                   	ret    

000068cb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    68cb:	b8 01 00 00 00       	mov    $0x1,%eax
    68d0:	cd 40                	int    $0x40
    68d2:	c3                   	ret    

000068d3 <exit>:
SYSCALL(exit)
    68d3:	b8 02 00 00 00       	mov    $0x2,%eax
    68d8:	cd 40                	int    $0x40
    68da:	c3                   	ret    

000068db <wait>:
SYSCALL(wait)
    68db:	b8 03 00 00 00       	mov    $0x3,%eax
    68e0:	cd 40                	int    $0x40
    68e2:	c3                   	ret    

000068e3 <pipe>:
SYSCALL(pipe)
    68e3:	b8 04 00 00 00       	mov    $0x4,%eax
    68e8:	cd 40                	int    $0x40
    68ea:	c3                   	ret    

000068eb <read>:
SYSCALL(read)
    68eb:	b8 05 00 00 00       	mov    $0x5,%eax
    68f0:	cd 40                	int    $0x40
    68f2:	c3                   	ret    

000068f3 <write>:
SYSCALL(write)
    68f3:	b8 10 00 00 00       	mov    $0x10,%eax
    68f8:	cd 40                	int    $0x40
    68fa:	c3                   	ret    

000068fb <close>:
SYSCALL(close)
    68fb:	b8 15 00 00 00       	mov    $0x15,%eax
    6900:	cd 40                	int    $0x40
    6902:	c3                   	ret    

00006903 <kill>:
SYSCALL(kill)
    6903:	b8 06 00 00 00       	mov    $0x6,%eax
    6908:	cd 40                	int    $0x40
    690a:	c3                   	ret    

0000690b <exec>:
SYSCALL(exec)
    690b:	b8 07 00 00 00       	mov    $0x7,%eax
    6910:	cd 40                	int    $0x40
    6912:	c3                   	ret    

00006913 <open>:
SYSCALL(open)
    6913:	b8 0f 00 00 00       	mov    $0xf,%eax
    6918:	cd 40                	int    $0x40
    691a:	c3                   	ret    

0000691b <mknod>:
SYSCALL(mknod)
    691b:	b8 11 00 00 00       	mov    $0x11,%eax
    6920:	cd 40                	int    $0x40
    6922:	c3                   	ret    

00006923 <unlink>:
SYSCALL(unlink)
    6923:	b8 12 00 00 00       	mov    $0x12,%eax
    6928:	cd 40                	int    $0x40
    692a:	c3                   	ret    

0000692b <fstat>:
SYSCALL(fstat)
    692b:	b8 08 00 00 00       	mov    $0x8,%eax
    6930:	cd 40                	int    $0x40
    6932:	c3                   	ret    

00006933 <link>:
SYSCALL(link)
    6933:	b8 13 00 00 00       	mov    $0x13,%eax
    6938:	cd 40                	int    $0x40
    693a:	c3                   	ret    

0000693b <mkdir>:
SYSCALL(mkdir)
    693b:	b8 14 00 00 00       	mov    $0x14,%eax
    6940:	cd 40                	int    $0x40
    6942:	c3                   	ret    

00006943 <chdir>:
SYSCALL(chdir)
    6943:	b8 09 00 00 00       	mov    $0x9,%eax
    6948:	cd 40                	int    $0x40
    694a:	c3                   	ret    

0000694b <dup>:
SYSCALL(dup)
    694b:	b8 0a 00 00 00       	mov    $0xa,%eax
    6950:	cd 40                	int    $0x40
    6952:	c3                   	ret    

00006953 <getpid>:
SYSCALL(getpid)
    6953:	b8 0b 00 00 00       	mov    $0xb,%eax
    6958:	cd 40                	int    $0x40
    695a:	c3                   	ret    

0000695b <sbrk>:
SYSCALL(sbrk)
    695b:	b8 0c 00 00 00       	mov    $0xc,%eax
    6960:	cd 40                	int    $0x40
    6962:	c3                   	ret    

00006963 <sleep>:
SYSCALL(sleep)
    6963:	b8 0d 00 00 00       	mov    $0xd,%eax
    6968:	cd 40                	int    $0x40
    696a:	c3                   	ret    

0000696b <uptime>:
SYSCALL(uptime)
    696b:	b8 0e 00 00 00       	mov    $0xe,%eax
    6970:	cd 40                	int    $0x40
    6972:	c3                   	ret    
    6973:	66 90                	xchg   %ax,%ax
    6975:	66 90                	xchg   %ax,%ax
    6977:	66 90                	xchg   %ax,%ax
    6979:	66 90                	xchg   %ax,%ax
    697b:	66 90                	xchg   %ax,%ax
    697d:	66 90                	xchg   %ax,%ax
    697f:	90                   	nop

00006980 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    6980:	55                   	push   %ebp
    6981:	89 e5                	mov    %esp,%ebp
    6983:	57                   	push   %edi
    6984:	56                   	push   %esi
    6985:	53                   	push   %ebx
    6986:	83 ec 3c             	sub    $0x3c,%esp
    6989:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    698c:	89 d1                	mov    %edx,%ecx
{
    698e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    6991:	85 d2                	test   %edx,%edx
    6993:	0f 89 7f 00 00 00    	jns    6a18 <printint+0x98>
    6999:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    699d:	74 79                	je     6a18 <printint+0x98>
    neg = 1;
    699f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    69a6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    69a8:	31 db                	xor    %ebx,%ebx
    69aa:	8d 75 d7             	lea    -0x29(%ebp),%esi
    69ad:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    69b0:	89 c8                	mov    %ecx,%eax
    69b2:	31 d2                	xor    %edx,%edx
    69b4:	89 cf                	mov    %ecx,%edi
    69b6:	f7 75 c4             	divl   -0x3c(%ebp)
    69b9:	0f b6 92 50 85 00 00 	movzbl 0x8550(%edx),%edx
    69c0:	89 45 c0             	mov    %eax,-0x40(%ebp)
    69c3:	89 d8                	mov    %ebx,%eax
    69c5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    69c8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    69cb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    69ce:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    69d1:	76 dd                	jbe    69b0 <printint+0x30>
  if(neg)
    69d3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    69d6:	85 c9                	test   %ecx,%ecx
    69d8:	74 0c                	je     69e6 <printint+0x66>
    buf[i++] = '-';
    69da:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    69df:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    69e1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    69e6:	8b 7d b8             	mov    -0x48(%ebp),%edi
    69e9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    69ed:	eb 07                	jmp    69f6 <printint+0x76>
    69ef:	90                   	nop
    putc(fd, buf[i]);
    69f0:	0f b6 13             	movzbl (%ebx),%edx
    69f3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    69f6:	83 ec 04             	sub    $0x4,%esp
    69f9:	88 55 d7             	mov    %dl,-0x29(%ebp)
    69fc:	6a 01                	push   $0x1
    69fe:	56                   	push   %esi
    69ff:	57                   	push   %edi
    6a00:	e8 ee fe ff ff       	call   68f3 <write>
  while(--i >= 0)
    6a05:	83 c4 10             	add    $0x10,%esp
    6a08:	39 de                	cmp    %ebx,%esi
    6a0a:	75 e4                	jne    69f0 <printint+0x70>
}
    6a0c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    6a0f:	5b                   	pop    %ebx
    6a10:	5e                   	pop    %esi
    6a11:	5f                   	pop    %edi
    6a12:	5d                   	pop    %ebp
    6a13:	c3                   	ret    
    6a14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    6a18:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    6a1f:	eb 87                	jmp    69a8 <printint+0x28>
    6a21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    6a28:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    6a2f:	90                   	nop

00006a30 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    6a30:	55                   	push   %ebp
    6a31:	89 e5                	mov    %esp,%ebp
    6a33:	57                   	push   %edi
    6a34:	56                   	push   %esi
    6a35:	53                   	push   %ebx
    6a36:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    6a39:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
    6a3c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
    6a3f:	0f b6 13             	movzbl (%ebx),%edx
    6a42:	84 d2                	test   %dl,%dl
    6a44:	74 6a                	je     6ab0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
    6a46:	8d 45 10             	lea    0x10(%ebp),%eax
    6a49:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    6a4c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    6a4f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
    6a51:	89 45 d0             	mov    %eax,-0x30(%ebp)
    6a54:	eb 36                	jmp    6a8c <printf+0x5c>
    6a56:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    6a5d:	8d 76 00             	lea    0x0(%esi),%esi
    6a60:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    6a63:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
    6a68:	83 f8 25             	cmp    $0x25,%eax
    6a6b:	74 15                	je     6a82 <printf+0x52>
  write(fd, &c, 1);
    6a6d:	83 ec 04             	sub    $0x4,%esp
    6a70:	88 55 e7             	mov    %dl,-0x19(%ebp)
    6a73:	6a 01                	push   $0x1
    6a75:	57                   	push   %edi
    6a76:	56                   	push   %esi
    6a77:	e8 77 fe ff ff       	call   68f3 <write>
    6a7c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
    6a7f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    6a82:	0f b6 13             	movzbl (%ebx),%edx
    6a85:	83 c3 01             	add    $0x1,%ebx
    6a88:	84 d2                	test   %dl,%dl
    6a8a:	74 24                	je     6ab0 <printf+0x80>
    c = fmt[i] & 0xff;
    6a8c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
    6a8f:	85 c9                	test   %ecx,%ecx
    6a91:	74 cd                	je     6a60 <printf+0x30>
      }
    } else if(state == '%'){
    6a93:	83 f9 25             	cmp    $0x25,%ecx
    6a96:	75 ea                	jne    6a82 <printf+0x52>
      if(c == 'd'){
    6a98:	83 f8 25             	cmp    $0x25,%eax
    6a9b:	0f 84 07 01 00 00    	je     6ba8 <printf+0x178>
    6aa1:	83 e8 63             	sub    $0x63,%eax
    6aa4:	83 f8 15             	cmp    $0x15,%eax
    6aa7:	77 17                	ja     6ac0 <printf+0x90>
    6aa9:	ff 24 85 f8 84 00 00 	jmp    *0x84f8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    6ab0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    6ab3:	5b                   	pop    %ebx
    6ab4:	5e                   	pop    %esi
    6ab5:	5f                   	pop    %edi
    6ab6:	5d                   	pop    %ebp
    6ab7:	c3                   	ret    
    6ab8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    6abf:	90                   	nop
  write(fd, &c, 1);
    6ac0:	83 ec 04             	sub    $0x4,%esp
    6ac3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
    6ac6:	6a 01                	push   $0x1
    6ac8:	57                   	push   %edi
    6ac9:	56                   	push   %esi
    6aca:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    6ace:	e8 20 fe ff ff       	call   68f3 <write>
        putc(fd, c);
    6ad3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
    6ad7:	83 c4 0c             	add    $0xc,%esp
    6ada:	88 55 e7             	mov    %dl,-0x19(%ebp)
    6add:	6a 01                	push   $0x1
    6adf:	57                   	push   %edi
    6ae0:	56                   	push   %esi
    6ae1:	e8 0d fe ff ff       	call   68f3 <write>
        putc(fd, c);
    6ae6:	83 c4 10             	add    $0x10,%esp
      state = 0;
    6ae9:	31 c9                	xor    %ecx,%ecx
    6aeb:	eb 95                	jmp    6a82 <printf+0x52>
    6aed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    6af0:	83 ec 0c             	sub    $0xc,%esp
    6af3:	b9 10 00 00 00       	mov    $0x10,%ecx
    6af8:	6a 00                	push   $0x0
    6afa:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6afd:	8b 10                	mov    (%eax),%edx
    6aff:	89 f0                	mov    %esi,%eax
    6b01:	e8 7a fe ff ff       	call   6980 <printint>
        ap++;
    6b06:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    6b0a:	83 c4 10             	add    $0x10,%esp
      state = 0;
    6b0d:	31 c9                	xor    %ecx,%ecx
    6b0f:	e9 6e ff ff ff       	jmp    6a82 <printf+0x52>
    6b14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    6b18:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6b1b:	8b 10                	mov    (%eax),%edx
        ap++;
    6b1d:	83 c0 04             	add    $0x4,%eax
    6b20:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    6b23:	85 d2                	test   %edx,%edx
    6b25:	0f 84 8d 00 00 00    	je     6bb8 <printf+0x188>
        while(*s != 0){
    6b2b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
    6b2e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
    6b30:	84 c0                	test   %al,%al
    6b32:	0f 84 4a ff ff ff    	je     6a82 <printf+0x52>
    6b38:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    6b3b:	89 d3                	mov    %edx,%ebx
    6b3d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    6b40:	83 ec 04             	sub    $0x4,%esp
          s++;
    6b43:	83 c3 01             	add    $0x1,%ebx
    6b46:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    6b49:	6a 01                	push   $0x1
    6b4b:	57                   	push   %edi
    6b4c:	56                   	push   %esi
    6b4d:	e8 a1 fd ff ff       	call   68f3 <write>
        while(*s != 0){
    6b52:	0f b6 03             	movzbl (%ebx),%eax
    6b55:	83 c4 10             	add    $0x10,%esp
    6b58:	84 c0                	test   %al,%al
    6b5a:	75 e4                	jne    6b40 <printf+0x110>
      state = 0;
    6b5c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
    6b5f:	31 c9                	xor    %ecx,%ecx
    6b61:	e9 1c ff ff ff       	jmp    6a82 <printf+0x52>
    6b66:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    6b6d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    6b70:	83 ec 0c             	sub    $0xc,%esp
    6b73:	b9 0a 00 00 00       	mov    $0xa,%ecx
    6b78:	6a 01                	push   $0x1
    6b7a:	e9 7b ff ff ff       	jmp    6afa <printf+0xca>
    6b7f:	90                   	nop
        putc(fd, *ap);
    6b80:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
    6b83:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    6b86:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    6b88:	6a 01                	push   $0x1
    6b8a:	57                   	push   %edi
    6b8b:	56                   	push   %esi
        putc(fd, *ap);
    6b8c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    6b8f:	e8 5f fd ff ff       	call   68f3 <write>
        ap++;
    6b94:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    6b98:	83 c4 10             	add    $0x10,%esp
      state = 0;
    6b9b:	31 c9                	xor    %ecx,%ecx
    6b9d:	e9 e0 fe ff ff       	jmp    6a82 <printf+0x52>
    6ba2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
    6ba8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    6bab:	83 ec 04             	sub    $0x4,%esp
    6bae:	e9 2a ff ff ff       	jmp    6add <printf+0xad>
    6bb3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    6bb7:	90                   	nop
          s = "(null)";
    6bb8:	ba ee 84 00 00       	mov    $0x84ee,%edx
        while(*s != 0){
    6bbd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    6bc0:	b8 28 00 00 00       	mov    $0x28,%eax
    6bc5:	89 d3                	mov    %edx,%ebx
    6bc7:	e9 74 ff ff ff       	jmp    6b40 <printf+0x110>
    6bcc:	66 90                	xchg   %ax,%ax
    6bce:	66 90                	xchg   %ax,%ax

00006bd0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    6bd0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    6bd1:	a1 00 d6 00 00       	mov    0xd600,%eax
{
    6bd6:	89 e5                	mov    %esp,%ebp
    6bd8:	57                   	push   %edi
    6bd9:	56                   	push   %esi
    6bda:	53                   	push   %ebx
    6bdb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    6bde:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    6be1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    6be8:	89 c2                	mov    %eax,%edx
    6bea:	8b 00                	mov    (%eax),%eax
    6bec:	39 ca                	cmp    %ecx,%edx
    6bee:	73 30                	jae    6c20 <free+0x50>
    6bf0:	39 c1                	cmp    %eax,%ecx
    6bf2:	72 04                	jb     6bf8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    6bf4:	39 c2                	cmp    %eax,%edx
    6bf6:	72 f0                	jb     6be8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
    6bf8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    6bfb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    6bfe:	39 f8                	cmp    %edi,%eax
    6c00:	74 30                	je     6c32 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    6c02:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    6c05:	8b 42 04             	mov    0x4(%edx),%eax
    6c08:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    6c0b:	39 f1                	cmp    %esi,%ecx
    6c0d:	74 3a                	je     6c49 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    6c0f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    6c11:	5b                   	pop    %ebx
  freep = p;
    6c12:	89 15 00 d6 00 00    	mov    %edx,0xd600
}
    6c18:	5e                   	pop    %esi
    6c19:	5f                   	pop    %edi
    6c1a:	5d                   	pop    %ebp
    6c1b:	c3                   	ret    
    6c1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    6c20:	39 c2                	cmp    %eax,%edx
    6c22:	72 c4                	jb     6be8 <free+0x18>
    6c24:	39 c1                	cmp    %eax,%ecx
    6c26:	73 c0                	jae    6be8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
    6c28:	8b 73 fc             	mov    -0x4(%ebx),%esi
    6c2b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    6c2e:	39 f8                	cmp    %edi,%eax
    6c30:	75 d0                	jne    6c02 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
    6c32:	03 70 04             	add    0x4(%eax),%esi
    6c35:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    6c38:	8b 02                	mov    (%edx),%eax
    6c3a:	8b 00                	mov    (%eax),%eax
    6c3c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    6c3f:	8b 42 04             	mov    0x4(%edx),%eax
    6c42:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    6c45:	39 f1                	cmp    %esi,%ecx
    6c47:	75 c6                	jne    6c0f <free+0x3f>
    p->s.size += bp->s.size;
    6c49:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    6c4c:	89 15 00 d6 00 00    	mov    %edx,0xd600
    p->s.size += bp->s.size;
    6c52:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    6c55:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    6c58:	89 0a                	mov    %ecx,(%edx)
}
    6c5a:	5b                   	pop    %ebx
    6c5b:	5e                   	pop    %esi
    6c5c:	5f                   	pop    %edi
    6c5d:	5d                   	pop    %ebp
    6c5e:	c3                   	ret    
    6c5f:	90                   	nop

00006c60 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    6c60:	55                   	push   %ebp
    6c61:	89 e5                	mov    %esp,%ebp
    6c63:	57                   	push   %edi
    6c64:	56                   	push   %esi
    6c65:	53                   	push   %ebx
    6c66:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    6c69:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    6c6c:	8b 3d 00 d6 00 00    	mov    0xd600,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    6c72:	8d 70 07             	lea    0x7(%eax),%esi
    6c75:	c1 ee 03             	shr    $0x3,%esi
    6c78:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    6c7b:	85 ff                	test   %edi,%edi
    6c7d:	0f 84 9d 00 00 00    	je     6d20 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    6c83:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
    6c85:	8b 4a 04             	mov    0x4(%edx),%ecx
    6c88:	39 f1                	cmp    %esi,%ecx
    6c8a:	73 6a                	jae    6cf6 <malloc+0x96>
    6c8c:	bb 00 10 00 00       	mov    $0x1000,%ebx
    6c91:	39 de                	cmp    %ebx,%esi
    6c93:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    6c96:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
    6c9d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    6ca0:	eb 17                	jmp    6cb9 <malloc+0x59>
    6ca2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    6ca8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    6caa:	8b 48 04             	mov    0x4(%eax),%ecx
    6cad:	39 f1                	cmp    %esi,%ecx
    6caf:	73 4f                	jae    6d00 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    6cb1:	8b 3d 00 d6 00 00    	mov    0xd600,%edi
    6cb7:	89 c2                	mov    %eax,%edx
    6cb9:	39 d7                	cmp    %edx,%edi
    6cbb:	75 eb                	jne    6ca8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    6cbd:	83 ec 0c             	sub    $0xc,%esp
    6cc0:	ff 75 e4             	push   -0x1c(%ebp)
    6cc3:	e8 93 fc ff ff       	call   695b <sbrk>
  if(p == (char*)-1)
    6cc8:	83 c4 10             	add    $0x10,%esp
    6ccb:	83 f8 ff             	cmp    $0xffffffff,%eax
    6cce:	74 1c                	je     6cec <malloc+0x8c>
  hp->s.size = nu;
    6cd0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    6cd3:	83 ec 0c             	sub    $0xc,%esp
    6cd6:	83 c0 08             	add    $0x8,%eax
    6cd9:	50                   	push   %eax
    6cda:	e8 f1 fe ff ff       	call   6bd0 <free>
  return freep;
    6cdf:	8b 15 00 d6 00 00    	mov    0xd600,%edx
      if((p = morecore(nunits)) == 0)
    6ce5:	83 c4 10             	add    $0x10,%esp
    6ce8:	85 d2                	test   %edx,%edx
    6cea:	75 bc                	jne    6ca8 <malloc+0x48>
        return 0;
  }
}
    6cec:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    6cef:	31 c0                	xor    %eax,%eax
}
    6cf1:	5b                   	pop    %ebx
    6cf2:	5e                   	pop    %esi
    6cf3:	5f                   	pop    %edi
    6cf4:	5d                   	pop    %ebp
    6cf5:	c3                   	ret    
    if(p->s.size >= nunits){
    6cf6:	89 d0                	mov    %edx,%eax
    6cf8:	89 fa                	mov    %edi,%edx
    6cfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    6d00:	39 ce                	cmp    %ecx,%esi
    6d02:	74 4c                	je     6d50 <malloc+0xf0>
        p->s.size -= nunits;
    6d04:	29 f1                	sub    %esi,%ecx
    6d06:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    6d09:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    6d0c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    6d0f:	89 15 00 d6 00 00    	mov    %edx,0xd600
}
    6d15:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    6d18:	83 c0 08             	add    $0x8,%eax
}
    6d1b:	5b                   	pop    %ebx
    6d1c:	5e                   	pop    %esi
    6d1d:	5f                   	pop    %edi
    6d1e:	5d                   	pop    %ebp
    6d1f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
    6d20:	c7 05 00 d6 00 00 04 	movl   $0xd604,0xd600
    6d27:	d6 00 00 
    base.s.size = 0;
    6d2a:	bf 04 d6 00 00       	mov    $0xd604,%edi
    base.s.ptr = freep = prevp = &base;
    6d2f:	c7 05 04 d6 00 00 04 	movl   $0xd604,0xd604
    6d36:	d6 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    6d39:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
    6d3b:	c7 05 08 d6 00 00 00 	movl   $0x0,0xd608
    6d42:	00 00 00 
    if(p->s.size >= nunits){
    6d45:	e9 42 ff ff ff       	jmp    6c8c <malloc+0x2c>
    6d4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    6d50:	8b 08                	mov    (%eax),%ecx
    6d52:	89 0a                	mov    %ecx,(%edx)
    6d54:	eb b9                	jmp    6d0f <malloc+0xaf>
