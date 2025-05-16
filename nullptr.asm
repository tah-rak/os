
_nullptr:     file format elf32-i386


Disassembly of section .text:

00003000 <main>:
#include "user.h"

int main()
{
    int *p = 0;
    printf(1, "*p: %d \n",*p);
    3000:	a1 00 00 00 00       	mov    0x0,%eax
    3005:	0f 0b                	ud2    
    3007:	66 90                	xchg   %ax,%ax
    3009:	66 90                	xchg   %ax,%ax
    300b:	66 90                	xchg   %ax,%ax
    300d:	66 90                	xchg   %ax,%ax
    300f:	90                   	nop

00003010 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3010:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3011:	31 c0                	xor    %eax,%eax
{
    3013:	89 e5                	mov    %esp,%ebp
    3015:	53                   	push   %ebx
    3016:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3019:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    301c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
    3020:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    3024:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    3027:	83 c0 01             	add    $0x1,%eax
    302a:	84 d2                	test   %dl,%dl
    302c:	75 f2                	jne    3020 <strcpy+0x10>
    ;
  return os;
}
    302e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3031:	89 c8                	mov    %ecx,%eax
    3033:	c9                   	leave  
    3034:	c3                   	ret    
    3035:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    303c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003040 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3040:	55                   	push   %ebp
    3041:	89 e5                	mov    %esp,%ebp
    3043:	53                   	push   %ebx
    3044:	8b 55 08             	mov    0x8(%ebp),%edx
    3047:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    304a:	0f b6 02             	movzbl (%edx),%eax
    304d:	84 c0                	test   %al,%al
    304f:	75 17                	jne    3068 <strcmp+0x28>
    3051:	eb 3a                	jmp    308d <strcmp+0x4d>
    3053:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3057:	90                   	nop
    3058:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
    305c:	83 c2 01             	add    $0x1,%edx
    305f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    3062:	84 c0                	test   %al,%al
    3064:	74 1a                	je     3080 <strcmp+0x40>
    p++, q++;
    3066:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
    3068:	0f b6 19             	movzbl (%ecx),%ebx
    306b:	38 c3                	cmp    %al,%bl
    306d:	74 e9                	je     3058 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
    306f:	29 d8                	sub    %ebx,%eax
}
    3071:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3074:	c9                   	leave  
    3075:	c3                   	ret    
    3076:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    307d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
    3080:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    3084:	31 c0                	xor    %eax,%eax
    3086:	29 d8                	sub    %ebx,%eax
}
    3088:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    308b:	c9                   	leave  
    308c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
    308d:	0f b6 19             	movzbl (%ecx),%ebx
    3090:	31 c0                	xor    %eax,%eax
    3092:	eb db                	jmp    306f <strcmp+0x2f>
    3094:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    309b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    309f:	90                   	nop

000030a0 <strlen>:

uint
strlen(const char *s)
{
    30a0:	55                   	push   %ebp
    30a1:	89 e5                	mov    %esp,%ebp
    30a3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    30a6:	80 3a 00             	cmpb   $0x0,(%edx)
    30a9:	74 15                	je     30c0 <strlen+0x20>
    30ab:	31 c0                	xor    %eax,%eax
    30ad:	8d 76 00             	lea    0x0(%esi),%esi
    30b0:	83 c0 01             	add    $0x1,%eax
    30b3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    30b7:	89 c1                	mov    %eax,%ecx
    30b9:	75 f5                	jne    30b0 <strlen+0x10>
    ;
  return n;
}
    30bb:	89 c8                	mov    %ecx,%eax
    30bd:	5d                   	pop    %ebp
    30be:	c3                   	ret    
    30bf:	90                   	nop
  for(n = 0; s[n]; n++)
    30c0:	31 c9                	xor    %ecx,%ecx
}
    30c2:	5d                   	pop    %ebp
    30c3:	89 c8                	mov    %ecx,%eax
    30c5:	c3                   	ret    
    30c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    30cd:	8d 76 00             	lea    0x0(%esi),%esi

