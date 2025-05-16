
_forktest:     file format elf32-i386


Disassembly of section .text:

00003000 <main>:
  printf(1, "fork test OK\n");
}

int
main(void)
{
    3000:	55                   	push   %ebp
    3001:	89 e5                	mov    %esp,%ebp
    3003:	83 e4 f0             	and    $0xfffffff0,%esp
  forktest();
    3006:	e8 35 00 00 00       	call   3040 <forktest>
  exit();
    300b:	e8 63 03 00 00       	call   3373 <exit>

00003010 <printf>:
{
    3010:	55                   	push   %ebp
    3011:	89 e5                	mov    %esp,%ebp
    3013:	53                   	push   %ebx
    3014:	83 ec 10             	sub    $0x10,%esp
    3017:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  write(fd, s, strlen(s));
    301a:	53                   	push   %ebx
    301b:	e8 90 01 00 00       	call   31b0 <strlen>
    3020:	83 c4 0c             	add    $0xc,%esp
    3023:	50                   	push   %eax
    3024:	53                   	push   %ebx
    3025:	ff 75 08             	push   0x8(%ebp)
    3028:	e8 66 03 00 00       	call   3393 <write>
}
    302d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3030:	83 c4 10             	add    $0x10,%esp
    3033:	c9                   	leave  
    3034:	c3                   	ret    
    3035:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    303c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003040 <forktest>:
{
    3040:	55                   	push   %ebp
    3041:	89 e5                	mov    %esp,%ebp
    3043:	53                   	push   %ebx
  for(n=0; n<N; n++){
    3044:	31 db                	xor    %ebx,%ebx
{
    3046:	83 ec 10             	sub    $0x10,%esp
  write(fd, s, strlen(s));
    3049:	68 14 34 00 00       	push   $0x3414
    304e:	e8 5d 01 00 00       	call   31b0 <strlen>
    3053:	83 c4 0c             	add    $0xc,%esp
    3056:	50                   	push   %eax
    3057:	68 14 34 00 00       	push   $0x3414
    305c:	6a 01                	push   $0x1
    305e:	e8 30 03 00 00       	call   3393 <write>
    3063:	83 c4 10             	add    $0x10,%esp
    3066:	eb 19                	jmp    3081 <forktest+0x41>
    3068:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    306f:	90                   	nop
    if(pid == 0)
    3070:	74 58                	je     30ca <forktest+0x8a>
  for(n=0; n<N; n++){
    3072:	83 c3 01             	add    $0x1,%ebx
    3075:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    307b:	0f 84 83 00 00 00    	je     3104 <forktest+0xc4>
    pid = fork();
    3081:	e8 e5 02 00 00       	call   336b <fork>
    if(pid < 0)
    3086:	85 c0                	test   %eax,%eax
    3088:	79 e6                	jns    3070 <forktest+0x30>
  for(; n > 0; n--){
    308a:	85 db                	test   %ebx,%ebx
    308c:	74 10                	je     309e <forktest+0x5e>
    308e:	66 90                	xchg   %ax,%ax
    if(wait() < 0){
    3090:	e8 e6 02 00 00       	call   337b <wait>
    3095:	85 c0                	test   %eax,%eax
    3097:	78 36                	js     30cf <forktest+0x8f>
  for(; n > 0; n--){
    3099:	83 eb 01             	sub    $0x1,%ebx
    309c:	75 f2                	jne    3090 <forktest+0x50>
  if(wait() != -1){
    309e:	e8 d8 02 00 00       	call   337b <wait>
    30a3:	83 f8 ff             	cmp    $0xffffffff,%eax
    30a6:	75 49                	jne    30f1 <forktest+0xb1>
  write(fd, s, strlen(s));
    30a8:	83 ec 0c             	sub    $0xc,%esp
    30ab:	68 46 34 00 00       	push   $0x3446
    30b0:	e8 fb 00 00 00       	call   31b0 <strlen>
    30b5:	83 c4 0c             	add    $0xc,%esp
    30b8:	50                   	push   %eax
    30b9:	68 46 34 00 00       	push   $0x3446
    30be:	6a 01                	push   $0x1
    30c0:	e8 ce 02 00 00       	call   3393 <write>
}
    30c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    30c8:	c9                   	leave  
    30c9:	c3                   	ret    
      exit();
    30ca:	e8 a4 02 00 00       	call   3373 <exit>
  write(fd, s, strlen(s));
    30cf:	83 ec 0c             	sub    $0xc,%esp
    30d2:	68 1f 34 00 00       	push   $0x341f
    30d7:	e8 d4 00 00 00       	call   31b0 <strlen>
    30dc:	83 c4 0c             	add    $0xc,%esp
    30df:	50                   	push   %eax
    30e0:	68 1f 34 00 00       	push   $0x341f
    30e5:	6a 01                	push   $0x1
    30e7:	e8 a7 02 00 00       	call   3393 <write>
      exit();
    30ec:	e8 82 02 00 00       	call   3373 <exit>
    printf(1, "wait got too many\n");
    30f1:	52                   	push   %edx
    30f2:	52                   	push   %edx
    30f3:	68 33 34 00 00       	push   $0x3433
    30f8:	6a 01                	push   $0x1
    30fa:	e8 11 ff ff ff       	call   3010 <printf>
    exit();
    30ff:	e8 6f 02 00 00       	call   3373 <exit>
    printf(1, "fork claimed to work N times!\n", N);
    3104:	50                   	push   %eax
    3105:	68 e8 03 00 00       	push   $0x3e8
    310a:	68 54 34 00 00       	push   $0x3454
    310f:	6a 01                	push   $0x1
    3111:	e8 fa fe ff ff       	call   3010 <printf>
    exit();
    3116:	e8 58 02 00 00       	call   3373 <exit>
    311b:	66 90                	xchg   %ax,%ax
    311d:	66 90                	xchg   %ax,%ax
    311f:	90                   	nop

00003120 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3120:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3121:	31 c0                	xor    %eax,%eax
{
    3123:	89 e5                	mov    %esp,%ebp
    3125:	53                   	push   %ebx
    3126:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3129:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    312c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
    3130:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    3134:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    3137:	83 c0 01             	add    $0x1,%eax
    313a:	84 d2                	test   %dl,%dl
    313c:	75 f2                	jne    3130 <strcpy+0x10>
    ;
  return os;
}
    313e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3141:	89 c8                	mov    %ecx,%eax
    3143:	c9                   	leave  
    3144:	c3                   	ret    
    3145:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    314c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003150 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3150:	55                   	push   %ebp
    3151:	89 e5                	mov    %esp,%ebp
    3153:	53                   	push   %ebx
    3154:	8b 55 08             	mov    0x8(%ebp),%edx
    3157:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    315a:	0f b6 02             	movzbl (%edx),%eax
    315d:	84 c0                	test   %al,%al
    315f:	75 17                	jne    3178 <strcmp+0x28>
    3161:	eb 3a                	jmp    319d <strcmp+0x4d>
    3163:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3167:	90                   	nop
    3168:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
    316c:	83 c2 01             	add    $0x1,%edx
    316f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    3172:	84 c0                	test   %al,%al
    3174:	74 1a                	je     3190 <strcmp+0x40>
    p++, q++;
    3176:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
    3178:	0f b6 19             	movzbl (%ecx),%ebx
    317b:	38 c3                	cmp    %al,%bl
    317d:	74 e9                	je     3168 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
    317f:	29 d8                	sub    %ebx,%eax
}
    3181:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3184:	c9                   	leave  
    3185:	c3                   	ret    
    3186:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    318d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
    3190:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    3194:	31 c0                	xor    %eax,%eax
    3196:	29 d8                	sub    %ebx,%eax
}
    3198:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    319b:	c9                   	leave  
    319c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
    319d:	0f b6 19             	movzbl (%ecx),%ebx
    31a0:	31 c0                	xor    %eax,%eax
    31a2:	eb db                	jmp    317f <strcmp+0x2f>
    31a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    31ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    31af:	90                   	nop

000031b0 <strlen>:

uint
strlen(const char *s)
{
    31b0:	55                   	push   %ebp
    31b1:	89 e5                	mov    %esp,%ebp
    31b3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    31b6:	80 3a 00             	cmpb   $0x0,(%edx)
    31b9:	74 15                	je     31d0 <strlen+0x20>
    31bb:	31 c0                	xor    %eax,%eax
    31bd:	8d 76 00             	lea    0x0(%esi),%esi
    31c0:	83 c0 01             	add    $0x1,%eax
    31c3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    31c7:	89 c1                	mov    %eax,%ecx
    31c9:	75 f5                	jne    31c0 <strlen+0x10>
    ;
  return n;
}
    31cb:	89 c8                	mov    %ecx,%eax
    31cd:	5d                   	pop    %ebp
    31ce:	c3                   	ret    
    31cf:	90                   	nop
  for(n = 0; s[n]; n++)
    31d0:	31 c9                	xor    %ecx,%ecx
}
    31d2:	5d                   	pop    %ebp
    31d3:	89 c8                	mov    %ecx,%eax
    31d5:	c3                   	ret    
    31d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    31dd:	8d 76 00             	lea    0x0(%esi),%esi

000031e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    31e0:	55                   	push   %ebp
    31e1:	89 e5                	mov    %esp,%ebp
    31e3:	57                   	push   %edi
    31e4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    31e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    31ea:	8b 45 0c             	mov    0xc(%ebp),%eax
    31ed:	89 d7                	mov    %edx,%edi
    31ef:	fc                   	cld    
    31f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    31f2:	8b 7d fc             	mov    -0x4(%ebp),%edi
    31f5:	89 d0                	mov    %edx,%eax
    31f7:	c9                   	leave  
    31f8:	c3                   	ret    
    31f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003200 <strchr>:

char*
strchr(const char *s, char c)
{
    3200:	55                   	push   %ebp
    3201:	89 e5                	mov    %esp,%ebp
    3203:	8b 45 08             	mov    0x8(%ebp),%eax
    3206:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    320a:	0f b6 10             	movzbl (%eax),%edx
    320d:	84 d2                	test   %dl,%dl
    320f:	75 12                	jne    3223 <strchr+0x23>
    3211:	eb 1d                	jmp    3230 <strchr+0x30>
    3213:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3217:	90                   	nop
    3218:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    321c:	83 c0 01             	add    $0x1,%eax
    321f:	84 d2                	test   %dl,%dl
    3221:	74 0d                	je     3230 <strchr+0x30>
    if(*s == c)
    3223:	38 d1                	cmp    %dl,%cl
    3225:	75 f1                	jne    3218 <strchr+0x18>
      return (char*)s;
  return 0;
}
    3227:	5d                   	pop    %ebp
    3228:	c3                   	ret    
    3229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    3230:	31 c0                	xor    %eax,%eax
}
    3232:	5d                   	pop    %ebp
    3233:	c3                   	ret    
    3234:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    323b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    323f:	90                   	nop

00003240 <gets>:

char*
gets(char *buf, int max)
{
    3240:	55                   	push   %ebp
    3241:	89 e5                	mov    %esp,%ebp
    3243:	57                   	push   %edi
    3244:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    3245:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
    3248:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
    3249:	31 db                	xor    %ebx,%ebx
{
    324b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
    324e:	eb 27                	jmp    3277 <gets+0x37>
    cc = read(0, &c, 1);
    3250:	83 ec 04             	sub    $0x4,%esp
    3253:	6a 01                	push   $0x1
    3255:	57                   	push   %edi
    3256:	6a 00                	push   $0x0
    3258:	e8 2e 01 00 00       	call   338b <read>
    if(cc < 1)
    325d:	83 c4 10             	add    $0x10,%esp
    3260:	85 c0                	test   %eax,%eax
    3262:	7e 1d                	jle    3281 <gets+0x41>
      break;
    buf[i++] = c;
    3264:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3268:	8b 55 08             	mov    0x8(%ebp),%edx
    326b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    326f:	3c 0a                	cmp    $0xa,%al
    3271:	74 1d                	je     3290 <gets+0x50>
    3273:	3c 0d                	cmp    $0xd,%al
    3275:	74 19                	je     3290 <gets+0x50>
  for(i=0; i+1 < max; ){
    3277:	89 de                	mov    %ebx,%esi
    3279:	83 c3 01             	add    $0x1,%ebx
    327c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    327f:	7c cf                	jl     3250 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    3281:	8b 45 08             	mov    0x8(%ebp),%eax
    3284:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    3288:	8d 65 f4             	lea    -0xc(%ebp),%esp
    328b:	5b                   	pop    %ebx
    328c:	5e                   	pop    %esi
    328d:	5f                   	pop    %edi
    328e:	5d                   	pop    %ebp
    328f:	c3                   	ret    
  buf[i] = '\0';
    3290:	8b 45 08             	mov    0x8(%ebp),%eax
    3293:	89 de                	mov    %ebx,%esi
    3295:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
    3299:	8d 65 f4             	lea    -0xc(%ebp),%esp
    329c:	5b                   	pop    %ebx
    329d:	5e                   	pop    %esi
    329e:	5f                   	pop    %edi
    329f:	5d                   	pop    %ebp
    32a0:	c3                   	ret    
    32a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    32a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    32af:	90                   	nop

000032b0 <stat>:

int
stat(const char *n, struct stat *st)
{
    32b0:	55                   	push   %ebp
    32b1:	89 e5                	mov    %esp,%ebp
    32b3:	56                   	push   %esi
    32b4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    32b5:	83 ec 08             	sub    $0x8,%esp
    32b8:	6a 00                	push   $0x0
    32ba:	ff 75 08             	push   0x8(%ebp)
    32bd:	e8 f1 00 00 00       	call   33b3 <open>
  if(fd < 0)
    32c2:	83 c4 10             	add    $0x10,%esp
    32c5:	85 c0                	test   %eax,%eax
    32c7:	78 27                	js     32f0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    32c9:	83 ec 08             	sub    $0x8,%esp
    32cc:	ff 75 0c             	push   0xc(%ebp)
    32cf:	89 c3                	mov    %eax,%ebx
    32d1:	50                   	push   %eax
    32d2:	e8 f4 00 00 00       	call   33cb <fstat>
  close(fd);
    32d7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    32da:	89 c6                	mov    %eax,%esi
  close(fd);
    32dc:	e8 ba 00 00 00       	call   339b <close>
  return r;
    32e1:	83 c4 10             	add    $0x10,%esp
}
    32e4:	8d 65 f8             	lea    -0x8(%ebp),%esp
    32e7:	89 f0                	mov    %esi,%eax
    32e9:	5b                   	pop    %ebx
    32ea:	5e                   	pop    %esi
    32eb:	5d                   	pop    %ebp
    32ec:	c3                   	ret    
    32ed:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    32f0:	be ff ff ff ff       	mov    $0xffffffff,%esi
    32f5:	eb ed                	jmp    32e4 <stat+0x34>
    32f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    32fe:	66 90                	xchg   %ax,%ax

00003300 <atoi>:

int
atoi(const char *s)
{
    3300:	55                   	push   %ebp
    3301:	89 e5                	mov    %esp,%ebp
    3303:	53                   	push   %ebx
    3304:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3307:	0f be 02             	movsbl (%edx),%eax
    330a:	8d 48 d0             	lea    -0x30(%eax),%ecx
    330d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    3310:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    3315:	77 1e                	ja     3335 <atoi+0x35>
    3317:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    331e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3320:	83 c2 01             	add    $0x1,%edx
    3323:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    3326:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    332a:	0f be 02             	movsbl (%edx),%eax
    332d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    3330:	80 fb 09             	cmp    $0x9,%bl
    3333:	76 eb                	jbe    3320 <atoi+0x20>
  return n;
}
    3335:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3338:	89 c8                	mov    %ecx,%eax
    333a:	c9                   	leave  
    333b:	c3                   	ret    
    333c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003340 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3340:	55                   	push   %ebp
    3341:	89 e5                	mov    %esp,%ebp
    3343:	57                   	push   %edi
    3344:	8b 45 10             	mov    0x10(%ebp),%eax
    3347:	8b 55 08             	mov    0x8(%ebp),%edx
    334a:	56                   	push   %esi
    334b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    334e:	85 c0                	test   %eax,%eax
    3350:	7e 13                	jle    3365 <memmove+0x25>
    3352:	01 d0                	add    %edx,%eax
  dst = vdst;
    3354:	89 d7                	mov    %edx,%edi
    3356:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    335d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
    3360:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    3361:	39 f8                	cmp    %edi,%eax
    3363:	75 fb                	jne    3360 <memmove+0x20>
  return vdst;
}
    3365:	5e                   	pop    %esi
    3366:	89 d0                	mov    %edx,%eax
    3368:	5f                   	pop    %edi
    3369:	5d                   	pop    %ebp
    336a:	c3                   	ret    

0000336b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    336b:	b8 01 00 00 00       	mov    $0x1,%eax
    3370:	cd 40                	int    $0x40
    3372:	c3                   	ret    

00003373 <exit>:
SYSCALL(exit)
    3373:	b8 02 00 00 00       	mov    $0x2,%eax
    3378:	cd 40                	int    $0x40
    337a:	c3                   	ret    

0000337b <wait>:
SYSCALL(wait)
    337b:	b8 03 00 00 00       	mov    $0x3,%eax
    3380:	cd 40                	int    $0x40
    3382:	c3                   	ret    

00003383 <pipe>:
SYSCALL(pipe)
    3383:	b8 04 00 00 00       	mov    $0x4,%eax
    3388:	cd 40                	int    $0x40
    338a:	c3                   	ret    

0000338b <read>:
SYSCALL(read)
    338b:	b8 05 00 00 00       	mov    $0x5,%eax
    3390:	cd 40                	int    $0x40
    3392:	c3                   	ret    

00003393 <write>:
SYSCALL(write)
    3393:	b8 10 00 00 00       	mov    $0x10,%eax
    3398:	cd 40                	int    $0x40
    339a:	c3                   	ret    

0000339b <close>:
SYSCALL(close)
    339b:	b8 15 00 00 00       	mov    $0x15,%eax
    33a0:	cd 40                	int    $0x40
    33a2:	c3                   	ret    

000033a3 <kill>:
SYSCALL(kill)
    33a3:	b8 06 00 00 00       	mov    $0x6,%eax
    33a8:	cd 40                	int    $0x40
    33aa:	c3                   	ret    

000033ab <exec>:
SYSCALL(exec)
    33ab:	b8 07 00 00 00       	mov    $0x7,%eax
    33b0:	cd 40                	int    $0x40
    33b2:	c3                   	ret    

000033b3 <open>:
SYSCALL(open)
    33b3:	b8 0f 00 00 00       	mov    $0xf,%eax
    33b8:	cd 40                	int    $0x40
    33ba:	c3                   	ret    

000033bb <mknod>:
SYSCALL(mknod)
    33bb:	b8 11 00 00 00       	mov    $0x11,%eax
    33c0:	cd 40                	int    $0x40
    33c2:	c3                   	ret    

000033c3 <unlink>:
SYSCALL(unlink)
    33c3:	b8 12 00 00 00       	mov    $0x12,%eax
    33c8:	cd 40                	int    $0x40
    33ca:	c3                   	ret    

000033cb <fstat>:
SYSCALL(fstat)
    33cb:	b8 08 00 00 00       	mov    $0x8,%eax
    33d0:	cd 40                	int    $0x40
    33d2:	c3                   	ret    

000033d3 <link>:
SYSCALL(link)
    33d3:	b8 13 00 00 00       	mov    $0x13,%eax
    33d8:	cd 40                	int    $0x40
    33da:	c3                   	ret    

000033db <mkdir>:
SYSCALL(mkdir)
    33db:	b8 14 00 00 00       	mov    $0x14,%eax
    33e0:	cd 40                	int    $0x40
    33e2:	c3                   	ret    

000033e3 <chdir>:
SYSCALL(chdir)
    33e3:	b8 09 00 00 00       	mov    $0x9,%eax
    33e8:	cd 40                	int    $0x40
    33ea:	c3                   	ret    

000033eb <dup>:
SYSCALL(dup)
    33eb:	b8 0a 00 00 00       	mov    $0xa,%eax
    33f0:	cd 40                	int    $0x40
    33f2:	c3                   	ret    

000033f3 <getpid>:
SYSCALL(getpid)
    33f3:	b8 0b 00 00 00       	mov    $0xb,%eax
    33f8:	cd 40                	int    $0x40
    33fa:	c3                   	ret    

000033fb <sbrk>:
SYSCALL(sbrk)
    33fb:	b8 0c 00 00 00       	mov    $0xc,%eax
    3400:	cd 40                	int    $0x40
    3402:	c3                   	ret    

00003403 <sleep>:
SYSCALL(sleep)
    3403:	b8 0d 00 00 00       	mov    $0xd,%eax
    3408:	cd 40                	int    $0x40
    340a:	c3                   	ret    

0000340b <uptime>:
SYSCALL(uptime)
    340b:	b8 0e 00 00 00       	mov    $0xe,%eax
    3410:	cd 40                	int    $0x40
    3412:	c3                   	ret    
