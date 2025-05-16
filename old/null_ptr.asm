
_null_ptr:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "user.h"
#include "stat.h"

int main(int argc , char **argv) {
  int *c = (int *)0x0;
  printf(1, "%d\n", *c);
   0:	a1 00 00 00 00       	mov    0x0,%eax
   5:	0f 0b                	ud2    
   7:	66 90                	xchg   %ax,%ax
   9:	66 90                	xchg   %ax,%ax
   b:	66 90                	xchg   %ax,%ax
   d:	66 90                	xchg   %ax,%ax
   f:	90                   	nop

00000010 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
  10:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  11:	31 c0                	xor    %eax,%eax
{
  13:	89 e5                	mov    %esp,%ebp
  15:	53                   	push   %ebx
  16:	8b 4d 08             	mov    0x8(%ebp),%ecx
  19:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
  20:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
  24:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  27:	83 c0 01             	add    $0x1,%eax
  2a:	84 d2                	test   %dl,%dl
  2c:	75 f2                	jne    20 <strcpy+0x10>
    ;
  return os;
}
  2e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  31:	89 c8                	mov    %ecx,%eax
  33:	c9                   	leave  
  34:	c3                   	ret    
  35:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000040 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  40:	55                   	push   %ebp
  41:	89 e5                	mov    %esp,%ebp
  43:	53                   	push   %ebx
  44:	8b 55 08             	mov    0x8(%ebp),%edx
  47:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
  4a:	0f b6 02             	movzbl (%edx),%eax
  4d:	84 c0                	test   %al,%al
  4f:	75 17                	jne    68 <strcmp+0x28>
  51:	eb 3a                	jmp    8d <strcmp+0x4d>
  53:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  57:	90                   	nop
  58:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
  5c:	83 c2 01             	add    $0x1,%edx
  5f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
  62:	84 c0                	test   %al,%al
  64:	74 1a                	je     80 <strcmp+0x40>
    p++, q++;
  66:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
  68:	0f b6 19             	movzbl (%ecx),%ebx
  6b:	38 c3                	cmp    %al,%bl
  6d:	74 e9                	je     58 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
  6f:	29 d8                	sub    %ebx,%eax
}
  71:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  74:	c9                   	leave  
  75:	c3                   	ret    
  76:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  7d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
  80:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
  84:	31 c0                	xor    %eax,%eax
  86:	29 d8                	sub    %ebx,%eax
}
  88:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  8b:	c9                   	leave  
  8c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
  8d:	0f b6 19             	movzbl (%ecx),%ebx
  90:	31 c0                	xor    %eax,%eax
  92:	eb db                	jmp    6f <strcmp+0x2f>
  94:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  9b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  9f:	90                   	nop

000000a0 <strlen>:

uint
strlen(const char *s)
{
  a0:	55                   	push   %ebp
  a1:	89 e5                	mov    %esp,%ebp
  a3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
  a6:	80 3a 00             	cmpb   $0x0,(%edx)
  a9:	74 15                	je     c0 <strlen+0x20>
  ab:	31 c0                	xor    %eax,%eax
  ad:	8d 76 00             	lea    0x0(%esi),%esi
  b0:	83 c0 01             	add    $0x1,%eax
  b3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
  b7:	89 c1                	mov    %eax,%ecx
  b9:	75 f5                	jne    b0 <strlen+0x10>
    ;
  return n;
}
  bb:	89 c8                	mov    %ecx,%eax
  bd:	5d                   	pop    %ebp
  be:	c3                   	ret    
  bf:	90                   	nop
  for(n = 0; s[n]; n++)
  c0:	31 c9                	xor    %ecx,%ecx
}
  c2:	5d                   	pop    %ebp
  c3:	89 c8                	mov    %ecx,%eax
  c5:	c3                   	ret    
  c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  cd:	8d 76 00             	lea    0x0(%esi),%esi