000030d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    30d0:	55                   	push   %ebp
    30d1:	89 e5                	mov    %esp,%ebp
    30d3:	57                   	push   %edi
    30d4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    30d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    30da:	8b 45 0c             	mov    0xc(%ebp),%eax
    30dd:	89 d7                	mov    %edx,%edi
    30df:	fc                   	cld    
    30e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    30e2:	8b 7d fc             	mov    -0x4(%ebp),%edi
    30e5:	89 d0                	mov    %edx,%eax
    30e7:	c9                   	leave  
    30e8:	c3                   	ret    
    30e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000030f0 <strchr>:

char*
strchr(const char *s, char c)
{
    30f0:	55                   	push   %ebp
    30f1:	89 e5                	mov    %esp,%ebp
    30f3:	8b 45 08             	mov    0x8(%ebp),%eax
    30f6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    30fa:	0f b6 10             	movzbl (%eax),%edx
    30fd:	84 d2                	test   %dl,%dl
    30ff:	75 12                	jne    3113 <strchr+0x23>
    3101:	eb 1d                	jmp    3120 <strchr+0x30>
    3103:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3107:	90                   	nop
    3108:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    310c:	83 c0 01             	add    $0x1,%eax
    310f:	84 d2                	test   %dl,%dl
    3111:	74 0d                	je     3120 <strchr+0x30>
    if(*s == c)
    3113:	38 d1                	cmp    %dl,%cl
    3115:	75 f1                	jne    3108 <strchr+0x18>
      return (char*)s;
  return 0;
}
    3117:	5d                   	pop    %ebp
    3118:	c3                   	ret    
    3119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    3120:	31 c0                	xor    %eax,%eax
}
    3122:	5d                   	pop    %ebp
    3123:	c3                   	ret    
    3124:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    312b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    312f:	90                   	nop

00003130 <gets>:

