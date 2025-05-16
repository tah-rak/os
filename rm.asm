
_rm:     file format elf32-i386


Disassembly of section .text:

00003000 <main>:
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
    3000:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    3004:	83 e4 f0             	and    $0xfffffff0,%esp
    3007:	ff 71 fc             	push   -0x4(%ecx)
    300a:	55                   	push   %ebp
    300b:	89 e5                	mov    %esp,%ebp
    300d:	57                   	push   %edi
    300e:	bf 01 00 00 00       	mov    $0x1,%edi
    3013:	56                   	push   %esi
    3014:	53                   	push   %ebx
    3015:	51                   	push   %ecx
    3016:	83 ec 08             	sub    $0x8,%esp
    3019:	8b 59 04             	mov    0x4(%ecx),%ebx
    301c:	8b 31                	mov    (%ecx),%esi
    301e:	83 c3 04             	add    $0x4,%ebx
  int i;

  if(argc < 2){
    3021:	83 fe 01             	cmp    $0x1,%esi
    3024:	7e 3e                	jle    3064 <main+0x64>
    3026:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    302d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(2, "Usage: rm files...\n");
    exit();
  }

  for(i = 1; i < argc; i++){
    if(unlink(argv[i]) < 0){
    3030:	83 ec 0c             	sub    $0xc,%esp
    3033:	ff 33                	push   (%ebx)
    3035:	e8 e9 02 00 00       	call   3323 <unlink>
    303a:	83 c4 10             	add    $0x10,%esp
    303d:	85 c0                	test   %eax,%eax
    303f:	78 0f                	js     3050 <main+0x50>
  for(i = 1; i < argc; i++){
    3041:	83 c7 01             	add    $0x1,%edi
    3044:	83 c3 04             	add    $0x4,%ebx
    3047:	39 fe                	cmp    %edi,%esi
    3049:	75 e5                	jne    3030 <main+0x30>
      printf(2, "rm: %s failed to delete\n", argv[i]);
      break;
    }
  }

  exit();
    304b:	e8 83 02 00 00       	call   32d3 <exit>
      printf(2, "rm: %s failed to delete\n", argv[i]);
    3050:	50                   	push   %eax
    3051:	ff 33                	push   (%ebx)
    3053:	68 6c 37 00 00       	push   $0x376c
    3058:	6a 02                	push   $0x2
    305a:	e8 d1 03 00 00       	call   3430 <printf>
      break;
    305f:	83 c4 10             	add    $0x10,%esp
    3062:	eb e7                	jmp    304b <main+0x4b>
    printf(2, "Usage: rm files...\n");
    3064:	52                   	push   %edx
    3065:	52                   	push   %edx
    3066:	68 58 37 00 00       	push   $0x3758
    306b:	6a 02                	push   $0x2
    306d:	e8 be 03 00 00       	call   3430 <printf>
    exit();
    3072:	e8 5c 02 00 00       	call   32d3 <exit>
    3077:	66 90                	xchg   %ax,%ax
    3079:	66 90                	xchg   %ax,%ax
    307b:	66 90                	xchg   %ax,%ax
    307d:	66 90                	xchg   %ax,%ax
    307f:	90                   	nop

00003080 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3080:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3081:	31 c0                	xor    %eax,%eax
{
    3083:	89 e5                	mov    %esp,%ebp
    3085:	53                   	push   %ebx
    3086:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3089:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    308c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
    3090:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    3094:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    3097:	83 c0 01             	add    $0x1,%eax
    309a:	84 d2                	test   %dl,%dl
    309c:	75 f2                	jne    3090 <strcpy+0x10>
    ;
  return os;
}
    309e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    30a1:	89 c8                	mov    %ecx,%eax
    30a3:	c9                   	leave  
    30a4:	c3                   	ret    
    30a5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    30ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000030b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    30b0:	55                   	push   %ebp
    30b1:	89 e5                	mov    %esp,%ebp
    30b3:	53                   	push   %ebx
    30b4:	8b 55 08             	mov    0x8(%ebp),%edx
    30b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    30ba:	0f b6 02             	movzbl (%edx),%eax
    30bd:	84 c0                	test   %al,%al
    30bf:	75 17                	jne    30d8 <strcmp+0x28>
    30c1:	eb 3a                	jmp    30fd <strcmp+0x4d>
    30c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    30c7:	90                   	nop
    30c8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
    30cc:	83 c2 01             	add    $0x1,%edx
    30cf:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    30d2:	84 c0                	test   %al,%al
    30d4:	74 1a                	je     30f0 <strcmp+0x40>
    p++, q++;
    30d6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
    30d8:	0f b6 19             	movzbl (%ecx),%ebx
    30db:	38 c3                	cmp    %al,%bl
    30dd:	74 e9                	je     30c8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
    30df:	29 d8                	sub    %ebx,%eax
}
    30e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    30e4:	c9                   	leave  
    30e5:	c3                   	ret    
    30e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    30ed:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
    30f0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    30f4:	31 c0                	xor    %eax,%eax
    30f6:	29 d8                	sub    %ebx,%eax
}
    30f8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    30fb:	c9                   	leave  
    30fc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
    30fd:	0f b6 19             	movzbl (%ecx),%ebx
    3100:	31 c0                	xor    %eax,%eax
    3102:	eb db                	jmp    30df <strcmp+0x2f>
    3104:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    310b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    310f:	90                   	nop