000000d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
  d0:	55                   	push   %ebp
  d1:	89 e5                	mov    %esp,%ebp
  d3:	57                   	push   %edi
  d4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
  d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
  da:	8b 45 0c             	mov    0xc(%ebp),%eax
  dd:	89 d7                	mov    %edx,%edi
  df:	fc                   	cld    
  e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
  e2:	8b 7d fc             	mov    -0x4(%ebp),%edi
  e5:	89 d0                	mov    %edx,%eax
  e7:	c9                   	leave  
  e8:	c3                   	ret    
  e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000000f0 <strchr>:

char*
strchr(const char *s, char c)
{
  f0:	55                   	push   %ebp
  f1:	89 e5                	mov    %esp,%ebp
  f3:	8b 45 08             	mov    0x8(%ebp),%eax
  f6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
  fa:	0f b6 10             	movzbl (%eax),%edx
  fd:	84 d2                	test   %dl,%dl
  ff:	75 12                	jne    113 <strchr+0x23>
 101:	eb 1d                	jmp    120 <strchr+0x30>
 103:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 107:	90                   	nop
 108:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 10c:	83 c0 01             	add    $0x1,%eax
 10f:	84 d2                	test   %dl,%dl
 111:	74 0d                	je     120 <strchr+0x30>
    if(*s == c)
 113:	38 d1                	cmp    %dl,%cl
 115:	75 f1                	jne    108 <strchr+0x18>
      return (char*)s;
  return 0;
}
 117:	5d                   	pop    %ebp
 118:	c3                   	ret    
 119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 120:	31 c0                	xor    %eax,%eax
}
 122:	5d                   	pop    %ebp
 123:	c3                   	ret    
 124:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 12b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 12f:	90                   	nop

00000130 <gets>:

char*
gets(char *buf, int max)
{
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	57                   	push   %edi
 134:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 135:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 138:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 139:	31 db                	xor    %ebx,%ebx
{
 13b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 13e:	eb 27                	jmp    167 <gets+0x37>
    cc = read(0, &c, 1);
 140:	83 ec 04             	sub    $0x4,%esp
 143:	6a 01                	push   $0x1
 145:	57                   	push   %edi
 146:	6a 00                	push   $0x0
 148:	e8 2e 01 00 00       	call   27b <read>
    if(cc < 1)
 14d:	83 c4 10             	add    $0x10,%esp
 150:	85 c0                	test   %eax,%eax
 152:	7e 1d                	jle    171 <gets+0x41>
      break;
    buf[i++] = c;
 154:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 158:	8b 55 08             	mov    0x8(%ebp),%edx
 15b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 15f:	3c 0a                	cmp    $0xa,%al
 161:	74 1d                	je     180 <gets+0x50>
 163:	3c 0d                	cmp    $0xd,%al
 165:	74 19                	je     180 <gets+0x50>
  for(i=0; i+1 < max; ){
 167:	89 de                	mov    %ebx,%esi
 169:	83 c3 01             	add    $0x1,%ebx
 16c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 16f:	7c cf                	jl     140 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 171:	8b 45 08             	mov    0x8(%ebp),%eax
 174:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 178:	8d 65 f4             	lea    -0xc(%ebp),%esp
 17b:	5b                   	pop    %ebx
 17c:	5e                   	pop    %esi
 17d:	5f                   	pop    %edi
 17e:	5d                   	pop    %ebp
 17f:	c3                   	ret    
  buf[i] = '\0';
 180:	8b 45 08             	mov    0x8(%ebp),%eax
 183:	89 de                	mov    %ebx,%esi
 185:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 189:	8d 65 f4             	lea    -0xc(%ebp),%esp
 18c:	5b                   	pop    %ebx
 18d:	5e                   	pop    %esi
 18e:	5f                   	pop    %edi
 18f:	5d                   	pop    %ebp
 190:	c3                   	ret    
 191:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 198:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 19f:	90                   	nop

000001a0 <stat>:

int
stat(const char *n, struct stat *st)
{
 1a0:	55                   	push   %ebp
 1a1:	89 e5                	mov    %esp,%ebp
 1a3:	56                   	push   %esi
 1a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 1a5:	83 ec 08             	sub    $0x8,%esp
 1a8:	6a 00                	push   $0x0
 1aa:	ff 75 08             	push   0x8(%ebp)
 1ad:	e8 f1 00 00 00       	call   2a3 <open>
  if(fd < 0)
 1b2:	83 c4 10             	add    $0x10,%esp
 1b5:	85 c0                	test   %eax,%eax
 1b7:	78 27                	js     1e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 1b9:	83 ec 08             	sub    $0x8,%esp
 1bc:	ff 75 0c             	push   0xc(%ebp)
 1bf:	89 c3                	mov    %eax,%ebx
 1c1:	50                   	push   %eax
 1c2:	e8 f4 00 00 00       	call   2bb <fstat>
  close(fd);
 1c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 1ca:	89 c6                	mov    %eax,%esi
  close(fd);
 1cc:	e8 ba 00 00 00       	call   28b <close>
  return r;
 1d1:	83 c4 10             	add    $0x10,%esp
}
 1d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1d7:	89 f0                	mov    %esi,%eax
 1d9:	5b                   	pop    %ebx
 1da:	5e                   	pop    %esi
 1db:	5d                   	pop    %ebp
 1dc:	c3                   	ret    
 1dd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 1e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1e5:	eb ed                	jmp    1d4 <stat+0x34>
 1e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1ee:	66 90                	xchg   %ax,%ax

000001f0 <atoi>:

int
atoi(const char *s)
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	53                   	push   %ebx
 1f4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 1f7:	0f be 02             	movsbl (%edx),%eax
 1fa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 1fd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 200:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 205:	77 1e                	ja     225 <atoi+0x35>
 207:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 20e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 210:	83 c2 01             	add    $0x1,%edx
 213:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 216:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 21a:	0f be 02             	movsbl (%edx),%eax
 21d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 220:	80 fb 09             	cmp    $0x9,%bl
 223:	76 eb                	jbe    210 <atoi+0x20>
  return n;
}
 225:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 228:	89 c8                	mov    %ecx,%eax
 22a:	c9                   	leave  
 22b:	c3                   	ret    
 22c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000230 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	57                   	push   %edi
 234:	8b 45 10             	mov    0x10(%ebp),%eax
 237:	8b 55 08             	mov    0x8(%ebp),%edx
 23a:	56                   	push   %esi
 23b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 23e:	85 c0                	test   %eax,%eax
 240:	7e 13                	jle    255 <memmove+0x25>
 242:	01 d0                	add    %edx,%eax
  dst = vdst;
 244:	89 d7                	mov    %edx,%edi
 246:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 24d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 250:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 251:	39 f8                	cmp    %edi,%eax
 253:	75 fb                	jne    250 <memmove+0x20>
  return vdst;
}
 255:	5e                   	pop    %esi
 256:	89 d0                	mov    %edx,%eax
 258:	5f                   	pop    %edi
 259:	5d                   	pop    %ebp
 25a:	c3                   	ret    

0000025b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 25b:	b8 01 00 00 00       	mov    $0x1,%eax
 260:	cd 40                	int    $0x40
 262:	c3                   	ret    

00000263 <exit>:
SYSCALL(exit)
 263:	b8 02 00 00 00       	mov    $0x2,%eax
 268:	cd 40                	int    $0x40
 26a:	c3                   	ret    

0000026b <wait>:
SYSCALL(wait)
 26b:	b8 03 00 00 00       	mov    $0x3,%eax
 270:	cd 40                	int    $0x40
 272:	c3                   	ret    

00000273 <pipe>:
SYSCALL(pipe)
 273:	b8 04 00 00 00       	mov    $0x4,%eax
 278:	cd 40                	int    $0x40
 27a:	c3                   	ret    

0000027b <read>:
SYSCALL(read)
 27b:	b8 05 00 00 00       	mov    $0x5,%eax
 280:	cd 40                	int    $0x40
 282:	c3                   	ret    

00000283 <write>:
SYSCALL(write)
 283:	b8 10 00 00 00       	mov    $0x10,%eax
 288:	cd 40                	int    $0x40
 28a:	c3                   	ret    

0000028b <close>:
SYSCALL(close)
 28b:	b8 15 00 00 00       	mov    $0x15,%eax
 290:	cd 40                	int    $0x40
 292:	c3                   	ret    

00000293 <kill>:
SYSCALL(kill)
 293:	b8 06 00 00 00       	mov    $0x6,%eax
 298:	cd 40                	int    $0x40
 29a:	c3                   	ret    

0000029b <exec>:
SYSCALL(exec)
 29b:	b8 07 00 00 00       	mov    $0x7,%eax
 2a0:	cd 40                	int    $0x40
 2a2:	c3                   	ret    

000002a3 <open>:
SYSCALL(open)
 2a3:	b8 0f 00 00 00       	mov    $0xf,%eax
 2a8:	cd 40                	int    $0x40
 2aa:	c3                   	ret    

000002ab <mknod>:
SYSCALL(mknod)
 2ab:	b8 11 00 00 00       	mov    $0x11,%eax
 2b0:	cd 40                	int    $0x40
 2b2:	c3                   	ret    

000002b3 <unlink>:
SYSCALL(unlink)
 2b3:	b8 12 00 00 00       	mov    $0x12,%eax
 2b8:	cd 40                	int    $0x40
 2ba:	c3                   	ret    

000002bb <fstat>:
SYSCALL(fstat)
 2bb:	b8 08 00 00 00       	mov    $0x8,%eax
 2c0:	cd 40                	int    $0x40
 2c2:	c3                   	ret    

000002c3 <link>:
SYSCALL(link)
 2c3:	b8 13 00 00 00       	mov    $0x13,%eax
 2c8:	cd 40                	int    $0x40
 2ca:	c3                   	ret    

000002cb <mkdir>:
SYSCALL(mkdir)
 2cb:	b8 14 00 00 00       	mov    $0x14,%eax
 2d0:	cd 40                	int    $0x40
 2d2:	c3                   	ret    

000002d3 <chdir>:
SYSCALL(chdir)
 2d3:	b8 09 00 00 00       	mov    $0x9,%eax
 2d8:	cd 40                	int    $0x40
 2da:	c3                   	ret    

000002db <dup>:
SYSCALL(dup)
 2db:	b8 0a 00 00 00       	mov    $0xa,%eax
 2e0:	cd 40                	int    $0x40
 2e2:	c3                   	ret    

000002e3 <getpid>:
SYSCALL(getpid)
 2e3:	b8 0b 00 00 00       	mov    $0xb,%eax
 2e8:	cd 40                	int    $0x40
 2ea:	c3                   	ret    

000002eb <sbrk>:
SYSCALL(sbrk)
 2eb:	b8 0c 00 00 00       	mov    $0xc,%eax
 2f0:	cd 40                	int    $0x40
 2f2:	c3                   	ret    

000002f3 <sleep>:
SYSCALL(sleep)
 2f3:	b8 0d 00 00 00       	mov    $0xd,%eax
 2f8:	cd 40                	int    $0x40
 2fa:	c3                   	ret    

000002fb <uptime>:
SYSCALL(uptime)
 2fb:	b8 0e 00 00 00       	mov    $0xe,%eax
 300:	cd 40                	int    $0x40
 302:	c3                   	ret    
 303:	66 90                	xchg   %ax,%ax
 305:	66 90                	xchg   %ax,%ax
 307:	66 90                	xchg   %ax,%ax
 309:	66 90                	xchg   %ax,%ax
 30b:	66 90                	xchg   %ax,%ax
 30d:	66 90                	xchg   %ax,%ax
 30f:	90                   	nop

00000310 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	57                   	push   %edi
 314:	56                   	push   %esi
 315:	53                   	push   %ebx
 316:	83 ec 3c             	sub    $0x3c,%esp
 319:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 31c:	89 d1                	mov    %edx,%ecx
{
 31e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 321:	85 d2                	test   %edx,%edx
 323:	0f 89 7f 00 00 00    	jns    3a8 <printint+0x98>
 329:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 32d:	74 79                	je     3a8 <printint+0x98>
    neg = 1;
 32f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 336:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 338:	31 db                	xor    %ebx,%ebx
 33a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 33d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 340:	89 c8                	mov    %ecx,%eax
 342:	31 d2                	xor    %edx,%edx
 344:	89 cf                	mov    %ecx,%edi
 346:	f7 75 c4             	divl   -0x3c(%ebp)
 349:	0f b6 92 48 07 00 00 	movzbl 0x748(%edx),%edx
 350:	89 45 c0             	mov    %eax,-0x40(%ebp)
 353:	89 d8                	mov    %ebx,%eax
 355:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 358:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 35b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 35e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 361:	76 dd                	jbe    340 <printint+0x30>
  if(neg)
 363:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 366:	85 c9                	test   %ecx,%ecx
 368:	74 0c                	je     376 <printint+0x66>
    buf[i++] = '-';
 36a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 36f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 371:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 376:	8b 7d b8             	mov    -0x48(%ebp),%edi
 379:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 37d:	eb 07                	jmp    386 <printint+0x76>
 37f:	90                   	nop
    putc(fd, buf[i]);
 380:	0f b6 13             	movzbl (%ebx),%edx
 383:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 386:	83 ec 04             	sub    $0x4,%esp
 389:	88 55 d7             	mov    %dl,-0x29(%ebp)
 38c:	6a 01                	push   $0x1
 38e:	56                   	push   %esi
 38f:	57                   	push   %edi
 390:	e8 ee fe ff ff       	call   283 <write>
  while(--i >= 0)
 395:	83 c4 10             	add    $0x10,%esp
 398:	39 de                	cmp    %ebx,%esi
 39a:	75 e4                	jne    380 <printint+0x70>
}
 39c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 39f:	5b                   	pop    %ebx
 3a0:	5e                   	pop    %esi
 3a1:	5f                   	pop    %edi
 3a2:	5d                   	pop    %ebp
 3a3:	c3                   	ret    
 3a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 3a8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 3af:	eb 87                	jmp    338 <printint+0x28>
 3b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3bf:	90                   	nop

000003c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	57                   	push   %edi
 3c4:	56                   	push   %esi
 3c5:	53                   	push   %ebx
 3c6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 3c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 3cc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 3cf:	0f b6 13             	movzbl (%ebx),%edx
 3d2:	84 d2                	test   %dl,%dl
 3d4:	74 6a                	je     440 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 3d6:	8d 45 10             	lea    0x10(%ebp),%eax
 3d9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 3dc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 3df:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 3e1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 3e4:	eb 36                	jmp    41c <printf+0x5c>
 3e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ed:	8d 76 00             	lea    0x0(%esi),%esi
 3f0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 3f3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 3f8:	83 f8 25             	cmp    $0x25,%eax
 3fb:	74 15                	je     412 <printf+0x52>
  write(fd, &c, 1);
 3fd:	83 ec 04             	sub    $0x4,%esp
 400:	88 55 e7             	mov    %dl,-0x19(%ebp)
 403:	6a 01                	push   $0x1
 405:	57                   	push   %edi
 406:	56                   	push   %esi
 407:	e8 77 fe ff ff       	call   283 <write>
 40c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 40f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 412:	0f b6 13             	movzbl (%ebx),%edx
 415:	83 c3 01             	add    $0x1,%ebx
 418:	84 d2                	test   %dl,%dl
 41a:	74 24                	je     440 <printf+0x80>
    c = fmt[i] & 0xff;
 41c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 41f:	85 c9                	test   %ecx,%ecx
 421:	74 cd                	je     3f0 <printf+0x30>
      }
    } else if(state == '%'){
 423:	83 f9 25             	cmp    $0x25,%ecx
 426:	75 ea                	jne    412 <printf+0x52>
      if(c == 'd'){
 428:	83 f8 25             	cmp    $0x25,%eax
 42b:	0f 84 07 01 00 00    	je     538 <printf+0x178>
 431:	83 e8 63             	sub    $0x63,%eax
 434:	83 f8 15             	cmp    $0x15,%eax
 437:	77 17                	ja     450 <printf+0x90>
 439:	ff 24 85 f0 06 00 00 	jmp    *0x6f0(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 440:	8d 65 f4             	lea    -0xc(%ebp),%esp
 443:	5b                   	pop    %ebx
 444:	5e                   	pop    %esi
 445:	5f                   	pop    %edi
 446:	5d                   	pop    %ebp
 447:	c3                   	ret    
 448:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44f:	90                   	nop
  write(fd, &c, 1);
 450:	83 ec 04             	sub    $0x4,%esp
 453:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 456:	6a 01                	push   $0x1
 458:	57                   	push   %edi
 459:	56                   	push   %esi
 45a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 45e:	e8 20 fe ff ff       	call   283 <write>
        putc(fd, c);
 463:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 467:	83 c4 0c             	add    $0xc,%esp
 46a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 46d:	6a 01                	push   $0x1
 46f:	57                   	push   %edi
 470:	56                   	push   %esi
 471:	e8 0d fe ff ff       	call   283 <write>
        putc(fd, c);
 476:	83 c4 10             	add    $0x10,%esp
      state = 0;
 479:	31 c9                	xor    %ecx,%ecx
 47b:	eb 95                	jmp    412 <printf+0x52>
 47d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 480:	83 ec 0c             	sub    $0xc,%esp
 483:	b9 10 00 00 00       	mov    $0x10,%ecx
 488:	6a 00                	push   $0x0
 48a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 48d:	8b 10                	mov    (%eax),%edx
 48f:	89 f0                	mov    %esi,%eax
 491:	e8 7a fe ff ff       	call   310 <printint>
        ap++;
 496:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 49a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 49d:	31 c9                	xor    %ecx,%ecx
 49f:	e9 6e ff ff ff       	jmp    412 <printf+0x52>
 4a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 4a8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 4ab:	8b 10                	mov    (%eax),%edx
        ap++;
 4ad:	83 c0 04             	add    $0x4,%eax
 4b0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 4b3:	85 d2                	test   %edx,%edx
 4b5:	0f 84 8d 00 00 00    	je     548 <printf+0x188>
        while(*s != 0){
 4bb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 4be:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 4c0:	84 c0                	test   %al,%al
 4c2:	0f 84 4a ff ff ff    	je     412 <printf+0x52>
 4c8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 4cb:	89 d3                	mov    %edx,%ebx
 4cd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 4d0:	83 ec 04             	sub    $0x4,%esp
          s++;
 4d3:	83 c3 01             	add    $0x1,%ebx
 4d6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 4d9:	6a 01                	push   $0x1
 4db:	57                   	push   %edi
 4dc:	56                   	push   %esi
 4dd:	e8 a1 fd ff ff       	call   283 <write>
        while(*s != 0){
 4e2:	0f b6 03             	movzbl (%ebx),%eax
 4e5:	83 c4 10             	add    $0x10,%esp
 4e8:	84 c0                	test   %al,%al
 4ea:	75 e4                	jne    4d0 <printf+0x110>
      state = 0;
 4ec:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 4ef:	31 c9                	xor    %ecx,%ecx
 4f1:	e9 1c ff ff ff       	jmp    412 <printf+0x52>
 4f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 500:	83 ec 0c             	sub    $0xc,%esp
 503:	b9 0a 00 00 00       	mov    $0xa,%ecx
 508:	6a 01                	push   $0x1
 50a:	e9 7b ff ff ff       	jmp    48a <printf+0xca>
 50f:	90                   	nop
        putc(fd, *ap);
 510:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 513:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 516:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 518:	6a 01                	push   $0x1
 51a:	57                   	push   %edi
 51b:	56                   	push   %esi
        putc(fd, *ap);
 51c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 51f:	e8 5f fd ff ff       	call   283 <write>
        ap++;
 524:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 528:	83 c4 10             	add    $0x10,%esp
      state = 0;
 52b:	31 c9                	xor    %ecx,%ecx
 52d:	e9 e0 fe ff ff       	jmp    412 <printf+0x52>
 532:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 538:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 53b:	83 ec 04             	sub    $0x4,%esp
 53e:	e9 2a ff ff ff       	jmp    46d <printf+0xad>
 543:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 547:	90                   	nop
          s = "(null)";
 548:	ba e8 06 00 00       	mov    $0x6e8,%edx
        while(*s != 0){
 54d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 550:	b8 28 00 00 00       	mov    $0x28,%eax
 555:	89 d3                	mov    %edx,%ebx
 557:	e9 74 ff ff ff       	jmp    4d0 <printf+0x110>
 55c:	66 90                	xchg   %ax,%ax
 55e:	66 90                	xchg   %ax,%ax

00000560 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 560:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 561:	a1 e0 09 00 00       	mov    0x9e0,%eax
{
 566:	89 e5                	mov    %esp,%ebp
 568:	57                   	push   %edi
 569:	56                   	push   %esi
 56a:	53                   	push   %ebx
 56b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 56e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 571:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 578:	89 c2                	mov    %eax,%edx
 57a:	8b 00                	mov    (%eax),%eax
 57c:	39 ca                	cmp    %ecx,%edx
 57e:	73 30                	jae    5b0 <free+0x50>
 580:	39 c1                	cmp    %eax,%ecx
 582:	72 04                	jb     588 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 584:	39 c2                	cmp    %eax,%edx
 586:	72 f0                	jb     578 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 588:	8b 73 fc             	mov    -0x4(%ebx),%esi
 58b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 58e:	39 f8                	cmp    %edi,%eax
 590:	74 30                	je     5c2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 592:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 595:	8b 42 04             	mov    0x4(%edx),%eax
 598:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 59b:	39 f1                	cmp    %esi,%ecx
 59d:	74 3a                	je     5d9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 59f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 5a1:	5b                   	pop    %ebx
  freep = p;
 5a2:	89 15 e0 09 00 00    	mov    %edx,0x9e0
}
 5a8:	5e                   	pop    %esi
 5a9:	5f                   	pop    %edi
 5aa:	5d                   	pop    %ebp
 5ab:	c3                   	ret    
 5ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 5b0:	39 c2                	cmp    %eax,%edx
 5b2:	72 c4                	jb     578 <free+0x18>
 5b4:	39 c1                	cmp    %eax,%ecx
 5b6:	73 c0                	jae    578 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 5b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5be:	39 f8                	cmp    %edi,%eax
 5c0:	75 d0                	jne    592 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 5c2:	03 70 04             	add    0x4(%eax),%esi
 5c5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 5c8:	8b 02                	mov    (%edx),%eax
 5ca:	8b 00                	mov    (%eax),%eax
 5cc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 5cf:	8b 42 04             	mov    0x4(%edx),%eax
 5d2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 5d5:	39 f1                	cmp    %esi,%ecx
 5d7:	75 c6                	jne    59f <free+0x3f>
    p->s.size += bp->s.size;
 5d9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 5dc:	89 15 e0 09 00 00    	mov    %edx,0x9e0
    p->s.size += bp->s.size;
 5e2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 5e5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 5e8:	89 0a                	mov    %ecx,(%edx)
}
 5ea:	5b                   	pop    %ebx
 5eb:	5e                   	pop    %esi
 5ec:	5f                   	pop    %edi
 5ed:	5d                   	pop    %ebp
 5ee:	c3                   	ret    
 5ef:	90                   	nop

000005f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	57                   	push   %edi
 5f4:	56                   	push   %esi
 5f5:	53                   	push   %ebx
 5f6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 5f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 5fc:	8b 3d e0 09 00 00    	mov    0x9e0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 602:	8d 70 07             	lea    0x7(%eax),%esi
 605:	c1 ee 03             	shr    $0x3,%esi
 608:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 60b:	85 ff                	test   %edi,%edi
 60d:	0f 84 9d 00 00 00    	je     6b0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 613:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 615:	8b 4a 04             	mov    0x4(%edx),%ecx
 618:	39 f1                	cmp    %esi,%ecx
 61a:	73 6a                	jae    686 <malloc+0x96>
 61c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 621:	39 de                	cmp    %ebx,%esi
 623:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 626:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 62d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 630:	eb 17                	jmp    649 <malloc+0x59>
 632:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 638:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 63a:	8b 48 04             	mov    0x4(%eax),%ecx
 63d:	39 f1                	cmp    %esi,%ecx
 63f:	73 4f                	jae    690 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 641:	8b 3d e0 09 00 00    	mov    0x9e0,%edi
 647:	89 c2                	mov    %eax,%edx
 649:	39 d7                	cmp    %edx,%edi
 64b:	75 eb                	jne    638 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 64d:	83 ec 0c             	sub    $0xc,%esp
 650:	ff 75 e4             	push   -0x1c(%ebp)
 653:	e8 93 fc ff ff       	call   2eb <sbrk>
  if(p == (char*)-1)
 658:	83 c4 10             	add    $0x10,%esp
 65b:	83 f8 ff             	cmp    $0xffffffff,%eax
 65e:	74 1c                	je     67c <malloc+0x8c>
  hp->s.size = nu;
 660:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 663:	83 ec 0c             	sub    $0xc,%esp
 666:	83 c0 08             	add    $0x8,%eax
 669:	50                   	push   %eax
 66a:	e8 f1 fe ff ff       	call   560 <free>
  return freep;
 66f:	8b 15 e0 09 00 00    	mov    0x9e0,%edx
      if((p = morecore(nunits)) == 0)
 675:	83 c4 10             	add    $0x10,%esp
 678:	85 d2                	test   %edx,%edx
 67a:	75 bc                	jne    638 <malloc+0x48>
        return 0;
  }
}
 67c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 67f:	31 c0                	xor    %eax,%eax
}
 681:	5b                   	pop    %ebx
 682:	5e                   	pop    %esi
 683:	5f                   	pop    %edi
 684:	5d                   	pop    %ebp
 685:	c3                   	ret    
    if(p->s.size >= nunits){
 686:	89 d0                	mov    %edx,%eax
 688:	89 fa                	mov    %edi,%edx
 68a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 690:	39 ce                	cmp    %ecx,%esi
 692:	74 4c                	je     6e0 <malloc+0xf0>
        p->s.size -= nunits;
 694:	29 f1                	sub    %esi,%ecx
 696:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 699:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 69c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 69f:	89 15 e0 09 00 00    	mov    %edx,0x9e0
}
 6a5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 6a8:	83 c0 08             	add    $0x8,%eax
}
 6ab:	5b                   	pop    %ebx
 6ac:	5e                   	pop    %esi
 6ad:	5f                   	pop    %edi
 6ae:	5d                   	pop    %ebp
 6af:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 6b0:	c7 05 e0 09 00 00 e4 	movl   $0x9e4,0x9e0
 6b7:	09 00 00 
    base.s.size = 0;
 6ba:	bf e4 09 00 00       	mov    $0x9e4,%edi
    base.s.ptr = freep = prevp = &base;
 6bf:	c7 05 e4 09 00 00 e4 	movl   $0x9e4,0x9e4
 6c6:	09 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 6c9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 6cb:	c7 05 e8 09 00 00 00 	movl   $0x0,0x9e8
 6d2:	00 00 00 
    if(p->s.size >= nunits){
 6d5:	e9 42 ff ff ff       	jmp    61c <malloc+0x2c>
 6da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 6e0:	8b 08                	mov    (%eax),%ecx
 6e2:	89 0a                	mov    %ecx,(%edx)
 6e4:	eb b9                	jmp    69f <malloc+0xaf>