char*
gets(char *buf, int max)
{
    3130:	55                   	push   %ebp
    3131:	89 e5                	mov    %esp,%ebp
    3133:	57                   	push   %edi
    3134:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    3135:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
    3138:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
    3139:	31 db                	xor    %ebx,%ebx
{
    313b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
    313e:	eb 27                	jmp    3167 <gets+0x37>
    cc = read(0, &c, 1);
    3140:	83 ec 04             	sub    $0x4,%esp
    3143:	6a 01                	push   $0x1
    3145:	57                   	push   %edi
    3146:	6a 00                	push   $0x0
    3148:	e8 2e 01 00 00       	call   327b <read>
    if(cc < 1)
    314d:	83 c4 10             	add    $0x10,%esp
    3150:	85 c0                	test   %eax,%eax
    3152:	7e 1d                	jle    3171 <gets+0x41>
      break;
    buf[i++] = c;
    3154:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3158:	8b 55 08             	mov    0x8(%ebp),%edx
    315b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    315f:	3c 0a                	cmp    $0xa,%al
    3161:	74 1d                	je     3180 <gets+0x50>
    3163:	3c 0d                	cmp    $0xd,%al
    3165:	74 19                	je     3180 <gets+0x50>
  for(i=0; i+1 < max; ){
    3167:	89 de                	mov    %ebx,%esi
    3169:	83 c3 01             	add    $0x1,%ebx
    316c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    316f:	7c cf                	jl     3140 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    3171:	8b 45 08             	mov    0x8(%ebp),%eax
    3174:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    3178:	8d 65 f4             	lea    -0xc(%ebp),%esp
    317b:	5b                   	pop    %ebx
    317c:	5e                   	pop    %esi
    317d:	5f                   	pop    %edi
    317e:	5d                   	pop    %ebp
    317f:	c3                   	ret    
  buf[i] = '\0';
    3180:	8b 45 08             	mov    0x8(%ebp),%eax
    3183:	89 de                	mov    %ebx,%esi
    3185:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
    3189:	8d 65 f4             	lea    -0xc(%ebp),%esp
    318c:	5b                   	pop    %ebx
    318d:	5e                   	pop    %esi
    318e:	5f                   	pop    %edi
    318f:	5d                   	pop    %ebp
    3190:	c3                   	ret    
    3191:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3198:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    319f:	90                   	nop

000031a0 <stat>:

int
stat(const char *n, struct stat *st)
{
    31a0:	55                   	push   %ebp
    31a1:	89 e5                	mov    %esp,%ebp
    31a3:	56                   	push   %esi
    31a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    31a5:	83 ec 08             	sub    $0x8,%esp
    31a8:	6a 00                	push   $0x0
    31aa:	ff 75 08             	push   0x8(%ebp)
    31ad:	e8 f1 00 00 00       	call   32a3 <open>
  if(fd < 0)
    31b2:	83 c4 10             	add    $0x10,%esp
    31b5:	85 c0                	test   %eax,%eax
    31b7:	78 27                	js     31e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    31b9:	83 ec 08             	sub    $0x8,%esp
    31bc:	ff 75 0c             	push   0xc(%ebp)
    31bf:	89 c3                	mov    %eax,%ebx
    31c1:	50                   	push   %eax
    31c2:	e8 f4 00 00 00       	call   32bb <fstat>
  close(fd);
    31c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    31ca:	89 c6                	mov    %eax,%esi
  close(fd);
    31cc:	e8 ba 00 00 00       	call   328b <close>
  return r;
    31d1:	83 c4 10             	add    $0x10,%esp
}
    31d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
    31d7:	89 f0                	mov    %esi,%eax
    31d9:	5b                   	pop    %ebx
    31da:	5e                   	pop    %esi
    31db:	5d                   	pop    %ebp
    31dc:	c3                   	ret    
    31dd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    31e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
    31e5:	eb ed                	jmp    31d4 <stat+0x34>
    31e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    31ee:	66 90                	xchg   %ax,%ax

000031f0 <atoi>:

int
atoi(const char *s)
{
    31f0:	55                   	push   %ebp
    31f1:	89 e5                	mov    %esp,%ebp
    31f3:	53                   	push   %ebx
    31f4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    31f7:	0f be 02             	movsbl (%edx),%eax
    31fa:	8d 48 d0             	lea    -0x30(%eax),%ecx
    31fd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    3200:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    3205:	77 1e                	ja     3225 <atoi+0x35>
    3207:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    320e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3210:	83 c2 01             	add    $0x1,%edx
    3213:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    3216:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    321a:	0f be 02             	movsbl (%edx),%eax
    321d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    3220:	80 fb 09             	cmp    $0x9,%bl
    3223:	76 eb                	jbe    3210 <atoi+0x20>
  return n;
}
    3225:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3228:	89 c8                	mov    %ecx,%eax
    322a:	c9                   	leave  
    322b:	c3                   	ret    
    322c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003230 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3230:	55                   	push   %ebp
    3231:	89 e5                	mov    %esp,%ebp
    3233:	57                   	push   %edi
    3234:	8b 45 10             	mov    0x10(%ebp),%eax
    3237:	8b 55 08             	mov    0x8(%ebp),%edx
    323a:	56                   	push   %esi
    323b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    323e:	85 c0                	test   %eax,%eax
    3240:	7e 13                	jle    3255 <memmove+0x25>
    3242:	01 d0                	add    %edx,%eax
  dst = vdst;
    3244:	89 d7                	mov    %edx,%edi
    3246:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    324d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
    3250:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    3251:	39 f8                	cmp    %edi,%eax
    3253:	75 fb                	jne    3250 <memmove+0x20>
  return vdst;
}
    3255:	5e                   	pop    %esi
    3256:	89 d0                	mov    %edx,%eax
    3258:	5f                   	pop    %edi
    3259:	5d                   	pop    %ebp
    325a:	c3                   	ret    

0000325b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    325b:	b8 01 00 00 00       	mov    $0x1,%eax
    3260:	cd 40                	int    $0x40
    3262:	c3                   	ret    

00003263 <exit>:
SYSCALL(exit)
    3263:	b8 02 00 00 00       	mov    $0x2,%eax
    3268:	cd 40                	int    $0x40
    326a:	c3                   	ret    

0000326b <wait>:
SYSCALL(wait)
    326b:	b8 03 00 00 00       	mov    $0x3,%eax
    3270:	cd 40                	int    $0x40
    3272:	c3                   	ret    

00003273 <pipe>:
SYSCALL(pipe)
    3273:	b8 04 00 00 00       	mov    $0x4,%eax
    3278:	cd 40                	int    $0x40
    327a:	c3                   	ret    

0000327b <read>:
SYSCALL(read)
    327b:	b8 05 00 00 00       	mov    $0x5,%eax
    3280:	cd 40                	int    $0x40
    3282:	c3                   	ret    

00003283 <write>:
SYSCALL(write)
    3283:	b8 10 00 00 00       	mov    $0x10,%eax
    3288:	cd 40                	int    $0x40
    328a:	c3                   	ret    

0000328b <close>:
SYSCALL(close)
    328b:	b8 15 00 00 00       	mov    $0x15,%eax
    3290:	cd 40                	int    $0x40
    3292:	c3                   	ret    

00003293 <kill>:
SYSCALL(kill)
    3293:	b8 06 00 00 00       	mov    $0x6,%eax
    3298:	cd 40                	int    $0x40
    329a:	c3                   	ret    

0000329b <exec>:
SYSCALL(exec)
    329b:	b8 07 00 00 00       	mov    $0x7,%eax
    32a0:	cd 40                	int    $0x40
    32a2:	c3                   	ret    

000032a3 <open>:
SYSCALL(open)
    32a3:	b8 0f 00 00 00       	mov    $0xf,%eax
    32a8:	cd 40                	int    $0x40
    32aa:	c3                   	ret    

000032ab <mknod>:
SYSCALL(mknod)
    32ab:	b8 11 00 00 00       	mov    $0x11,%eax
    32b0:	cd 40                	int    $0x40
    32b2:	c3                   	ret    

000032b3 <unlink>:
SYSCALL(unlink)
    32b3:	b8 12 00 00 00       	mov    $0x12,%eax
    32b8:	cd 40                	int    $0x40
    32ba:	c3                   	ret    

000032bb <fstat>:
SYSCALL(fstat)
    32bb:	b8 08 00 00 00       	mov    $0x8,%eax
    32c0:	cd 40                	int    $0x40
    32c2:	c3                   	ret    

000032c3 <link>:
SYSCALL(link)
    32c3:	b8 13 00 00 00       	mov    $0x13,%eax
    32c8:	cd 40                	int    $0x40
    32ca:	c3                   	ret    

000032cb <mkdir>:
SYSCALL(mkdir)
    32cb:	b8 14 00 00 00       	mov    $0x14,%eax
    32d0:	cd 40                	int    $0x40
    32d2:	c3                   	ret    

000032d3 <chdir>:
SYSCALL(chdir)
    32d3:	b8 09 00 00 00       	mov    $0x9,%eax
    32d8:	cd 40                	int    $0x40
    32da:	c3                   	ret    

000032db <dup>:
SYSCALL(dup)
    32db:	b8 0a 00 00 00       	mov    $0xa,%eax
    32e0:	cd 40                	int    $0x40
    32e2:	c3                   	ret    

000032e3 <getpid>:
SYSCALL(getpid)
    32e3:	b8 0b 00 00 00       	mov    $0xb,%eax
    32e8:	cd 40                	int    $0x40
    32ea:	c3                   	ret    

000032eb <sbrk>:
SYSCALL(sbrk)
    32eb:	b8 0c 00 00 00       	mov    $0xc,%eax
    32f0:	cd 40                	int    $0x40
    32f2:	c3                   	ret    

000032f3 <sleep>:
SYSCALL(sleep)
    32f3:	b8 0d 00 00 00       	mov    $0xd,%eax
    32f8:	cd 40                	int    $0x40
    32fa:	c3                   	ret    

000032fb <uptime>:
SYSCALL(uptime)
    32fb:	b8 0e 00 00 00       	mov    $0xe,%eax
    3300:	cd 40                	int    $0x40
    3302:	c3                   	ret    
    3303:	66 90                	xchg   %ax,%ax
    3305:	66 90                	xchg   %ax,%ax
    3307:	66 90                	xchg   %ax,%ax
    3309:	66 90                	xchg   %ax,%ax
    330b:	66 90                	xchg   %ax,%ax
    330d:	66 90                	xchg   %ax,%ax
    330f:	90                   	nop

00003310 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3310:	55                   	push   %ebp
    3311:	89 e5                	mov    %esp,%ebp
    3313:	57                   	push   %edi
    3314:	56                   	push   %esi
    3315:	53                   	push   %ebx
    3316:	83 ec 3c             	sub    $0x3c,%esp
    3319:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    331c:	89 d1                	mov    %edx,%ecx
{
    331e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    3321:	85 d2                	test   %edx,%edx
    3323:	0f 89 7f 00 00 00    	jns    33a8 <printint+0x98>
    3329:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    332d:	74 79                	je     33a8 <printint+0x98>
    neg = 1;
    332f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    3336:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    3338:	31 db                	xor    %ebx,%ebx
    333a:	8d 75 d7             	lea    -0x29(%ebp),%esi
    333d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    3340:	89 c8                	mov    %ecx,%eax
    3342:	31 d2                	xor    %edx,%edx
    3344:	89 cf                	mov    %ecx,%edi
    3346:	f7 75 c4             	divl   -0x3c(%ebp)
    3349:	0f b6 92 48 37 00 00 	movzbl 0x3748(%edx),%edx
    3350:	89 45 c0             	mov    %eax,-0x40(%ebp)
    3353:	89 d8                	mov    %ebx,%eax
    3355:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    3358:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    335b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    335e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    3361:	76 dd                	jbe    3340 <printint+0x30>
  if(neg)
    3363:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    3366:	85 c9                	test   %ecx,%ecx
    3368:	74 0c                	je     3376 <printint+0x66>
    buf[i++] = '-';
    336a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    336f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    3371:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    3376:	8b 7d b8             	mov    -0x48(%ebp),%edi
    3379:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    337d:	eb 07                	jmp    3386 <printint+0x76>
    337f:	90                   	nop
    putc(fd, buf[i]);
    3380:	0f b6 13             	movzbl (%ebx),%edx
    3383:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    3386:	83 ec 04             	sub    $0x4,%esp
    3389:	88 55 d7             	mov    %dl,-0x29(%ebp)
    338c:	6a 01                	push   $0x1
    338e:	56                   	push   %esi
    338f:	57                   	push   %edi
    3390:	e8 ee fe ff ff       	call   3283 <write>
  while(--i >= 0)
    3395:	83 c4 10             	add    $0x10,%esp
    3398:	39 de                	cmp    %ebx,%esi
    339a:	75 e4                	jne    3380 <printint+0x70>
}
    339c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    339f:	5b                   	pop    %ebx
    33a0:	5e                   	pop    %esi
    33a1:	5f                   	pop    %edi
    33a2:	5d                   	pop    %ebp
    33a3:	c3                   	ret    
    33a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    33a8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    33af:	eb 87                	jmp    3338 <printint+0x28>
    33b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    33b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    33bf:	90                   	nop

000033c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    33c0:	55                   	push   %ebp
    33c1:	89 e5                	mov    %esp,%ebp
    33c3:	57                   	push   %edi
    33c4:	56                   	push   %esi
    33c5:	53                   	push   %ebx
    33c6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    33c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
    33cc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
    33cf:	0f b6 13             	movzbl (%ebx),%edx
    33d2:	84 d2                	test   %dl,%dl
    33d4:	74 6a                	je     3440 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
    33d6:	8d 45 10             	lea    0x10(%ebp),%eax
    33d9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    33dc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    33df:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
    33e1:	89 45 d0             	mov    %eax,-0x30(%ebp)
    33e4:	eb 36                	jmp    341c <printf+0x5c>
    33e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    33ed:	8d 76 00             	lea    0x0(%esi),%esi
    33f0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    33f3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
    33f8:	83 f8 25             	cmp    $0x25,%eax
    33fb:	74 15                	je     3412 <printf+0x52>
  write(fd, &c, 1);
    33fd:	83 ec 04             	sub    $0x4,%esp
    3400:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3403:	6a 01                	push   $0x1
    3405:	57                   	push   %edi
    3406:	56                   	push   %esi
    3407:	e8 77 fe ff ff       	call   3283 <write>
    340c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
    340f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    3412:	0f b6 13             	movzbl (%ebx),%edx
    3415:	83 c3 01             	add    $0x1,%ebx
    3418:	84 d2                	test   %dl,%dl
    341a:	74 24                	je     3440 <printf+0x80>
    c = fmt[i] & 0xff;
    341c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
    341f:	85 c9                	test   %ecx,%ecx
    3421:	74 cd                	je     33f0 <printf+0x30>
      }
    } else if(state == '%'){
    3423:	83 f9 25             	cmp    $0x25,%ecx
    3426:	75 ea                	jne    3412 <printf+0x52>
      if(c == 'd'){
    3428:	83 f8 25             	cmp    $0x25,%eax
    342b:	0f 84 07 01 00 00    	je     3538 <printf+0x178>
    3431:	83 e8 63             	sub    $0x63,%eax
    3434:	83 f8 15             	cmp    $0x15,%eax
    3437:	77 17                	ja     3450 <printf+0x90>
    3439:	ff 24 85 f0 36 00 00 	jmp    *0x36f0(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    3440:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3443:	5b                   	pop    %ebx
    3444:	5e                   	pop    %esi
    3445:	5f                   	pop    %edi
    3446:	5d                   	pop    %ebp
    3447:	c3                   	ret    
    3448:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    344f:	90                   	nop
  write(fd, &c, 1);
    3450:	83 ec 04             	sub    $0x4,%esp
    3453:	88 55 d4             	mov    %dl,-0x2c(%ebp)
    3456:	6a 01                	push   $0x1
    3458:	57                   	push   %edi
    3459:	56                   	push   %esi
    345a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    345e:	e8 20 fe ff ff       	call   3283 <write>
        putc(fd, c);
    3463:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
    3467:	83 c4 0c             	add    $0xc,%esp
    346a:	88 55 e7             	mov    %dl,-0x19(%ebp)
    346d:	6a 01                	push   $0x1
    346f:	57                   	push   %edi
    3470:	56                   	push   %esi
    3471:	e8 0d fe ff ff       	call   3283 <write>
        putc(fd, c);
    3476:	83 c4 10             	add    $0x10,%esp
      state = 0;
    3479:	31 c9                	xor    %ecx,%ecx
    347b:	eb 95                	jmp    3412 <printf+0x52>
    347d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    3480:	83 ec 0c             	sub    $0xc,%esp
    3483:	b9 10 00 00 00       	mov    $0x10,%ecx
    3488:	6a 00                	push   $0x0
    348a:	8b 45 d0             	mov    -0x30(%ebp),%eax
    348d:	8b 10                	mov    (%eax),%edx
    348f:	89 f0                	mov    %esi,%eax
    3491:	e8 7a fe ff ff       	call   3310 <printint>
        ap++;
    3496:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    349a:	83 c4 10             	add    $0x10,%esp
      state = 0;
    349d:	31 c9                	xor    %ecx,%ecx
    349f:	e9 6e ff ff ff       	jmp    3412 <printf+0x52>
    34a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    34a8:	8b 45 d0             	mov    -0x30(%ebp),%eax
    34ab:	8b 10                	mov    (%eax),%edx
        ap++;
    34ad:	83 c0 04             	add    $0x4,%eax
    34b0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    34b3:	85 d2                	test   %edx,%edx
    34b5:	0f 84 8d 00 00 00    	je     3548 <printf+0x188>
        while(*s != 0){
    34bb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
    34be:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
    34c0:	84 c0                	test   %al,%al
    34c2:	0f 84 4a ff ff ff    	je     3412 <printf+0x52>
    34c8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    34cb:	89 d3                	mov    %edx,%ebx
    34cd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    34d0:	83 ec 04             	sub    $0x4,%esp
          s++;
    34d3:	83 c3 01             	add    $0x1,%ebx
    34d6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    34d9:	6a 01                	push   $0x1
    34db:	57                   	push   %edi
    34dc:	56                   	push   %esi
    34dd:	e8 a1 fd ff ff       	call   3283 <write>
        while(*s != 0){
    34e2:	0f b6 03             	movzbl (%ebx),%eax
    34e5:	83 c4 10             	add    $0x10,%esp
    34e8:	84 c0                	test   %al,%al
    34ea:	75 e4                	jne    34d0 <printf+0x110>
      state = 0;
    34ec:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
    34ef:	31 c9                	xor    %ecx,%ecx
    34f1:	e9 1c ff ff ff       	jmp    3412 <printf+0x52>
    34f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    34fd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    3500:	83 ec 0c             	sub    $0xc,%esp
    3503:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3508:	6a 01                	push   $0x1
    350a:	e9 7b ff ff ff       	jmp    348a <printf+0xca>
    350f:	90                   	nop
        putc(fd, *ap);
    3510:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
    3513:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    3516:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    3518:	6a 01                	push   $0x1
    351a:	57                   	push   %edi
    351b:	56                   	push   %esi
        putc(fd, *ap);
    351c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    351f:	e8 5f fd ff ff       	call   3283 <write>
        ap++;
    3524:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    3528:	83 c4 10             	add    $0x10,%esp
      state = 0;
    352b:	31 c9                	xor    %ecx,%ecx
    352d:	e9 e0 fe ff ff       	jmp    3412 <printf+0x52>
    3532:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
    3538:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    353b:	83 ec 04             	sub    $0x4,%esp
    353e:	e9 2a ff ff ff       	jmp    346d <printf+0xad>
    3543:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3547:	90                   	nop
          s = "(null)";
    3548:	ba e8 36 00 00       	mov    $0x36e8,%edx
        while(*s != 0){
    354d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    3550:	b8 28 00 00 00       	mov    $0x28,%eax
    3555:	89 d3                	mov    %edx,%ebx
    3557:	e9 74 ff ff ff       	jmp    34d0 <printf+0x110>
    355c:	66 90                	xchg   %ax,%ax
    355e:	66 90                	xchg   %ax,%ax

00003560 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    3560:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3561:	a1 e0 39 00 00       	mov    0x39e0,%eax
{
    3566:	89 e5                	mov    %esp,%ebp
    3568:	57                   	push   %edi
    3569:	56                   	push   %esi
    356a:	53                   	push   %ebx
    356b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    356e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3571:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3578:	89 c2                	mov    %eax,%edx
    357a:	8b 00                	mov    (%eax),%eax
    357c:	39 ca                	cmp    %ecx,%edx
    357e:	73 30                	jae    35b0 <free+0x50>
    3580:	39 c1                	cmp    %eax,%ecx
    3582:	72 04                	jb     3588 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3584:	39 c2                	cmp    %eax,%edx
    3586:	72 f0                	jb     3578 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
    3588:	8b 73 fc             	mov    -0x4(%ebx),%esi
    358b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    358e:	39 f8                	cmp    %edi,%eax
    3590:	74 30                	je     35c2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    3592:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    3595:	8b 42 04             	mov    0x4(%edx),%eax
    3598:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    359b:	39 f1                	cmp    %esi,%ecx
    359d:	74 3a                	je     35d9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    359f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    35a1:	5b                   	pop    %ebx
  freep = p;
    35a2:	89 15 e0 39 00 00    	mov    %edx,0x39e0
}
    35a8:	5e                   	pop    %esi
    35a9:	5f                   	pop    %edi
    35aa:	5d                   	pop    %ebp
    35ab:	c3                   	ret    
    35ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    35b0:	39 c2                	cmp    %eax,%edx
    35b2:	72 c4                	jb     3578 <free+0x18>
    35b4:	39 c1                	cmp    %eax,%ecx
    35b6:	73 c0                	jae    3578 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
    35b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    35bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    35be:	39 f8                	cmp    %edi,%eax
    35c0:	75 d0                	jne    3592 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
    35c2:	03 70 04             	add    0x4(%eax),%esi
    35c5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    35c8:	8b 02                	mov    (%edx),%eax
    35ca:	8b 00                	mov    (%eax),%eax
    35cc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    35cf:	8b 42 04             	mov    0x4(%edx),%eax
    35d2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    35d5:	39 f1                	cmp    %esi,%ecx
    35d7:	75 c6                	jne    359f <free+0x3f>
    p->s.size += bp->s.size;
    35d9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    35dc:	89 15 e0 39 00 00    	mov    %edx,0x39e0
    p->s.size += bp->s.size;
    35e2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    35e5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    35e8:	89 0a                	mov    %ecx,(%edx)
}
    35ea:	5b                   	pop    %ebx
    35eb:	5e                   	pop    %esi
    35ec:	5f                   	pop    %edi
    35ed:	5d                   	pop    %ebp
    35ee:	c3                   	ret    
    35ef:	90                   	nop

000035f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    35f0:	55                   	push   %ebp
    35f1:	89 e5                	mov    %esp,%ebp
    35f3:	57                   	push   %edi
    35f4:	56                   	push   %esi
    35f5:	53                   	push   %ebx
    35f6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    35f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    35fc:	8b 3d e0 39 00 00    	mov    0x39e0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3602:	8d 70 07             	lea    0x7(%eax),%esi
    3605:	c1 ee 03             	shr    $0x3,%esi
    3608:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    360b:	85 ff                	test   %edi,%edi
    360d:	0f 84 9d 00 00 00    	je     36b0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3613:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
    3615:	8b 4a 04             	mov    0x4(%edx),%ecx
    3618:	39 f1                	cmp    %esi,%ecx
    361a:	73 6a                	jae    3686 <malloc+0x96>
    361c:	bb 00 10 00 00       	mov    $0x1000,%ebx
    3621:	39 de                	cmp    %ebx,%esi
    3623:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    3626:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
    362d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    3630:	eb 17                	jmp    3649 <malloc+0x59>
    3632:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3638:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    363a:	8b 48 04             	mov    0x4(%eax),%ecx
    363d:	39 f1                	cmp    %esi,%ecx
    363f:	73 4f                	jae    3690 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    3641:	8b 3d e0 39 00 00    	mov    0x39e0,%edi
    3647:	89 c2                	mov    %eax,%edx
    3649:	39 d7                	cmp    %edx,%edi
    364b:	75 eb                	jne    3638 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    364d:	83 ec 0c             	sub    $0xc,%esp
    3650:	ff 75 e4             	push   -0x1c(%ebp)
    3653:	e8 93 fc ff ff       	call   32eb <sbrk>
  if(p == (char*)-1)
    3658:	83 c4 10             	add    $0x10,%esp
    365b:	83 f8 ff             	cmp    $0xffffffff,%eax
    365e:	74 1c                	je     367c <malloc+0x8c>
  hp->s.size = nu;
    3660:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    3663:	83 ec 0c             	sub    $0xc,%esp
    3666:	83 c0 08             	add    $0x8,%eax
    3669:	50                   	push   %eax
    366a:	e8 f1 fe ff ff       	call   3560 <free>
  return freep;
    366f:	8b 15 e0 39 00 00    	mov    0x39e0,%edx
      if((p = morecore(nunits)) == 0)
    3675:	83 c4 10             	add    $0x10,%esp
    3678:	85 d2                	test   %edx,%edx
    367a:	75 bc                	jne    3638 <malloc+0x48>
        return 0;
  }
}
    367c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    367f:	31 c0                	xor    %eax,%eax
}
    3681:	5b                   	pop    %ebx
    3682:	5e                   	pop    %esi
    3683:	5f                   	pop    %edi
    3684:	5d                   	pop    %ebp
    3685:	c3                   	ret    
    if(p->s.size >= nunits){
    3686:	89 d0                	mov    %edx,%eax
    3688:	89 fa                	mov    %edi,%edx
    368a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    3690:	39 ce                	cmp    %ecx,%esi
    3692:	74 4c                	je     36e0 <malloc+0xf0>
        p->s.size -= nunits;
    3694:	29 f1                	sub    %esi,%ecx
    3696:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    3699:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    369c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    369f:	89 15 e0 39 00 00    	mov    %edx,0x39e0
}
    36a5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    36a8:	83 c0 08             	add    $0x8,%eax
}
    36ab:	5b                   	pop    %ebx
    36ac:	5e                   	pop    %esi
    36ad:	5f                   	pop    %edi
    36ae:	5d                   	pop    %ebp
    36af:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
    36b0:	c7 05 e0 39 00 00 e4 	movl   $0x39e4,0x39e0
    36b7:	39 00 00 
    base.s.size = 0;
    36ba:	bf e4 39 00 00       	mov    $0x39e4,%edi
    base.s.ptr = freep = prevp = &base;
    36bf:	c7 05 e4 39 00 00 e4 	movl   $0x39e4,0x39e4
    36c6:	39 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    36c9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
    36cb:	c7 05 e8 39 00 00 00 	movl   $0x0,0x39e8
    36d2:	00 00 00 
    if(p->s.size >= nunits){
    36d5:	e9 42 ff ff ff       	jmp    361c <malloc+0x2c>
    36da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    36e0:	8b 08                	mov    (%eax),%ecx
    36e2:	89 0a                	mov    %ecx,(%edx)
    36e4:	eb b9                	jmp    369f <malloc+0xaf>