00003110 <strlen>:

uint
strlen(const char *s)
{
    3110:	55                   	push   %ebp
    3111:	89 e5                	mov    %esp,%ebp
    3113:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    3116:	80 3a 00             	cmpb   $0x0,(%edx)
    3119:	74 15                	je     3130 <strlen+0x20>
    311b:	31 c0                	xor    %eax,%eax
    311d:	8d 76 00             	lea    0x0(%esi),%esi
    3120:	83 c0 01             	add    $0x1,%eax
    3123:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    3127:	89 c1                	mov    %eax,%ecx
    3129:	75 f5                	jne    3120 <strlen+0x10>
    ;
  return n;
}
    312b:	89 c8                	mov    %ecx,%eax
    312d:	5d                   	pop    %ebp
    312e:	c3                   	ret    
    312f:	90                   	nop
  for(n = 0; s[n]; n++)
    3130:	31 c9                	xor    %ecx,%ecx
}
    3132:	5d                   	pop    %ebp
    3133:	89 c8                	mov    %ecx,%eax
    3135:	c3                   	ret    
    3136:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    313d:	8d 76 00             	lea    0x0(%esi),%esi

00003140 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3140:	55                   	push   %ebp
    3141:	89 e5                	mov    %esp,%ebp
    3143:	57                   	push   %edi
    3144:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3147:	8b 4d 10             	mov    0x10(%ebp),%ecx
    314a:	8b 45 0c             	mov    0xc(%ebp),%eax
    314d:	89 d7                	mov    %edx,%edi
    314f:	fc                   	cld    
    3150:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3152:	8b 7d fc             	mov    -0x4(%ebp),%edi
    3155:	89 d0                	mov    %edx,%eax
    3157:	c9                   	leave  
    3158:	c3                   	ret    
    3159:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003160 <strchr>:

char*
strchr(const char *s, char c)
{
    3160:	55                   	push   %ebp
    3161:	89 e5                	mov    %esp,%ebp
    3163:	8b 45 08             	mov    0x8(%ebp),%eax
    3166:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    316a:	0f b6 10             	movzbl (%eax),%edx
    316d:	84 d2                	test   %dl,%dl
    316f:	75 12                	jne    3183 <strchr+0x23>
    3171:	eb 1d                	jmp    3190 <strchr+0x30>
    3173:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3177:	90                   	nop
    3178:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    317c:	83 c0 01             	add    $0x1,%eax
    317f:	84 d2                	test   %dl,%dl
    3181:	74 0d                	je     3190 <strchr+0x30>
    if(*s == c)
    3183:	38 d1                	cmp    %dl,%cl
    3185:	75 f1                	jne    3178 <strchr+0x18>
      return (char*)s;
  return 0;
}
    3187:	5d                   	pop    %ebp
    3188:	c3                   	ret    
    3189:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    3190:	31 c0                	xor    %eax,%eax
}
    3192:	5d                   	pop    %ebp
    3193:	c3                   	ret    
    3194:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    319b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    319f:	90                   	nop

000031a0 <gets>:

char*
gets(char *buf, int max)
{
    31a0:	55                   	push   %ebp
    31a1:	89 e5                	mov    %esp,%ebp
    31a3:	57                   	push   %edi
    31a4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    31a5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
    31a8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
    31a9:	31 db                	xor    %ebx,%ebx
{
    31ab:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
    31ae:	eb 27                	jmp    31d7 <gets+0x37>
    cc = read(0, &c, 1);
    31b0:	83 ec 04             	sub    $0x4,%esp
    31b3:	6a 01                	push   $0x1
    31b5:	57                   	push   %edi
    31b6:	6a 00                	push   $0x0
    31b8:	e8 2e 01 00 00       	call   32eb <read>
    if(cc < 1)
    31bd:	83 c4 10             	add    $0x10,%esp
    31c0:	85 c0                	test   %eax,%eax
    31c2:	7e 1d                	jle    31e1 <gets+0x41>
      break;
    buf[i++] = c;
    31c4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    31c8:	8b 55 08             	mov    0x8(%ebp),%edx
    31cb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    31cf:	3c 0a                	cmp    $0xa,%al
    31d1:	74 1d                	je     31f0 <gets+0x50>
    31d3:	3c 0d                	cmp    $0xd,%al
    31d5:	74 19                	je     31f0 <gets+0x50>
  for(i=0; i+1 < max; ){
    31d7:	89 de                	mov    %ebx,%esi
    31d9:	83 c3 01             	add    $0x1,%ebx
    31dc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    31df:	7c cf                	jl     31b0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    31e1:	8b 45 08             	mov    0x8(%ebp),%eax
    31e4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    31e8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    31eb:	5b                   	pop    %ebx
    31ec:	5e                   	pop    %esi
    31ed:	5f                   	pop    %edi
    31ee:	5d                   	pop    %ebp
    31ef:	c3                   	ret    
  buf[i] = '\0';
    31f0:	8b 45 08             	mov    0x8(%ebp),%eax
    31f3:	89 de                	mov    %ebx,%esi
    31f5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
    31f9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    31fc:	5b                   	pop    %ebx
    31fd:	5e                   	pop    %esi
    31fe:	5f                   	pop    %edi
    31ff:	5d                   	pop    %ebp
    3200:	c3                   	ret    
    3201:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3208:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    320f:	90                   	nop

00003210 <stat>:

int
stat(const char *n, struct stat *st)
{
    3210:	55                   	push   %ebp
    3211:	89 e5                	mov    %esp,%ebp
    3213:	56                   	push   %esi
    3214:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3215:	83 ec 08             	sub    $0x8,%esp
    3218:	6a 00                	push   $0x0
    321a:	ff 75 08             	push   0x8(%ebp)
    321d:	e8 f1 00 00 00       	call   3313 <open>
  if(fd < 0)
    3222:	83 c4 10             	add    $0x10,%esp
    3225:	85 c0                	test   %eax,%eax
    3227:	78 27                	js     3250 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    3229:	83 ec 08             	sub    $0x8,%esp
    322c:	ff 75 0c             	push   0xc(%ebp)
    322f:	89 c3                	mov    %eax,%ebx
    3231:	50                   	push   %eax
    3232:	e8 f4 00 00 00       	call   332b <fstat>
  close(fd);
    3237:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    323a:	89 c6                	mov    %eax,%esi
  close(fd);
    323c:	e8 ba 00 00 00       	call   32fb <close>
  return r;
    3241:	83 c4 10             	add    $0x10,%esp
}
    3244:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3247:	89 f0                	mov    %esi,%eax
    3249:	5b                   	pop    %ebx
    324a:	5e                   	pop    %esi
    324b:	5d                   	pop    %ebp
    324c:	c3                   	ret    
    324d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    3250:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3255:	eb ed                	jmp    3244 <stat+0x34>
    3257:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    325e:	66 90                	xchg   %ax,%ax

00003260 <atoi>:

int
atoi(const char *s)
{
    3260:	55                   	push   %ebp
    3261:	89 e5                	mov    %esp,%ebp
    3263:	53                   	push   %ebx
    3264:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3267:	0f be 02             	movsbl (%edx),%eax
    326a:	8d 48 d0             	lea    -0x30(%eax),%ecx
    326d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    3270:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    3275:	77 1e                	ja     3295 <atoi+0x35>
    3277:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    327e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3280:	83 c2 01             	add    $0x1,%edx
    3283:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    3286:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    328a:	0f be 02             	movsbl (%edx),%eax
    328d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    3290:	80 fb 09             	cmp    $0x9,%bl
    3293:	76 eb                	jbe    3280 <atoi+0x20>
  return n;
}
    3295:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3298:	89 c8                	mov    %ecx,%eax
    329a:	c9                   	leave  
    329b:	c3                   	ret    
    329c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000032a0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    32a0:	55                   	push   %ebp
    32a1:	89 e5                	mov    %esp,%ebp
    32a3:	57                   	push   %edi
    32a4:	8b 45 10             	mov    0x10(%ebp),%eax
    32a7:	8b 55 08             	mov    0x8(%ebp),%edx
    32aa:	56                   	push   %esi
    32ab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    32ae:	85 c0                	test   %eax,%eax
    32b0:	7e 13                	jle    32c5 <memmove+0x25>
    32b2:	01 d0                	add    %edx,%eax
  dst = vdst;
    32b4:	89 d7                	mov    %edx,%edi
    32b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    32bd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
    32c0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    32c1:	39 f8                	cmp    %edi,%eax
    32c3:	75 fb                	jne    32c0 <memmove+0x20>
  return vdst;
}
    32c5:	5e                   	pop    %esi
    32c6:	89 d0                	mov    %edx,%eax
    32c8:	5f                   	pop    %edi
    32c9:	5d                   	pop    %ebp
    32ca:	c3                   	ret    

000032cb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    32cb:	b8 01 00 00 00       	mov    $0x1,%eax
    32d0:	cd 40                	int    $0x40
    32d2:	c3                   	ret    

000032d3 <exit>:
SYSCALL(exit)
    32d3:	b8 02 00 00 00       	mov    $0x2,%eax
    32d8:	cd 40                	int    $0x40
    32da:	c3                   	ret    

000032db <wait>:
SYSCALL(wait)
    32db:	b8 03 00 00 00       	mov    $0x3,%eax
    32e0:	cd 40                	int    $0x40
    32e2:	c3                   	ret    

000032e3 <pipe>:
SYSCALL(pipe)
    32e3:	b8 04 00 00 00       	mov    $0x4,%eax
    32e8:	cd 40                	int    $0x40
    32ea:	c3                   	ret    

000032eb <read>:
SYSCALL(read)
    32eb:	b8 05 00 00 00       	mov    $0x5,%eax
    32f0:	cd 40                	int    $0x40
    32f2:	c3                   	ret    

000032f3 <write>:
SYSCALL(write)
    32f3:	b8 10 00 00 00       	mov    $0x10,%eax
    32f8:	cd 40                	int    $0x40
    32fa:	c3                   	ret    

000032fb <close>:
SYSCALL(close)
    32fb:	b8 15 00 00 00       	mov    $0x15,%eax
    3300:	cd 40                	int    $0x40
    3302:	c3                   	ret    

00003303 <kill>:
SYSCALL(kill)
    3303:	b8 06 00 00 00       	mov    $0x6,%eax
    3308:	cd 40                	int    $0x40
    330a:	c3                   	ret    

0000330b <exec>:
SYSCALL(exec)
    330b:	b8 07 00 00 00       	mov    $0x7,%eax
    3310:	cd 40                	int    $0x40
    3312:	c3                   	ret    

00003313 <open>:
SYSCALL(open)
    3313:	b8 0f 00 00 00       	mov    $0xf,%eax
    3318:	cd 40                	int    $0x40
    331a:	c3                   	ret    

0000331b <mknod>:
SYSCALL(mknod)
    331b:	b8 11 00 00 00       	mov    $0x11,%eax
    3320:	cd 40                	int    $0x40
    3322:	c3                   	ret    

00003323 <unlink>:
SYSCALL(unlink)
    3323:	b8 12 00 00 00       	mov    $0x12,%eax
    3328:	cd 40                	int    $0x40
    332a:	c3                   	ret    

0000332b <fstat>:
SYSCALL(fstat)
    332b:	b8 08 00 00 00       	mov    $0x8,%eax
    3330:	cd 40                	int    $0x40
    3332:	c3                   	ret    

00003333 <link>:
SYSCALL(link)
    3333:	b8 13 00 00 00       	mov    $0x13,%eax
    3338:	cd 40                	int    $0x40
    333a:	c3                   	ret    

0000333b <mkdir>:
SYSCALL(mkdir)
    333b:	b8 14 00 00 00       	mov    $0x14,%eax
    3340:	cd 40                	int    $0x40
    3342:	c3                   	ret    

00003343 <chdir>:
SYSCALL(chdir)
    3343:	b8 09 00 00 00       	mov    $0x9,%eax
    3348:	cd 40                	int    $0x40
    334a:	c3                   	ret    

0000334b <dup>:
SYSCALL(dup)
    334b:	b8 0a 00 00 00       	mov    $0xa,%eax
    3350:	cd 40                	int    $0x40
    3352:	c3                   	ret    

00003353 <getpid>:
SYSCALL(getpid)
    3353:	b8 0b 00 00 00       	mov    $0xb,%eax
    3358:	cd 40                	int    $0x40
    335a:	c3                   	ret    

0000335b <sbrk>:
SYSCALL(sbrk)
    335b:	b8 0c 00 00 00       	mov    $0xc,%eax
    3360:	cd 40                	int    $0x40
    3362:	c3                   	ret    

00003363 <sleep>:
SYSCALL(sleep)
    3363:	b8 0d 00 00 00       	mov    $0xd,%eax
    3368:	cd 40                	int    $0x40
    336a:	c3                   	ret    

0000336b <uptime>:
SYSCALL(uptime)
    336b:	b8 0e 00 00 00       	mov    $0xe,%eax
    3370:	cd 40                	int    $0x40
    3372:	c3                   	ret    
    3373:	66 90                	xchg   %ax,%ax
    3375:	66 90                	xchg   %ax,%ax
    3377:	66 90                	xchg   %ax,%ax
    3379:	66 90                	xchg   %ax,%ax
    337b:	66 90                	xchg   %ax,%ax
    337d:	66 90                	xchg   %ax,%ax
    337f:	90                   	nop

00003380 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3380:	55                   	push   %ebp
    3381:	89 e5                	mov    %esp,%ebp
    3383:	57                   	push   %edi
    3384:	56                   	push   %esi
    3385:	53                   	push   %ebx
    3386:	83 ec 3c             	sub    $0x3c,%esp
    3389:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    338c:	89 d1                	mov    %edx,%ecx
{
    338e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    3391:	85 d2                	test   %edx,%edx
    3393:	0f 89 7f 00 00 00    	jns    3418 <printint+0x98>
    3399:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    339d:	74 79                	je     3418 <printint+0x98>
    neg = 1;
    339f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    33a6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    33a8:	31 db                	xor    %ebx,%ebx
    33aa:	8d 75 d7             	lea    -0x29(%ebp),%esi
    33ad:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    33b0:	89 c8                	mov    %ecx,%eax
    33b2:	31 d2                	xor    %edx,%edx
    33b4:	89 cf                	mov    %ecx,%edi
    33b6:	f7 75 c4             	divl   -0x3c(%ebp)
    33b9:	0f b6 92 e4 37 00 00 	movzbl 0x37e4(%edx),%edx
    33c0:	89 45 c0             	mov    %eax,-0x40(%ebp)
    33c3:	89 d8                	mov    %ebx,%eax
    33c5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    33c8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    33cb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    33ce:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    33d1:	76 dd                	jbe    33b0 <printint+0x30>
  if(neg)
    33d3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    33d6:	85 c9                	test   %ecx,%ecx
    33d8:	74 0c                	je     33e6 <printint+0x66>
    buf[i++] = '-';
    33da:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    33df:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    33e1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    33e6:	8b 7d b8             	mov    -0x48(%ebp),%edi
    33e9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    33ed:	eb 07                	jmp    33f6 <printint+0x76>
    33ef:	90                   	nop
    putc(fd, buf[i]);
    33f0:	0f b6 13             	movzbl (%ebx),%edx
    33f3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    33f6:	83 ec 04             	sub    $0x4,%esp
    33f9:	88 55 d7             	mov    %dl,-0x29(%ebp)
    33fc:	6a 01                	push   $0x1
    33fe:	56                   	push   %esi
    33ff:	57                   	push   %edi
    3400:	e8 ee fe ff ff       	call   32f3 <write>
  while(--i >= 0)
    3405:	83 c4 10             	add    $0x10,%esp
    3408:	39 de                	cmp    %ebx,%esi
    340a:	75 e4                	jne    33f0 <printint+0x70>
}
    340c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    340f:	5b                   	pop    %ebx
    3410:	5e                   	pop    %esi
    3411:	5f                   	pop    %edi
    3412:	5d                   	pop    %ebp
    3413:	c3                   	ret    
    3414:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    3418:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    341f:	eb 87                	jmp    33a8 <printint+0x28>
    3421:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3428:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    342f:	90                   	nop

00003430 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    3430:	55                   	push   %ebp
    3431:	89 e5                	mov    %esp,%ebp
    3433:	57                   	push   %edi
    3434:	56                   	push   %esi
    3435:	53                   	push   %ebx
    3436:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3439:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
    343c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
    343f:	0f b6 13             	movzbl (%ebx),%edx
    3442:	84 d2                	test   %dl,%dl
    3444:	74 6a                	je     34b0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
    3446:	8d 45 10             	lea    0x10(%ebp),%eax
    3449:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    344c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    344f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
    3451:	89 45 d0             	mov    %eax,-0x30(%ebp)
    3454:	eb 36                	jmp    348c <printf+0x5c>
    3456:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    345d:	8d 76 00             	lea    0x0(%esi),%esi
    3460:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    3463:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
    3468:	83 f8 25             	cmp    $0x25,%eax
    346b:	74 15                	je     3482 <printf+0x52>
  write(fd, &c, 1);
    346d:	83 ec 04             	sub    $0x4,%esp
    3470:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3473:	6a 01                	push   $0x1
    3475:	57                   	push   %edi
    3476:	56                   	push   %esi
    3477:	e8 77 fe ff ff       	call   32f3 <write>
    347c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
    347f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    3482:	0f b6 13             	movzbl (%ebx),%edx
    3485:	83 c3 01             	add    $0x1,%ebx
    3488:	84 d2                	test   %dl,%dl
    348a:	74 24                	je     34b0 <printf+0x80>
    c = fmt[i] & 0xff;
    348c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
    348f:	85 c9                	test   %ecx,%ecx
    3491:	74 cd                	je     3460 <printf+0x30>
      }
    } else if(state == '%'){
    3493:	83 f9 25             	cmp    $0x25,%ecx
    3496:	75 ea                	jne    3482 <printf+0x52>
      if(c == 'd'){
    3498:	83 f8 25             	cmp    $0x25,%eax
    349b:	0f 84 07 01 00 00    	je     35a8 <printf+0x178>
    34a1:	83 e8 63             	sub    $0x63,%eax
    34a4:	83 f8 15             	cmp    $0x15,%eax
    34a7:	77 17                	ja     34c0 <printf+0x90>
    34a9:	ff 24 85 8c 37 00 00 	jmp    *0x378c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    34b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    34b3:	5b                   	pop    %ebx
    34b4:	5e                   	pop    %esi
    34b5:	5f                   	pop    %edi
    34b6:	5d                   	pop    %ebp
    34b7:	c3                   	ret    
    34b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    34bf:	90                   	nop
  write(fd, &c, 1);
    34c0:	83 ec 04             	sub    $0x4,%esp
    34c3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
    34c6:	6a 01                	push   $0x1
    34c8:	57                   	push   %edi
    34c9:	56                   	push   %esi
    34ca:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    34ce:	e8 20 fe ff ff       	call   32f3 <write>
        putc(fd, c);
    34d3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
    34d7:	83 c4 0c             	add    $0xc,%esp
    34da:	88 55 e7             	mov    %dl,-0x19(%ebp)
    34dd:	6a 01                	push   $0x1
    34df:	57                   	push   %edi
    34e0:	56                   	push   %esi
    34e1:	e8 0d fe ff ff       	call   32f3 <write>
        putc(fd, c);
    34e6:	83 c4 10             	add    $0x10,%esp
      state = 0;
    34e9:	31 c9                	xor    %ecx,%ecx
    34eb:	eb 95                	jmp    3482 <printf+0x52>
    34ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    34f0:	83 ec 0c             	sub    $0xc,%esp
    34f3:	b9 10 00 00 00       	mov    $0x10,%ecx
    34f8:	6a 00                	push   $0x0
    34fa:	8b 45 d0             	mov    -0x30(%ebp),%eax
    34fd:	8b 10                	mov    (%eax),%edx
    34ff:	89 f0                	mov    %esi,%eax
    3501:	e8 7a fe ff ff       	call   3380 <printint>
        ap++;
    3506:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    350a:	83 c4 10             	add    $0x10,%esp
      state = 0;
    350d:	31 c9                	xor    %ecx,%ecx
    350f:	e9 6e ff ff ff       	jmp    3482 <printf+0x52>
    3514:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    3518:	8b 45 d0             	mov    -0x30(%ebp),%eax
    351b:	8b 10                	mov    (%eax),%edx
        ap++;
    351d:	83 c0 04             	add    $0x4,%eax
    3520:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    3523:	85 d2                	test   %edx,%edx
    3525:	0f 84 8d 00 00 00    	je     35b8 <printf+0x188>
        while(*s != 0){
    352b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
    352e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
    3530:	84 c0                	test   %al,%al
    3532:	0f 84 4a ff ff ff    	je     3482 <printf+0x52>
    3538:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    353b:	89 d3                	mov    %edx,%ebx
    353d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    3540:	83 ec 04             	sub    $0x4,%esp
          s++;
    3543:	83 c3 01             	add    $0x1,%ebx
    3546:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    3549:	6a 01                	push   $0x1
    354b:	57                   	push   %edi
    354c:	56                   	push   %esi
    354d:	e8 a1 fd ff ff       	call   32f3 <write>
        while(*s != 0){
    3552:	0f b6 03             	movzbl (%ebx),%eax
    3555:	83 c4 10             	add    $0x10,%esp
    3558:	84 c0                	test   %al,%al
    355a:	75 e4                	jne    3540 <printf+0x110>
      state = 0;
    355c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
    355f:	31 c9                	xor    %ecx,%ecx
    3561:	e9 1c ff ff ff       	jmp    3482 <printf+0x52>
    3566:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    356d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    3570:	83 ec 0c             	sub    $0xc,%esp
    3573:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3578:	6a 01                	push   $0x1
    357a:	e9 7b ff ff ff       	jmp    34fa <printf+0xca>
    357f:	90                   	nop
        putc(fd, *ap);
    3580:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
    3583:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    3586:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    3588:	6a 01                	push   $0x1
    358a:	57                   	push   %edi
    358b:	56                   	push   %esi
        putc(fd, *ap);
    358c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    358f:	e8 5f fd ff ff       	call   32f3 <write>
        ap++;
    3594:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    3598:	83 c4 10             	add    $0x10,%esp
      state = 0;
    359b:	31 c9                	xor    %ecx,%ecx
    359d:	e9 e0 fe ff ff       	jmp    3482 <printf+0x52>
    35a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
    35a8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    35ab:	83 ec 04             	sub    $0x4,%esp
    35ae:	e9 2a ff ff ff       	jmp    34dd <printf+0xad>
    35b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    35b7:	90                   	nop
          s = "(null)";
    35b8:	ba 85 37 00 00       	mov    $0x3785,%edx
        while(*s != 0){
    35bd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    35c0:	b8 28 00 00 00       	mov    $0x28,%eax
    35c5:	89 d3                	mov    %edx,%ebx
    35c7:	e9 74 ff ff ff       	jmp    3540 <printf+0x110>
    35cc:	66 90                	xchg   %ax,%ax
    35ce:	66 90                	xchg   %ax,%ax

000035d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    35d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    35d1:	a1 9c 3a 00 00       	mov    0x3a9c,%eax
{
    35d6:	89 e5                	mov    %esp,%ebp
    35d8:	57                   	push   %edi
    35d9:	56                   	push   %esi
    35da:	53                   	push   %ebx
    35db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    35de:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    35e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    35e8:	89 c2                	mov    %eax,%edx
    35ea:	8b 00                	mov    (%eax),%eax
    35ec:	39 ca                	cmp    %ecx,%edx
    35ee:	73 30                	jae    3620 <free+0x50>
    35f0:	39 c1                	cmp    %eax,%ecx
    35f2:	72 04                	jb     35f8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    35f4:	39 c2                	cmp    %eax,%edx
    35f6:	72 f0                	jb     35e8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
    35f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    35fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    35fe:	39 f8                	cmp    %edi,%eax
    3600:	74 30                	je     3632 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    3602:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    3605:	8b 42 04             	mov    0x4(%edx),%eax
    3608:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    360b:	39 f1                	cmp    %esi,%ecx
    360d:	74 3a                	je     3649 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    360f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    3611:	5b                   	pop    %ebx
  freep = p;
    3612:	89 15 9c 3a 00 00    	mov    %edx,0x3a9c
}
    3618:	5e                   	pop    %esi
    3619:	5f                   	pop    %edi
    361a:	5d                   	pop    %ebp
    361b:	c3                   	ret    
    361c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3620:	39 c2                	cmp    %eax,%edx
    3622:	72 c4                	jb     35e8 <free+0x18>
    3624:	39 c1                	cmp    %eax,%ecx
    3626:	73 c0                	jae    35e8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
    3628:	8b 73 fc             	mov    -0x4(%ebx),%esi
    362b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    362e:	39 f8                	cmp    %edi,%eax
    3630:	75 d0                	jne    3602 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
    3632:	03 70 04             	add    0x4(%eax),%esi
    3635:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    3638:	8b 02                	mov    (%edx),%eax
    363a:	8b 00                	mov    (%eax),%eax
    363c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    363f:	8b 42 04             	mov    0x4(%edx),%eax
    3642:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    3645:	39 f1                	cmp    %esi,%ecx
    3647:	75 c6                	jne    360f <free+0x3f>
    p->s.size += bp->s.size;
    3649:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    364c:	89 15 9c 3a 00 00    	mov    %edx,0x3a9c
    p->s.size += bp->s.size;
    3652:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    3655:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    3658:	89 0a                	mov    %ecx,(%edx)
}
    365a:	5b                   	pop    %ebx
    365b:	5e                   	pop    %esi
    365c:	5f                   	pop    %edi
    365d:	5d                   	pop    %ebp
    365e:	c3                   	ret    
    365f:	90                   	nop

00003660 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    3660:	55                   	push   %ebp
    3661:	89 e5                	mov    %esp,%ebp
    3663:	57                   	push   %edi
    3664:	56                   	push   %esi
    3665:	53                   	push   %ebx
    3666:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3669:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    366c:	8b 3d 9c 3a 00 00    	mov    0x3a9c,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3672:	8d 70 07             	lea    0x7(%eax),%esi
    3675:	c1 ee 03             	shr    $0x3,%esi
    3678:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    367b:	85 ff                	test   %edi,%edi
    367d:	0f 84 9d 00 00 00    	je     3720 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3683:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
    3685:	8b 4a 04             	mov    0x4(%edx),%ecx
    3688:	39 f1                	cmp    %esi,%ecx
    368a:	73 6a                	jae    36f6 <malloc+0x96>
    368c:	bb 00 10 00 00       	mov    $0x1000,%ebx
    3691:	39 de                	cmp    %ebx,%esi
    3693:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    3696:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
    369d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    36a0:	eb 17                	jmp    36b9 <malloc+0x59>
    36a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    36a8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    36aa:	8b 48 04             	mov    0x4(%eax),%ecx
    36ad:	39 f1                	cmp    %esi,%ecx
    36af:	73 4f                	jae    3700 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    36b1:	8b 3d 9c 3a 00 00    	mov    0x3a9c,%edi
    36b7:	89 c2                	mov    %eax,%edx
    36b9:	39 d7                	cmp    %edx,%edi
    36bb:	75 eb                	jne    36a8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    36bd:	83 ec 0c             	sub    $0xc,%esp
    36c0:	ff 75 e4             	push   -0x1c(%ebp)
    36c3:	e8 93 fc ff ff       	call   335b <sbrk>
  if(p == (char*)-1)
    36c8:	83 c4 10             	add    $0x10,%esp
    36cb:	83 f8 ff             	cmp    $0xffffffff,%eax
    36ce:	74 1c                	je     36ec <malloc+0x8c>
  hp->s.size = nu;
    36d0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    36d3:	83 ec 0c             	sub    $0xc,%esp
    36d6:	83 c0 08             	add    $0x8,%eax
    36d9:	50                   	push   %eax
    36da:	e8 f1 fe ff ff       	call   35d0 <free>
  return freep;
    36df:	8b 15 9c 3a 00 00    	mov    0x3a9c,%edx
      if((p = morecore(nunits)) == 0)
    36e5:	83 c4 10             	add    $0x10,%esp
    36e8:	85 d2                	test   %edx,%edx
    36ea:	75 bc                	jne    36a8 <malloc+0x48>
        return 0;
  }
}
    36ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    36ef:	31 c0                	xor    %eax,%eax
}
    36f1:	5b                   	pop    %ebx
    36f2:	5e                   	pop    %esi
    36f3:	5f                   	pop    %edi
    36f4:	5d                   	pop    %ebp
    36f5:	c3                   	ret    
    if(p->s.size >= nunits){
    36f6:	89 d0                	mov    %edx,%eax
    36f8:	89 fa                	mov    %edi,%edx
    36fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    3700:	39 ce                	cmp    %ecx,%esi
    3702:	74 4c                	je     3750 <malloc+0xf0>
        p->s.size -= nunits;
    3704:	29 f1                	sub    %esi,%ecx
    3706:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    3709:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    370c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    370f:	89 15 9c 3a 00 00    	mov    %edx,0x3a9c
}
    3715:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    3718:	83 c0 08             	add    $0x8,%eax
}
    371b:	5b                   	pop    %ebx
    371c:	5e                   	pop    %esi
    371d:	5f                   	pop    %edi
    371e:	5d                   	pop    %ebp
    371f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
    3720:	c7 05 9c 3a 00 00 a0 	movl   $0x3aa0,0x3a9c
    3727:	3a 00 00 
    base.s.size = 0;
    372a:	bf a0 3a 00 00       	mov    $0x3aa0,%edi
    base.s.ptr = freep = prevp = &base;
    372f:	c7 05 a0 3a 00 00 a0 	movl   $0x3aa0,0x3aa0
    3736:	3a 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3739:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
    373b:	c7 05 a4 3a 00 00 00 	movl   $0x0,0x3aa4
    3742:	00 00 00 
    if(p->s.size >= nunits){
    3745:	e9 42 ff ff ff       	jmp    368c <malloc+0x2c>
    374a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    3750:	8b 08                	mov    (%eax),%ecx
    3752:	89 0a                	mov    %ecx,(%edx)
    3754:	eb b9                	jmp    370f <malloc+0xaf>
