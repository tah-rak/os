
_zombie:     file format elf32-i386


Disassembly of section .text:

00003000 <main>:
#include "stat.h"
#include "user.h"

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
  if(fork() > 0)
    3011:	e8 65 02 00 00       	call   327b <fork>
    3016:	85 c0                	test   %eax,%eax
    3018:	7e 0d                	jle    3027 <main+0x27>
    sleep(5);  // Let child exit before parent.
    301a:	83 ec 0c             	sub    $0xc,%esp
    301d:	6a 05                	push   $0x5
    301f:	e8 ef 02 00 00       	call   3313 <sleep>
    3024:	83 c4 10             	add    $0x10,%esp
  exit();
    3027:	e8 57 02 00 00       	call   3283 <exit>
    302c:	66 90                	xchg   %ax,%ax
    302e:	66 90                	xchg   %ax,%ax

00003030 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3030:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3031:	31 c0                	xor    %eax,%eax
{
    3033:	89 e5                	mov    %esp,%ebp
    3035:	53                   	push   %ebx
    3036:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3039:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    303c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
    3040:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    3044:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    3047:	83 c0 01             	add    $0x1,%eax
    304a:	84 d2                	test   %dl,%dl
    304c:	75 f2                	jne    3040 <strcpy+0x10>
    ;
  return os;
}
    304e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3051:	89 c8                	mov    %ecx,%eax
    3053:	c9                   	leave  
    3054:	c3                   	ret    
    3055:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    305c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003060 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3060:	55                   	push   %ebp
    3061:	89 e5                	mov    %esp,%ebp
    3063:	53                   	push   %ebx
    3064:	8b 55 08             	mov    0x8(%ebp),%edx
    3067:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    306a:	0f b6 02             	movzbl (%edx),%eax
    306d:	84 c0                	test   %al,%al
    306f:	75 17                	jne    3088 <strcmp+0x28>
    3071:	eb 3a                	jmp    30ad <strcmp+0x4d>
    3073:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3077:	90                   	nop
    3078:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
    307c:	83 c2 01             	add    $0x1,%edx
    307f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    3082:	84 c0                	test   %al,%al
    3084:	74 1a                	je     30a0 <strcmp+0x40>
    p++, q++;
    3086:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
    3088:	0f b6 19             	movzbl (%ecx),%ebx
    308b:	38 c3                	cmp    %al,%bl
    308d:	74 e9                	je     3078 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
    308f:	29 d8                	sub    %ebx,%eax
}
    3091:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3094:	c9                   	leave  
    3095:	c3                   	ret    
    3096:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    309d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
    30a0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    30a4:	31 c0                	xor    %eax,%eax
    30a6:	29 d8                	sub    %ebx,%eax
}
    30a8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    30ab:	c9                   	leave  
    30ac:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
    30ad:	0f b6 19             	movzbl (%ecx),%ebx
    30b0:	31 c0                	xor    %eax,%eax
    30b2:	eb db                	jmp    308f <strcmp+0x2f>
    30b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    30bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    30bf:	90                   	nop

000030c0 <strlen>:

uint
strlen(const char *s)
{
    30c0:	55                   	push   %ebp
    30c1:	89 e5                	mov    %esp,%ebp
    30c3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    30c6:	80 3a 00             	cmpb   $0x0,(%edx)
    30c9:	74 15                	je     30e0 <strlen+0x20>
    30cb:	31 c0                	xor    %eax,%eax
    30cd:	8d 76 00             	lea    0x0(%esi),%esi
    30d0:	83 c0 01             	add    $0x1,%eax
    30d3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    30d7:	89 c1                	mov    %eax,%ecx
    30d9:	75 f5                	jne    30d0 <strlen+0x10>
    ;
  return n;
}
    30db:	89 c8                	mov    %ecx,%eax
    30dd:	5d                   	pop    %ebp
    30de:	c3                   	ret    
    30df:	90                   	nop
  for(n = 0; s[n]; n++)
    30e0:	31 c9                	xor    %ecx,%ecx
}
    30e2:	5d                   	pop    %ebp
    30e3:	89 c8                	mov    %ecx,%eax
    30e5:	c3                   	ret    
    30e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    30ed:	8d 76 00             	lea    0x0(%esi),%esi

000030f0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    30f0:	55                   	push   %ebp
    30f1:	89 e5                	mov    %esp,%ebp
    30f3:	57                   	push   %edi
    30f4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    30f7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    30fa:	8b 45 0c             	mov    0xc(%ebp),%eax
    30fd:	89 d7                	mov    %edx,%edi
    30ff:	fc                   	cld    
    3100:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3102:	8b 7d fc             	mov    -0x4(%ebp),%edi
    3105:	89 d0                	mov    %edx,%eax
    3107:	c9                   	leave  
    3108:	c3                   	ret    
    3109:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003110 <strchr>:

char*
strchr(const char *s, char c)
{
    3110:	55                   	push   %ebp
    3111:	89 e5                	mov    %esp,%ebp
    3113:	8b 45 08             	mov    0x8(%ebp),%eax
    3116:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    311a:	0f b6 10             	movzbl (%eax),%edx
    311d:	84 d2                	test   %dl,%dl
    311f:	75 12                	jne    3133 <strchr+0x23>
    3121:	eb 1d                	jmp    3140 <strchr+0x30>
    3123:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3127:	90                   	nop
    3128:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    312c:	83 c0 01             	add    $0x1,%eax
    312f:	84 d2                	test   %dl,%dl
    3131:	74 0d                	je     3140 <strchr+0x30>
    if(*s == c)
    3133:	38 d1                	cmp    %dl,%cl
    3135:	75 f1                	jne    3128 <strchr+0x18>
      return (char*)s;
  return 0;
}
    3137:	5d                   	pop    %ebp
    3138:	c3                   	ret    
    3139:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    3140:	31 c0                	xor    %eax,%eax
}
    3142:	5d                   	pop    %ebp
    3143:	c3                   	ret    
    3144:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    314b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    314f:	90                   	nop

00003150 <gets>:

char*
gets(char *buf, int max)
{
    3150:	55                   	push   %ebp
    3151:	89 e5                	mov    %esp,%ebp
    3153:	57                   	push   %edi
    3154:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    3155:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
    3158:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
    3159:	31 db                	xor    %ebx,%ebx
{
    315b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
    315e:	eb 27                	jmp    3187 <gets+0x37>
    cc = read(0, &c, 1);
    3160:	83 ec 04             	sub    $0x4,%esp
    3163:	6a 01                	push   $0x1
    3165:	57                   	push   %edi
    3166:	6a 00                	push   $0x0
    3168:	e8 2e 01 00 00       	call   329b <read>
    if(cc < 1)
    316d:	83 c4 10             	add    $0x10,%esp
    3170:	85 c0                	test   %eax,%eax
    3172:	7e 1d                	jle    3191 <gets+0x41>
      break;
    buf[i++] = c;
    3174:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3178:	8b 55 08             	mov    0x8(%ebp),%edx
    317b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    317f:	3c 0a                	cmp    $0xa,%al
    3181:	74 1d                	je     31a0 <gets+0x50>
    3183:	3c 0d                	cmp    $0xd,%al
    3185:	74 19                	je     31a0 <gets+0x50>
  for(i=0; i+1 < max; ){
    3187:	89 de                	mov    %ebx,%esi
    3189:	83 c3 01             	add    $0x1,%ebx
    318c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    318f:	7c cf                	jl     3160 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    3191:	8b 45 08             	mov    0x8(%ebp),%eax
    3194:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    3198:	8d 65 f4             	lea    -0xc(%ebp),%esp
    319b:	5b                   	pop    %ebx
    319c:	5e                   	pop    %esi
    319d:	5f                   	pop    %edi
    319e:	5d                   	pop    %ebp
    319f:	c3                   	ret    
  buf[i] = '\0';
    31a0:	8b 45 08             	mov    0x8(%ebp),%eax
    31a3:	89 de                	mov    %ebx,%esi
    31a5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
    31a9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    31ac:	5b                   	pop    %ebx
    31ad:	5e                   	pop    %esi
    31ae:	5f                   	pop    %edi
    31af:	5d                   	pop    %ebp
    31b0:	c3                   	ret    
    31b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    31b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    31bf:	90                   	nop

000031c0 <stat>:

int
stat(const char *n, struct stat *st)
{
    31c0:	55                   	push   %ebp
    31c1:	89 e5                	mov    %esp,%ebp
    31c3:	56                   	push   %esi
    31c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    31c5:	83 ec 08             	sub    $0x8,%esp
    31c8:	6a 00                	push   $0x0
    31ca:	ff 75 08             	push   0x8(%ebp)
    31cd:	e8 f1 00 00 00       	call   32c3 <open>
  if(fd < 0)
    31d2:	83 c4 10             	add    $0x10,%esp
    31d5:	85 c0                	test   %eax,%eax
    31d7:	78 27                	js     3200 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    31d9:	83 ec 08             	sub    $0x8,%esp
    31dc:	ff 75 0c             	push   0xc(%ebp)
    31df:	89 c3                	mov    %eax,%ebx
    31e1:	50                   	push   %eax
    31e2:	e8 f4 00 00 00       	call   32db <fstat>
  close(fd);
    31e7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    31ea:	89 c6                	mov    %eax,%esi
  close(fd);
    31ec:	e8 ba 00 00 00       	call   32ab <close>
  return r;
    31f1:	83 c4 10             	add    $0x10,%esp
}
    31f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
    31f7:	89 f0                	mov    %esi,%eax
    31f9:	5b                   	pop    %ebx
    31fa:	5e                   	pop    %esi
    31fb:	5d                   	pop    %ebp
    31fc:	c3                   	ret    
    31fd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    3200:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3205:	eb ed                	jmp    31f4 <stat+0x34>
    3207:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    320e:	66 90                	xchg   %ax,%ax

00003210 <atoi>:

int
atoi(const char *s)
{
    3210:	55                   	push   %ebp
    3211:	89 e5                	mov    %esp,%ebp
    3213:	53                   	push   %ebx
    3214:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3217:	0f be 02             	movsbl (%edx),%eax
    321a:	8d 48 d0             	lea    -0x30(%eax),%ecx
    321d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    3220:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    3225:	77 1e                	ja     3245 <atoi+0x35>
    3227:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    322e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3230:	83 c2 01             	add    $0x1,%edx
    3233:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    3236:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    323a:	0f be 02             	movsbl (%edx),%eax
    323d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    3240:	80 fb 09             	cmp    $0x9,%bl
    3243:	76 eb                	jbe    3230 <atoi+0x20>
  return n;
}
    3245:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3248:	89 c8                	mov    %ecx,%eax
    324a:	c9                   	leave  
    324b:	c3                   	ret    
    324c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003250 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3250:	55                   	push   %ebp
    3251:	89 e5                	mov    %esp,%ebp
    3253:	57                   	push   %edi
    3254:	8b 45 10             	mov    0x10(%ebp),%eax
    3257:	8b 55 08             	mov    0x8(%ebp),%edx
    325a:	56                   	push   %esi
    325b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    325e:	85 c0                	test   %eax,%eax
    3260:	7e 13                	jle    3275 <memmove+0x25>
    3262:	01 d0                	add    %edx,%eax
  dst = vdst;
    3264:	89 d7                	mov    %edx,%edi
    3266:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    326d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
    3270:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    3271:	39 f8                	cmp    %edi,%eax
    3273:	75 fb                	jne    3270 <memmove+0x20>
  return vdst;
}
    3275:	5e                   	pop    %esi
    3276:	89 d0                	mov    %edx,%eax
    3278:	5f                   	pop    %edi
    3279:	5d                   	pop    %ebp
    327a:	c3                   	ret    

0000327b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    327b:	b8 01 00 00 00       	mov    $0x1,%eax
    3280:	cd 40                	int    $0x40
    3282:	c3                   	ret    

00003283 <exit>:
SYSCALL(exit)
    3283:	b8 02 00 00 00       	mov    $0x2,%eax
    3288:	cd 40                	int    $0x40
    328a:	c3                   	ret    

0000328b <wait>:
SYSCALL(wait)
    328b:	b8 03 00 00 00       	mov    $0x3,%eax
    3290:	cd 40                	int    $0x40
    3292:	c3                   	ret    

00003293 <pipe>:
SYSCALL(pipe)
    3293:	b8 04 00 00 00       	mov    $0x4,%eax
    3298:	cd 40                	int    $0x40
    329a:	c3                   	ret    

0000329b <read>:
SYSCALL(read)
    329b:	b8 05 00 00 00       	mov    $0x5,%eax
    32a0:	cd 40                	int    $0x40
    32a2:	c3                   	ret    

000032a3 <write>:
SYSCALL(write)
    32a3:	b8 10 00 00 00       	mov    $0x10,%eax
    32a8:	cd 40                	int    $0x40
    32aa:	c3                   	ret    

000032ab <close>:
SYSCALL(close)
    32ab:	b8 15 00 00 00       	mov    $0x15,%eax
    32b0:	cd 40                	int    $0x40
    32b2:	c3                   	ret    

000032b3 <kill>:
SYSCALL(kill)
    32b3:	b8 06 00 00 00       	mov    $0x6,%eax
    32b8:	cd 40                	int    $0x40
    32ba:	c3                   	ret    

000032bb <exec>:
SYSCALL(exec)
    32bb:	b8 07 00 00 00       	mov    $0x7,%eax
    32c0:	cd 40                	int    $0x40
    32c2:	c3                   	ret    

000032c3 <open>:
SYSCALL(open)
    32c3:	b8 0f 00 00 00       	mov    $0xf,%eax
    32c8:	cd 40                	int    $0x40
    32ca:	c3                   	ret    

000032cb <mknod>:
SYSCALL(mknod)
    32cb:	b8 11 00 00 00       	mov    $0x11,%eax
    32d0:	cd 40                	int    $0x40
    32d2:	c3                   	ret    

000032d3 <unlink>:
SYSCALL(unlink)
    32d3:	b8 12 00 00 00       	mov    $0x12,%eax
    32d8:	cd 40                	int    $0x40
    32da:	c3                   	ret    

000032db <fstat>:
SYSCALL(fstat)
    32db:	b8 08 00 00 00       	mov    $0x8,%eax
    32e0:	cd 40                	int    $0x40
    32e2:	c3                   	ret    

000032e3 <link>:
SYSCALL(link)
    32e3:	b8 13 00 00 00       	mov    $0x13,%eax
    32e8:	cd 40                	int    $0x40
    32ea:	c3                   	ret    

000032eb <mkdir>:
SYSCALL(mkdir)
    32eb:	b8 14 00 00 00       	mov    $0x14,%eax
    32f0:	cd 40                	int    $0x40
    32f2:	c3                   	ret    

000032f3 <chdir>:
SYSCALL(chdir)
    32f3:	b8 09 00 00 00       	mov    $0x9,%eax
    32f8:	cd 40                	int    $0x40
    32fa:	c3                   	ret    

000032fb <dup>:
SYSCALL(dup)
    32fb:	b8 0a 00 00 00       	mov    $0xa,%eax
    3300:	cd 40                	int    $0x40
    3302:	c3                   	ret    

00003303 <getpid>:
SYSCALL(getpid)
    3303:	b8 0b 00 00 00       	mov    $0xb,%eax
    3308:	cd 40                	int    $0x40
    330a:	c3                   	ret    

0000330b <sbrk>:
SYSCALL(sbrk)
    330b:	b8 0c 00 00 00       	mov    $0xc,%eax
    3310:	cd 40                	int    $0x40
    3312:	c3                   	ret    

00003313 <sleep>:
SYSCALL(sleep)
    3313:	b8 0d 00 00 00       	mov    $0xd,%eax
    3318:	cd 40                	int    $0x40
    331a:	c3                   	ret    

0000331b <uptime>:
SYSCALL(uptime)
    331b:	b8 0e 00 00 00       	mov    $0xe,%eax
    3320:	cd 40                	int    $0x40
    3322:	c3                   	ret    
    3323:	66 90                	xchg   %ax,%ax
    3325:	66 90                	xchg   %ax,%ax
    3327:	66 90                	xchg   %ax,%ax
    3329:	66 90                	xchg   %ax,%ax
    332b:	66 90                	xchg   %ax,%ax
    332d:	66 90                	xchg   %ax,%ax
    332f:	90                   	nop

00003330 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3330:	55                   	push   %ebp
    3331:	89 e5                	mov    %esp,%ebp
    3333:	57                   	push   %edi
    3334:	56                   	push   %esi
    3335:	53                   	push   %ebx
    3336:	83 ec 3c             	sub    $0x3c,%esp
    3339:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    333c:	89 d1                	mov    %edx,%ecx
{
    333e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    3341:	85 d2                	test   %edx,%edx
    3343:	0f 89 7f 00 00 00    	jns    33c8 <printint+0x98>
    3349:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    334d:	74 79                	je     33c8 <printint+0x98>
    neg = 1;
    334f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    3356:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    3358:	31 db                	xor    %ebx,%ebx
    335a:	8d 75 d7             	lea    -0x29(%ebp),%esi
    335d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    3360:	89 c8                	mov    %ecx,%eax
    3362:	31 d2                	xor    %edx,%edx
    3364:	89 cf                	mov    %ecx,%edi
    3366:	f7 75 c4             	divl   -0x3c(%ebp)
    3369:	0f b6 92 68 37 00 00 	movzbl 0x3768(%edx),%edx
    3370:	89 45 c0             	mov    %eax,-0x40(%ebp)
    3373:	89 d8                	mov    %ebx,%eax
    3375:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    3378:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    337b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    337e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    3381:	76 dd                	jbe    3360 <printint+0x30>
  if(neg)
    3383:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    3386:	85 c9                	test   %ecx,%ecx
    3388:	74 0c                	je     3396 <printint+0x66>
    buf[i++] = '-';
    338a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    338f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    3391:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    3396:	8b 7d b8             	mov    -0x48(%ebp),%edi
    3399:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    339d:	eb 07                	jmp    33a6 <printint+0x76>
    339f:	90                   	nop
    putc(fd, buf[i]);
    33a0:	0f b6 13             	movzbl (%ebx),%edx
    33a3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    33a6:	83 ec 04             	sub    $0x4,%esp
    33a9:	88 55 d7             	mov    %dl,-0x29(%ebp)
    33ac:	6a 01                	push   $0x1
    33ae:	56                   	push   %esi
    33af:	57                   	push   %edi
    33b0:	e8 ee fe ff ff       	call   32a3 <write>
  while(--i >= 0)
    33b5:	83 c4 10             	add    $0x10,%esp
    33b8:	39 de                	cmp    %ebx,%esi
    33ba:	75 e4                	jne    33a0 <printint+0x70>
}
    33bc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    33bf:	5b                   	pop    %ebx
    33c0:	5e                   	pop    %esi
    33c1:	5f                   	pop    %edi
    33c2:	5d                   	pop    %ebp
    33c3:	c3                   	ret    
    33c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    33c8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    33cf:	eb 87                	jmp    3358 <printint+0x28>
    33d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    33d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    33df:	90                   	nop

000033e0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    33e0:	55                   	push   %ebp
    33e1:	89 e5                	mov    %esp,%ebp
    33e3:	57                   	push   %edi
    33e4:	56                   	push   %esi
    33e5:	53                   	push   %ebx
    33e6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    33e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
    33ec:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
    33ef:	0f b6 13             	movzbl (%ebx),%edx
    33f2:	84 d2                	test   %dl,%dl
    33f4:	74 6a                	je     3460 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
    33f6:	8d 45 10             	lea    0x10(%ebp),%eax
    33f9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    33fc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    33ff:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
    3401:	89 45 d0             	mov    %eax,-0x30(%ebp)
    3404:	eb 36                	jmp    343c <printf+0x5c>
    3406:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    340d:	8d 76 00             	lea    0x0(%esi),%esi
    3410:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    3413:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
    3418:	83 f8 25             	cmp    $0x25,%eax
    341b:	74 15                	je     3432 <printf+0x52>
  write(fd, &c, 1);
    341d:	83 ec 04             	sub    $0x4,%esp
    3420:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3423:	6a 01                	push   $0x1
    3425:	57                   	push   %edi
    3426:	56                   	push   %esi
    3427:	e8 77 fe ff ff       	call   32a3 <write>
    342c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
    342f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    3432:	0f b6 13             	movzbl (%ebx),%edx
    3435:	83 c3 01             	add    $0x1,%ebx
    3438:	84 d2                	test   %dl,%dl
    343a:	74 24                	je     3460 <printf+0x80>
    c = fmt[i] & 0xff;
    343c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
    343f:	85 c9                	test   %ecx,%ecx
    3441:	74 cd                	je     3410 <printf+0x30>
      }
    } else if(state == '%'){
    3443:	83 f9 25             	cmp    $0x25,%ecx
    3446:	75 ea                	jne    3432 <printf+0x52>
      if(c == 'd'){
    3448:	83 f8 25             	cmp    $0x25,%eax
    344b:	0f 84 07 01 00 00    	je     3558 <printf+0x178>
    3451:	83 e8 63             	sub    $0x63,%eax
    3454:	83 f8 15             	cmp    $0x15,%eax
    3457:	77 17                	ja     3470 <printf+0x90>
    3459:	ff 24 85 10 37 00 00 	jmp    *0x3710(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    3460:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3463:	5b                   	pop    %ebx
    3464:	5e                   	pop    %esi
    3465:	5f                   	pop    %edi
    3466:	5d                   	pop    %ebp
    3467:	c3                   	ret    
    3468:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    346f:	90                   	nop
  write(fd, &c, 1);
    3470:	83 ec 04             	sub    $0x4,%esp
    3473:	88 55 d4             	mov    %dl,-0x2c(%ebp)
    3476:	6a 01                	push   $0x1
    3478:	57                   	push   %edi
    3479:	56                   	push   %esi
    347a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    347e:	e8 20 fe ff ff       	call   32a3 <write>
        putc(fd, c);
    3483:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
    3487:	83 c4 0c             	add    $0xc,%esp
    348a:	88 55 e7             	mov    %dl,-0x19(%ebp)
    348d:	6a 01                	push   $0x1
    348f:	57                   	push   %edi
    3490:	56                   	push   %esi
    3491:	e8 0d fe ff ff       	call   32a3 <write>
        putc(fd, c);
    3496:	83 c4 10             	add    $0x10,%esp
      state = 0;
    3499:	31 c9                	xor    %ecx,%ecx
    349b:	eb 95                	jmp    3432 <printf+0x52>
    349d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    34a0:	83 ec 0c             	sub    $0xc,%esp
    34a3:	b9 10 00 00 00       	mov    $0x10,%ecx
    34a8:	6a 00                	push   $0x0
    34aa:	8b 45 d0             	mov    -0x30(%ebp),%eax
    34ad:	8b 10                	mov    (%eax),%edx
    34af:	89 f0                	mov    %esi,%eax
    34b1:	e8 7a fe ff ff       	call   3330 <printint>
        ap++;
    34b6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    34ba:	83 c4 10             	add    $0x10,%esp
      state = 0;
    34bd:	31 c9                	xor    %ecx,%ecx
    34bf:	e9 6e ff ff ff       	jmp    3432 <printf+0x52>
    34c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    34c8:	8b 45 d0             	mov    -0x30(%ebp),%eax
    34cb:	8b 10                	mov    (%eax),%edx
        ap++;
    34cd:	83 c0 04             	add    $0x4,%eax
    34d0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    34d3:	85 d2                	test   %edx,%edx
    34d5:	0f 84 8d 00 00 00    	je     3568 <printf+0x188>
        while(*s != 0){
    34db:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
    34de:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
    34e0:	84 c0                	test   %al,%al
    34e2:	0f 84 4a ff ff ff    	je     3432 <printf+0x52>
    34e8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    34eb:	89 d3                	mov    %edx,%ebx
    34ed:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    34f0:	83 ec 04             	sub    $0x4,%esp
          s++;
    34f3:	83 c3 01             	add    $0x1,%ebx
    34f6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    34f9:	6a 01                	push   $0x1
    34fb:	57                   	push   %edi
    34fc:	56                   	push   %esi
    34fd:	e8 a1 fd ff ff       	call   32a3 <write>
        while(*s != 0){
    3502:	0f b6 03             	movzbl (%ebx),%eax
    3505:	83 c4 10             	add    $0x10,%esp
    3508:	84 c0                	test   %al,%al
    350a:	75 e4                	jne    34f0 <printf+0x110>
      state = 0;
    350c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
    350f:	31 c9                	xor    %ecx,%ecx
    3511:	e9 1c ff ff ff       	jmp    3432 <printf+0x52>
    3516:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    351d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    3520:	83 ec 0c             	sub    $0xc,%esp
    3523:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3528:	6a 01                	push   $0x1
    352a:	e9 7b ff ff ff       	jmp    34aa <printf+0xca>
    352f:	90                   	nop
        putc(fd, *ap);
    3530:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
    3533:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    3536:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    3538:	6a 01                	push   $0x1
    353a:	57                   	push   %edi
    353b:	56                   	push   %esi
        putc(fd, *ap);
    353c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    353f:	e8 5f fd ff ff       	call   32a3 <write>
        ap++;
    3544:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    3548:	83 c4 10             	add    $0x10,%esp
      state = 0;
    354b:	31 c9                	xor    %ecx,%ecx
    354d:	e9 e0 fe ff ff       	jmp    3432 <printf+0x52>
    3552:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
    3558:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    355b:	83 ec 04             	sub    $0x4,%esp
    355e:	e9 2a ff ff ff       	jmp    348d <printf+0xad>
    3563:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3567:	90                   	nop
          s = "(null)";
    3568:	ba 08 37 00 00       	mov    $0x3708,%edx
        while(*s != 0){
    356d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    3570:	b8 28 00 00 00       	mov    $0x28,%eax
    3575:	89 d3                	mov    %edx,%ebx
    3577:	e9 74 ff ff ff       	jmp    34f0 <printf+0x110>
    357c:	66 90                	xchg   %ax,%ax
    357e:	66 90                	xchg   %ax,%ax

00003580 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    3580:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3581:	a1 10 3a 00 00       	mov    0x3a10,%eax
{
    3586:	89 e5                	mov    %esp,%ebp
    3588:	57                   	push   %edi
    3589:	56                   	push   %esi
    358a:	53                   	push   %ebx
    358b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    358e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3591:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3598:	89 c2                	mov    %eax,%edx
    359a:	8b 00                	mov    (%eax),%eax
    359c:	39 ca                	cmp    %ecx,%edx
    359e:	73 30                	jae    35d0 <free+0x50>
    35a0:	39 c1                	cmp    %eax,%ecx
    35a2:	72 04                	jb     35a8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    35a4:	39 c2                	cmp    %eax,%edx
    35a6:	72 f0                	jb     3598 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
    35a8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    35ab:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    35ae:	39 f8                	cmp    %edi,%eax
    35b0:	74 30                	je     35e2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    35b2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    35b5:	8b 42 04             	mov    0x4(%edx),%eax
    35b8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    35bb:	39 f1                	cmp    %esi,%ecx
    35bd:	74 3a                	je     35f9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    35bf:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    35c1:	5b                   	pop    %ebx
  freep = p;
    35c2:	89 15 10 3a 00 00    	mov    %edx,0x3a10
}
    35c8:	5e                   	pop    %esi
    35c9:	5f                   	pop    %edi
    35ca:	5d                   	pop    %ebp
    35cb:	c3                   	ret    
    35cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    35d0:	39 c2                	cmp    %eax,%edx
    35d2:	72 c4                	jb     3598 <free+0x18>
    35d4:	39 c1                	cmp    %eax,%ecx
    35d6:	73 c0                	jae    3598 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
    35d8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    35db:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    35de:	39 f8                	cmp    %edi,%eax
    35e0:	75 d0                	jne    35b2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
    35e2:	03 70 04             	add    0x4(%eax),%esi
    35e5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    35e8:	8b 02                	mov    (%edx),%eax
    35ea:	8b 00                	mov    (%eax),%eax
    35ec:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    35ef:	8b 42 04             	mov    0x4(%edx),%eax
    35f2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    35f5:	39 f1                	cmp    %esi,%ecx
    35f7:	75 c6                	jne    35bf <free+0x3f>
    p->s.size += bp->s.size;
    35f9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    35fc:	89 15 10 3a 00 00    	mov    %edx,0x3a10
    p->s.size += bp->s.size;
    3602:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    3605:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    3608:	89 0a                	mov    %ecx,(%edx)
}
    360a:	5b                   	pop    %ebx
    360b:	5e                   	pop    %esi
    360c:	5f                   	pop    %edi
    360d:	5d                   	pop    %ebp
    360e:	c3                   	ret    
    360f:	90                   	nop

00003610 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    3610:	55                   	push   %ebp
    3611:	89 e5                	mov    %esp,%ebp
    3613:	57                   	push   %edi
    3614:	56                   	push   %esi
    3615:	53                   	push   %ebx
    3616:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3619:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    361c:	8b 3d 10 3a 00 00    	mov    0x3a10,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3622:	8d 70 07             	lea    0x7(%eax),%esi
    3625:	c1 ee 03             	shr    $0x3,%esi
    3628:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    362b:	85 ff                	test   %edi,%edi
    362d:	0f 84 9d 00 00 00    	je     36d0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3633:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
    3635:	8b 4a 04             	mov    0x4(%edx),%ecx
    3638:	39 f1                	cmp    %esi,%ecx
    363a:	73 6a                	jae    36a6 <malloc+0x96>
    363c:	bb 00 10 00 00       	mov    $0x1000,%ebx
    3641:	39 de                	cmp    %ebx,%esi
    3643:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    3646:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
    364d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    3650:	eb 17                	jmp    3669 <malloc+0x59>
    3652:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3658:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    365a:	8b 48 04             	mov    0x4(%eax),%ecx
    365d:	39 f1                	cmp    %esi,%ecx
    365f:	73 4f                	jae    36b0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    3661:	8b 3d 10 3a 00 00    	mov    0x3a10,%edi
    3667:	89 c2                	mov    %eax,%edx
    3669:	39 d7                	cmp    %edx,%edi
    366b:	75 eb                	jne    3658 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    366d:	83 ec 0c             	sub    $0xc,%esp
    3670:	ff 75 e4             	push   -0x1c(%ebp)
    3673:	e8 93 fc ff ff       	call   330b <sbrk>
  if(p == (char*)-1)
    3678:	83 c4 10             	add    $0x10,%esp
    367b:	83 f8 ff             	cmp    $0xffffffff,%eax
    367e:	74 1c                	je     369c <malloc+0x8c>
  hp->s.size = nu;
    3680:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    3683:	83 ec 0c             	sub    $0xc,%esp
    3686:	83 c0 08             	add    $0x8,%eax
    3689:	50                   	push   %eax
    368a:	e8 f1 fe ff ff       	call   3580 <free>
  return freep;
    368f:	8b 15 10 3a 00 00    	mov    0x3a10,%edx
      if((p = morecore(nunits)) == 0)
    3695:	83 c4 10             	add    $0x10,%esp
    3698:	85 d2                	test   %edx,%edx
    369a:	75 bc                	jne    3658 <malloc+0x48>
        return 0;
  }
}
    369c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    369f:	31 c0                	xor    %eax,%eax
}
    36a1:	5b                   	pop    %ebx
    36a2:	5e                   	pop    %esi
    36a3:	5f                   	pop    %edi
    36a4:	5d                   	pop    %ebp
    36a5:	c3                   	ret    
    if(p->s.size >= nunits){
    36a6:	89 d0                	mov    %edx,%eax
    36a8:	89 fa                	mov    %edi,%edx
    36aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    36b0:	39 ce                	cmp    %ecx,%esi
    36b2:	74 4c                	je     3700 <malloc+0xf0>
        p->s.size -= nunits;
    36b4:	29 f1                	sub    %esi,%ecx
    36b6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    36b9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    36bc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    36bf:	89 15 10 3a 00 00    	mov    %edx,0x3a10
}
    36c5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    36c8:	83 c0 08             	add    $0x8,%eax
}
    36cb:	5b                   	pop    %ebx
    36cc:	5e                   	pop    %esi
    36cd:	5f                   	pop    %edi
    36ce:	5d                   	pop    %ebp
    36cf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
    36d0:	c7 05 10 3a 00 00 14 	movl   $0x3a14,0x3a10
    36d7:	3a 00 00 
    base.s.size = 0;
    36da:	bf 14 3a 00 00       	mov    $0x3a14,%edi
    base.s.ptr = freep = prevp = &base;
    36df:	c7 05 14 3a 00 00 14 	movl   $0x3a14,0x3a14
    36e6:	3a 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    36e9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
    36eb:	c7 05 18 3a 00 00 00 	movl   $0x0,0x3a18
    36f2:	00 00 00 
    if(p->s.size >= nunits){
    36f5:	e9 42 ff ff ff       	jmp    363c <malloc+0x2c>
    36fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    3700:	8b 08                	mov    (%eax),%ecx
    3702:	89 0a                	mov    %ecx,(%edx)
    3704:	eb b9                	jmp    36bf <malloc+0xaf>
