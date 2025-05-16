
_stressfs:     file format elf32-i386


Disassembly of section .text:

00003000 <main>:
#include "fs.h"
#include "fcntl.h"

int
main(int argc, char *argv[])
{
    3000:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    3004:	83 e4 f0             	and    $0xfffffff0,%esp
  int fd, i;
  char path[] = "stressfs0";
    3007:	b8 30 00 00 00       	mov    $0x30,%eax
{
    300c:	ff 71 fc             	push   -0x4(%ecx)
    300f:	55                   	push   %ebp
    3010:	89 e5                	mov    %esp,%ebp
    3012:	57                   	push   %edi
    3013:	56                   	push   %esi
  char data[512];

  printf(1, "stressfs starting\n");
  memset(data, 'a', sizeof(data));
    3014:	8d b5 e8 fd ff ff    	lea    -0x218(%ebp),%esi
{
    301a:	53                   	push   %ebx

  for(i = 0; i < 4; i++)
    301b:	31 db                	xor    %ebx,%ebx
{
    301d:	51                   	push   %ecx
    301e:	81 ec 20 02 00 00    	sub    $0x220,%esp
  char path[] = "stressfs0";
    3024:	66 89 85 e6 fd ff ff 	mov    %ax,-0x21a(%ebp)
  printf(1, "stressfs starting\n");
    302b:	68 18 38 00 00       	push   $0x3818
    3030:	6a 01                	push   $0x1
  char path[] = "stressfs0";
    3032:	c7 85 de fd ff ff 73 	movl   $0x65727473,-0x222(%ebp)
    3039:	74 72 65 
    303c:	c7 85 e2 fd ff ff 73 	movl   $0x73667373,-0x21e(%ebp)
    3043:	73 66 73 
  printf(1, "stressfs starting\n");
    3046:	e8 a5 04 00 00       	call   34f0 <printf>
  memset(data, 'a', sizeof(data));
    304b:	83 c4 0c             	add    $0xc,%esp
    304e:	68 00 02 00 00       	push   $0x200
    3053:	6a 61                	push   $0x61
    3055:	56                   	push   %esi
    3056:	e8 a5 01 00 00       	call   3200 <memset>
    305b:	83 c4 10             	add    $0x10,%esp
    if(fork() > 0)
    305e:	e8 28 03 00 00       	call   338b <fork>
    3063:	85 c0                	test   %eax,%eax
    3065:	0f 8f bf 00 00 00    	jg     312a <main+0x12a>
  for(i = 0; i < 4; i++)
    306b:	83 c3 01             	add    $0x1,%ebx
    306e:	83 fb 04             	cmp    $0x4,%ebx
    3071:	75 eb                	jne    305e <main+0x5e>
    3073:	bf 04 00 00 00       	mov    $0x4,%edi
      break;

  printf(1, "write %d\n", i);
    3078:	83 ec 04             	sub    $0x4,%esp
    307b:	53                   	push   %ebx

  path[8] += i;
  fd = open(path, O_CREATE | O_RDWR);
    307c:	bb 14 00 00 00       	mov    $0x14,%ebx
  printf(1, "write %d\n", i);
    3081:	68 2b 38 00 00       	push   $0x382b
    3086:	6a 01                	push   $0x1
    3088:	e8 63 04 00 00       	call   34f0 <printf>
  path[8] += i;
    308d:	89 f8                	mov    %edi,%eax
  fd = open(path, O_CREATE | O_RDWR);
    308f:	5f                   	pop    %edi
  path[8] += i;
    3090:	00 85 e6 fd ff ff    	add    %al,-0x21a(%ebp)
  fd = open(path, O_CREATE | O_RDWR);
    3096:	58                   	pop    %eax
    3097:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
    309d:	68 02 02 00 00       	push   $0x202
    30a2:	50                   	push   %eax
    30a3:	e8 2b 03 00 00       	call   33d3 <open>
    30a8:	83 c4 10             	add    $0x10,%esp
    30ab:	89 c7                	mov    %eax,%edi
  for(i = 0; i < 20; i++)
    30ad:	8d 76 00             	lea    0x0(%esi),%esi
//    printf(fd, "%d\n", i);
    write(fd, data, sizeof(data));
    30b0:	83 ec 04             	sub    $0x4,%esp
    30b3:	68 00 02 00 00       	push   $0x200
    30b8:	56                   	push   %esi
    30b9:	57                   	push   %edi
    30ba:	e8 f4 02 00 00       	call   33b3 <write>
  for(i = 0; i < 20; i++)
    30bf:	83 c4 10             	add    $0x10,%esp
    30c2:	83 eb 01             	sub    $0x1,%ebx
    30c5:	75 e9                	jne    30b0 <main+0xb0>
  close(fd);
    30c7:	83 ec 0c             	sub    $0xc,%esp
    30ca:	57                   	push   %edi
    30cb:	e8 eb 02 00 00       	call   33bb <close>

  printf(1, "read\n");
    30d0:	58                   	pop    %eax
    30d1:	5a                   	pop    %edx
    30d2:	68 35 38 00 00       	push   $0x3835
    30d7:	6a 01                	push   $0x1
    30d9:	e8 12 04 00 00       	call   34f0 <printf>

  fd = open(path, O_RDONLY);
    30de:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
    30e4:	59                   	pop    %ecx
    30e5:	5b                   	pop    %ebx
    30e6:	6a 00                	push   $0x0
    30e8:	bb 14 00 00 00       	mov    $0x14,%ebx
    30ed:	50                   	push   %eax
    30ee:	e8 e0 02 00 00       	call   33d3 <open>
    30f3:	83 c4 10             	add    $0x10,%esp
    30f6:	89 c7                	mov    %eax,%edi
  for (i = 0; i < 20; i++)
    30f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    30ff:	90                   	nop
    read(fd, data, sizeof(data));
    3100:	83 ec 04             	sub    $0x4,%esp
    3103:	68 00 02 00 00       	push   $0x200
    3108:	56                   	push   %esi
    3109:	57                   	push   %edi
    310a:	e8 9c 02 00 00       	call   33ab <read>
  for (i = 0; i < 20; i++)
    310f:	83 c4 10             	add    $0x10,%esp
    3112:	83 eb 01             	sub    $0x1,%ebx
    3115:	75 e9                	jne    3100 <main+0x100>
  close(fd);
    3117:	83 ec 0c             	sub    $0xc,%esp
    311a:	57                   	push   %edi
    311b:	e8 9b 02 00 00       	call   33bb <close>

  wait();
    3120:	e8 76 02 00 00       	call   339b <wait>

  exit();
    3125:	e8 69 02 00 00       	call   3393 <exit>
  path[8] += i;
    312a:	89 df                	mov    %ebx,%edi
    312c:	e9 47 ff ff ff       	jmp    3078 <main+0x78>
    3131:	66 90                	xchg   %ax,%ax
    3133:	66 90                	xchg   %ax,%ax
    3135:	66 90                	xchg   %ax,%ax
    3137:	66 90                	xchg   %ax,%ax
    3139:	66 90                	xchg   %ax,%ax
    313b:	66 90                	xchg   %ax,%ax
    313d:	66 90                	xchg   %ax,%ax
    313f:	90                   	nop

00003140 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3140:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3141:	31 c0                	xor    %eax,%eax
{
    3143:	89 e5                	mov    %esp,%ebp
    3145:	53                   	push   %ebx
    3146:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3149:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    314c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
    3150:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    3154:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    3157:	83 c0 01             	add    $0x1,%eax
    315a:	84 d2                	test   %dl,%dl
    315c:	75 f2                	jne    3150 <strcpy+0x10>
    ;
  return os;
}
    315e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3161:	89 c8                	mov    %ecx,%eax
    3163:	c9                   	leave  
    3164:	c3                   	ret    
    3165:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    316c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003170 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3170:	55                   	push   %ebp
    3171:	89 e5                	mov    %esp,%ebp
    3173:	53                   	push   %ebx
    3174:	8b 55 08             	mov    0x8(%ebp),%edx
    3177:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    317a:	0f b6 02             	movzbl (%edx),%eax
    317d:	84 c0                	test   %al,%al
    317f:	75 17                	jne    3198 <strcmp+0x28>
    3181:	eb 3a                	jmp    31bd <strcmp+0x4d>
    3183:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3187:	90                   	nop
    3188:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
    318c:	83 c2 01             	add    $0x1,%edx
    318f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    3192:	84 c0                	test   %al,%al
    3194:	74 1a                	je     31b0 <strcmp+0x40>
    p++, q++;
    3196:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
    3198:	0f b6 19             	movzbl (%ecx),%ebx
    319b:	38 c3                	cmp    %al,%bl
    319d:	74 e9                	je     3188 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
    319f:	29 d8                	sub    %ebx,%eax
}
    31a1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    31a4:	c9                   	leave  
    31a5:	c3                   	ret    
    31a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    31ad:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
    31b0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    31b4:	31 c0                	xor    %eax,%eax
    31b6:	29 d8                	sub    %ebx,%eax
}
    31b8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    31bb:	c9                   	leave  
    31bc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
    31bd:	0f b6 19             	movzbl (%ecx),%ebx
    31c0:	31 c0                	xor    %eax,%eax
    31c2:	eb db                	jmp    319f <strcmp+0x2f>
    31c4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    31cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    31cf:	90                   	nop

000031d0 <strlen>:

uint
strlen(const char *s)
{
    31d0:	55                   	push   %ebp
    31d1:	89 e5                	mov    %esp,%ebp
    31d3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    31d6:	80 3a 00             	cmpb   $0x0,(%edx)
    31d9:	74 15                	je     31f0 <strlen+0x20>
    31db:	31 c0                	xor    %eax,%eax
    31dd:	8d 76 00             	lea    0x0(%esi),%esi
    31e0:	83 c0 01             	add    $0x1,%eax
    31e3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    31e7:	89 c1                	mov    %eax,%ecx
    31e9:	75 f5                	jne    31e0 <strlen+0x10>
    ;
  return n;
}
    31eb:	89 c8                	mov    %ecx,%eax
    31ed:	5d                   	pop    %ebp
    31ee:	c3                   	ret    
    31ef:	90                   	nop
  for(n = 0; s[n]; n++)
    31f0:	31 c9                	xor    %ecx,%ecx
}
    31f2:	5d                   	pop    %ebp
    31f3:	89 c8                	mov    %ecx,%eax
    31f5:	c3                   	ret    
    31f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    31fd:	8d 76 00             	lea    0x0(%esi),%esi

00003200 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3200:	55                   	push   %ebp
    3201:	89 e5                	mov    %esp,%ebp
    3203:	57                   	push   %edi
    3204:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3207:	8b 4d 10             	mov    0x10(%ebp),%ecx
    320a:	8b 45 0c             	mov    0xc(%ebp),%eax
    320d:	89 d7                	mov    %edx,%edi
    320f:	fc                   	cld    
    3210:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3212:	8b 7d fc             	mov    -0x4(%ebp),%edi
    3215:	89 d0                	mov    %edx,%eax
    3217:	c9                   	leave  
    3218:	c3                   	ret    
    3219:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003220 <strchr>:

char*
strchr(const char *s, char c)
{
    3220:	55                   	push   %ebp
    3221:	89 e5                	mov    %esp,%ebp
    3223:	8b 45 08             	mov    0x8(%ebp),%eax
    3226:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    322a:	0f b6 10             	movzbl (%eax),%edx
    322d:	84 d2                	test   %dl,%dl
    322f:	75 12                	jne    3243 <strchr+0x23>
    3231:	eb 1d                	jmp    3250 <strchr+0x30>
    3233:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3237:	90                   	nop
    3238:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    323c:	83 c0 01             	add    $0x1,%eax
    323f:	84 d2                	test   %dl,%dl
    3241:	74 0d                	je     3250 <strchr+0x30>
    if(*s == c)
    3243:	38 d1                	cmp    %dl,%cl
    3245:	75 f1                	jne    3238 <strchr+0x18>
      return (char*)s;
  return 0;
}
    3247:	5d                   	pop    %ebp
    3248:	c3                   	ret    
    3249:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    3250:	31 c0                	xor    %eax,%eax
}
    3252:	5d                   	pop    %ebp
    3253:	c3                   	ret    
    3254:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    325b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    325f:	90                   	nop

00003260 <gets>:

char*
gets(char *buf, int max)
{
    3260:	55                   	push   %ebp
    3261:	89 e5                	mov    %esp,%ebp
    3263:	57                   	push   %edi
    3264:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    3265:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
    3268:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
    3269:	31 db                	xor    %ebx,%ebx
{
    326b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
    326e:	eb 27                	jmp    3297 <gets+0x37>
    cc = read(0, &c, 1);
    3270:	83 ec 04             	sub    $0x4,%esp
    3273:	6a 01                	push   $0x1
    3275:	57                   	push   %edi
    3276:	6a 00                	push   $0x0
    3278:	e8 2e 01 00 00       	call   33ab <read>
    if(cc < 1)
    327d:	83 c4 10             	add    $0x10,%esp
    3280:	85 c0                	test   %eax,%eax
    3282:	7e 1d                	jle    32a1 <gets+0x41>
      break;
    buf[i++] = c;
    3284:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3288:	8b 55 08             	mov    0x8(%ebp),%edx
    328b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    328f:	3c 0a                	cmp    $0xa,%al
    3291:	74 1d                	je     32b0 <gets+0x50>
    3293:	3c 0d                	cmp    $0xd,%al
    3295:	74 19                	je     32b0 <gets+0x50>
  for(i=0; i+1 < max; ){
    3297:	89 de                	mov    %ebx,%esi
    3299:	83 c3 01             	add    $0x1,%ebx
    329c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    329f:	7c cf                	jl     3270 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    32a1:	8b 45 08             	mov    0x8(%ebp),%eax
    32a4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    32a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    32ab:	5b                   	pop    %ebx
    32ac:	5e                   	pop    %esi
    32ad:	5f                   	pop    %edi
    32ae:	5d                   	pop    %ebp
    32af:	c3                   	ret    
  buf[i] = '\0';
    32b0:	8b 45 08             	mov    0x8(%ebp),%eax
    32b3:	89 de                	mov    %ebx,%esi
    32b5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
    32b9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    32bc:	5b                   	pop    %ebx
    32bd:	5e                   	pop    %esi
    32be:	5f                   	pop    %edi
    32bf:	5d                   	pop    %ebp
    32c0:	c3                   	ret    
    32c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    32c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    32cf:	90                   	nop

000032d0 <stat>:

int
stat(const char *n, struct stat *st)
{
    32d0:	55                   	push   %ebp
    32d1:	89 e5                	mov    %esp,%ebp
    32d3:	56                   	push   %esi
    32d4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    32d5:	83 ec 08             	sub    $0x8,%esp
    32d8:	6a 00                	push   $0x0
    32da:	ff 75 08             	push   0x8(%ebp)
    32dd:	e8 f1 00 00 00       	call   33d3 <open>
  if(fd < 0)
    32e2:	83 c4 10             	add    $0x10,%esp
    32e5:	85 c0                	test   %eax,%eax
    32e7:	78 27                	js     3310 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    32e9:	83 ec 08             	sub    $0x8,%esp
    32ec:	ff 75 0c             	push   0xc(%ebp)
    32ef:	89 c3                	mov    %eax,%ebx
    32f1:	50                   	push   %eax
    32f2:	e8 f4 00 00 00       	call   33eb <fstat>
  close(fd);
    32f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    32fa:	89 c6                	mov    %eax,%esi
  close(fd);
    32fc:	e8 ba 00 00 00       	call   33bb <close>
  return r;
    3301:	83 c4 10             	add    $0x10,%esp
}
    3304:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3307:	89 f0                	mov    %esi,%eax
    3309:	5b                   	pop    %ebx
    330a:	5e                   	pop    %esi
    330b:	5d                   	pop    %ebp
    330c:	c3                   	ret    
    330d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    3310:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3315:	eb ed                	jmp    3304 <stat+0x34>
    3317:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    331e:	66 90                	xchg   %ax,%ax

00003320 <atoi>:

int
atoi(const char *s)
{
    3320:	55                   	push   %ebp
    3321:	89 e5                	mov    %esp,%ebp
    3323:	53                   	push   %ebx
    3324:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3327:	0f be 02             	movsbl (%edx),%eax
    332a:	8d 48 d0             	lea    -0x30(%eax),%ecx
    332d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    3330:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    3335:	77 1e                	ja     3355 <atoi+0x35>
    3337:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    333e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3340:	83 c2 01             	add    $0x1,%edx
    3343:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    3346:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    334a:	0f be 02             	movsbl (%edx),%eax
    334d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    3350:	80 fb 09             	cmp    $0x9,%bl
    3353:	76 eb                	jbe    3340 <atoi+0x20>
  return n;
}
    3355:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3358:	89 c8                	mov    %ecx,%eax
    335a:	c9                   	leave  
    335b:	c3                   	ret    
    335c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003360 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3360:	55                   	push   %ebp
    3361:	89 e5                	mov    %esp,%ebp
    3363:	57                   	push   %edi
    3364:	8b 45 10             	mov    0x10(%ebp),%eax
    3367:	8b 55 08             	mov    0x8(%ebp),%edx
    336a:	56                   	push   %esi
    336b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    336e:	85 c0                	test   %eax,%eax
    3370:	7e 13                	jle    3385 <memmove+0x25>
    3372:	01 d0                	add    %edx,%eax
  dst = vdst;
    3374:	89 d7                	mov    %edx,%edi
    3376:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    337d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
    3380:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    3381:	39 f8                	cmp    %edi,%eax
    3383:	75 fb                	jne    3380 <memmove+0x20>
  return vdst;
}
    3385:	5e                   	pop    %esi
    3386:	89 d0                	mov    %edx,%eax
    3388:	5f                   	pop    %edi
    3389:	5d                   	pop    %ebp
    338a:	c3                   	ret    

0000338b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    338b:	b8 01 00 00 00       	mov    $0x1,%eax
    3390:	cd 40                	int    $0x40
    3392:	c3                   	ret    

00003393 <exit>:
SYSCALL(exit)
    3393:	b8 02 00 00 00       	mov    $0x2,%eax
    3398:	cd 40                	int    $0x40
    339a:	c3                   	ret    

0000339b <wait>:
SYSCALL(wait)
    339b:	b8 03 00 00 00       	mov    $0x3,%eax
    33a0:	cd 40                	int    $0x40
    33a2:	c3                   	ret    

000033a3 <pipe>:
SYSCALL(pipe)
    33a3:	b8 04 00 00 00       	mov    $0x4,%eax
    33a8:	cd 40                	int    $0x40
    33aa:	c3                   	ret    

000033ab <read>:
SYSCALL(read)
    33ab:	b8 05 00 00 00       	mov    $0x5,%eax
    33b0:	cd 40                	int    $0x40
    33b2:	c3                   	ret    

000033b3 <write>:
SYSCALL(write)
    33b3:	b8 10 00 00 00       	mov    $0x10,%eax
    33b8:	cd 40                	int    $0x40
    33ba:	c3                   	ret    

000033bb <close>:
SYSCALL(close)
    33bb:	b8 15 00 00 00       	mov    $0x15,%eax
    33c0:	cd 40                	int    $0x40
    33c2:	c3                   	ret    

000033c3 <kill>:
SYSCALL(kill)
    33c3:	b8 06 00 00 00       	mov    $0x6,%eax
    33c8:	cd 40                	int    $0x40
    33ca:	c3                   	ret    

000033cb <exec>:
SYSCALL(exec)
    33cb:	b8 07 00 00 00       	mov    $0x7,%eax
    33d0:	cd 40                	int    $0x40
    33d2:	c3                   	ret    

000033d3 <open>:
SYSCALL(open)
    33d3:	b8 0f 00 00 00       	mov    $0xf,%eax
    33d8:	cd 40                	int    $0x40
    33da:	c3                   	ret    

000033db <mknod>:
SYSCALL(mknod)
    33db:	b8 11 00 00 00       	mov    $0x11,%eax
    33e0:	cd 40                	int    $0x40
    33e2:	c3                   	ret    

000033e3 <unlink>:
SYSCALL(unlink)
    33e3:	b8 12 00 00 00       	mov    $0x12,%eax
    33e8:	cd 40                	int    $0x40
    33ea:	c3                   	ret    

000033eb <fstat>:
SYSCALL(fstat)
    33eb:	b8 08 00 00 00       	mov    $0x8,%eax
    33f0:	cd 40                	int    $0x40
    33f2:	c3                   	ret    

000033f3 <link>:
SYSCALL(link)
    33f3:	b8 13 00 00 00       	mov    $0x13,%eax
    33f8:	cd 40                	int    $0x40
    33fa:	c3                   	ret    

000033fb <mkdir>:
SYSCALL(mkdir)
    33fb:	b8 14 00 00 00       	mov    $0x14,%eax
    3400:	cd 40                	int    $0x40
    3402:	c3                   	ret    

00003403 <chdir>:
SYSCALL(chdir)
    3403:	b8 09 00 00 00       	mov    $0x9,%eax
    3408:	cd 40                	int    $0x40
    340a:	c3                   	ret    

0000340b <dup>:
SYSCALL(dup)
    340b:	b8 0a 00 00 00       	mov    $0xa,%eax
    3410:	cd 40                	int    $0x40
    3412:	c3                   	ret    

00003413 <getpid>:
SYSCALL(getpid)
    3413:	b8 0b 00 00 00       	mov    $0xb,%eax
    3418:	cd 40                	int    $0x40
    341a:	c3                   	ret    

0000341b <sbrk>:
SYSCALL(sbrk)
    341b:	b8 0c 00 00 00       	mov    $0xc,%eax
    3420:	cd 40                	int    $0x40
    3422:	c3                   	ret    

00003423 <sleep>:
SYSCALL(sleep)
    3423:	b8 0d 00 00 00       	mov    $0xd,%eax
    3428:	cd 40                	int    $0x40
    342a:	c3                   	ret    

0000342b <uptime>:
SYSCALL(uptime)
    342b:	b8 0e 00 00 00       	mov    $0xe,%eax
    3430:	cd 40                	int    $0x40
    3432:	c3                   	ret    
    3433:	66 90                	xchg   %ax,%ax
    3435:	66 90                	xchg   %ax,%ax
    3437:	66 90                	xchg   %ax,%ax
    3439:	66 90                	xchg   %ax,%ax
    343b:	66 90                	xchg   %ax,%ax
    343d:	66 90                	xchg   %ax,%ax
    343f:	90                   	nop

00003440 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3440:	55                   	push   %ebp
    3441:	89 e5                	mov    %esp,%ebp
    3443:	57                   	push   %edi
    3444:	56                   	push   %esi
    3445:	53                   	push   %ebx
    3446:	83 ec 3c             	sub    $0x3c,%esp
    3449:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    344c:	89 d1                	mov    %edx,%ecx
{
    344e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    3451:	85 d2                	test   %edx,%edx
    3453:	0f 89 7f 00 00 00    	jns    34d8 <printint+0x98>
    3459:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    345d:	74 79                	je     34d8 <printint+0x98>
    neg = 1;
    345f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    3466:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    3468:	31 db                	xor    %ebx,%ebx
    346a:	8d 75 d7             	lea    -0x29(%ebp),%esi
    346d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    3470:	89 c8                	mov    %ecx,%eax
    3472:	31 d2                	xor    %edx,%edx
    3474:	89 cf                	mov    %ecx,%edi
    3476:	f7 75 c4             	divl   -0x3c(%ebp)
    3479:	0f b6 92 9c 38 00 00 	movzbl 0x389c(%edx),%edx
    3480:	89 45 c0             	mov    %eax,-0x40(%ebp)
    3483:	89 d8                	mov    %ebx,%eax
    3485:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    3488:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    348b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    348e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    3491:	76 dd                	jbe    3470 <printint+0x30>
  if(neg)
    3493:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    3496:	85 c9                	test   %ecx,%ecx
    3498:	74 0c                	je     34a6 <printint+0x66>
    buf[i++] = '-';
    349a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    349f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    34a1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    34a6:	8b 7d b8             	mov    -0x48(%ebp),%edi
    34a9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    34ad:	eb 07                	jmp    34b6 <printint+0x76>
    34af:	90                   	nop
    putc(fd, buf[i]);
    34b0:	0f b6 13             	movzbl (%ebx),%edx
    34b3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    34b6:	83 ec 04             	sub    $0x4,%esp
    34b9:	88 55 d7             	mov    %dl,-0x29(%ebp)
    34bc:	6a 01                	push   $0x1
    34be:	56                   	push   %esi
    34bf:	57                   	push   %edi
    34c0:	e8 ee fe ff ff       	call   33b3 <write>
  while(--i >= 0)
    34c5:	83 c4 10             	add    $0x10,%esp
    34c8:	39 de                	cmp    %ebx,%esi
    34ca:	75 e4                	jne    34b0 <printint+0x70>
}
    34cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    34cf:	5b                   	pop    %ebx
    34d0:	5e                   	pop    %esi
    34d1:	5f                   	pop    %edi
    34d2:	5d                   	pop    %ebp
    34d3:	c3                   	ret    
    34d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    34d8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    34df:	eb 87                	jmp    3468 <printint+0x28>
    34e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    34e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    34ef:	90                   	nop

000034f0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    34f0:	55                   	push   %ebp
    34f1:	89 e5                	mov    %esp,%ebp
    34f3:	57                   	push   %edi
    34f4:	56                   	push   %esi
    34f5:	53                   	push   %ebx
    34f6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    34f9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
    34fc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
    34ff:	0f b6 13             	movzbl (%ebx),%edx
    3502:	84 d2                	test   %dl,%dl
    3504:	74 6a                	je     3570 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
    3506:	8d 45 10             	lea    0x10(%ebp),%eax
    3509:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    350c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    350f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
    3511:	89 45 d0             	mov    %eax,-0x30(%ebp)
    3514:	eb 36                	jmp    354c <printf+0x5c>
    3516:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    351d:	8d 76 00             	lea    0x0(%esi),%esi
    3520:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    3523:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
    3528:	83 f8 25             	cmp    $0x25,%eax
    352b:	74 15                	je     3542 <printf+0x52>
  write(fd, &c, 1);
    352d:	83 ec 04             	sub    $0x4,%esp
    3530:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3533:	6a 01                	push   $0x1
    3535:	57                   	push   %edi
    3536:	56                   	push   %esi
    3537:	e8 77 fe ff ff       	call   33b3 <write>
    353c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
    353f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    3542:	0f b6 13             	movzbl (%ebx),%edx
    3545:	83 c3 01             	add    $0x1,%ebx
    3548:	84 d2                	test   %dl,%dl
    354a:	74 24                	je     3570 <printf+0x80>
    c = fmt[i] & 0xff;
    354c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
    354f:	85 c9                	test   %ecx,%ecx
    3551:	74 cd                	je     3520 <printf+0x30>
      }
    } else if(state == '%'){
    3553:	83 f9 25             	cmp    $0x25,%ecx
    3556:	75 ea                	jne    3542 <printf+0x52>
      if(c == 'd'){
    3558:	83 f8 25             	cmp    $0x25,%eax
    355b:	0f 84 07 01 00 00    	je     3668 <printf+0x178>
    3561:	83 e8 63             	sub    $0x63,%eax
    3564:	83 f8 15             	cmp    $0x15,%eax
    3567:	77 17                	ja     3580 <printf+0x90>
    3569:	ff 24 85 44 38 00 00 	jmp    *0x3844(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    3570:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3573:	5b                   	pop    %ebx
    3574:	5e                   	pop    %esi
    3575:	5f                   	pop    %edi
    3576:	5d                   	pop    %ebp
    3577:	c3                   	ret    
    3578:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    357f:	90                   	nop
  write(fd, &c, 1);
    3580:	83 ec 04             	sub    $0x4,%esp
    3583:	88 55 d4             	mov    %dl,-0x2c(%ebp)
    3586:	6a 01                	push   $0x1
    3588:	57                   	push   %edi
    3589:	56                   	push   %esi
    358a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    358e:	e8 20 fe ff ff       	call   33b3 <write>
        putc(fd, c);
    3593:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
    3597:	83 c4 0c             	add    $0xc,%esp
    359a:	88 55 e7             	mov    %dl,-0x19(%ebp)
    359d:	6a 01                	push   $0x1
    359f:	57                   	push   %edi
    35a0:	56                   	push   %esi
    35a1:	e8 0d fe ff ff       	call   33b3 <write>
        putc(fd, c);
    35a6:	83 c4 10             	add    $0x10,%esp
      state = 0;
    35a9:	31 c9                	xor    %ecx,%ecx
    35ab:	eb 95                	jmp    3542 <printf+0x52>
    35ad:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    35b0:	83 ec 0c             	sub    $0xc,%esp
    35b3:	b9 10 00 00 00       	mov    $0x10,%ecx
    35b8:	6a 00                	push   $0x0
    35ba:	8b 45 d0             	mov    -0x30(%ebp),%eax
    35bd:	8b 10                	mov    (%eax),%edx
    35bf:	89 f0                	mov    %esi,%eax
    35c1:	e8 7a fe ff ff       	call   3440 <printint>
        ap++;
    35c6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    35ca:	83 c4 10             	add    $0x10,%esp
      state = 0;
    35cd:	31 c9                	xor    %ecx,%ecx
    35cf:	e9 6e ff ff ff       	jmp    3542 <printf+0x52>
    35d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    35d8:	8b 45 d0             	mov    -0x30(%ebp),%eax
    35db:	8b 10                	mov    (%eax),%edx
        ap++;
    35dd:	83 c0 04             	add    $0x4,%eax
    35e0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    35e3:	85 d2                	test   %edx,%edx
    35e5:	0f 84 8d 00 00 00    	je     3678 <printf+0x188>
        while(*s != 0){
    35eb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
    35ee:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
    35f0:	84 c0                	test   %al,%al
    35f2:	0f 84 4a ff ff ff    	je     3542 <printf+0x52>
    35f8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    35fb:	89 d3                	mov    %edx,%ebx
    35fd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    3600:	83 ec 04             	sub    $0x4,%esp
          s++;
    3603:	83 c3 01             	add    $0x1,%ebx
    3606:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    3609:	6a 01                	push   $0x1
    360b:	57                   	push   %edi
    360c:	56                   	push   %esi
    360d:	e8 a1 fd ff ff       	call   33b3 <write>
        while(*s != 0){
    3612:	0f b6 03             	movzbl (%ebx),%eax
    3615:	83 c4 10             	add    $0x10,%esp
    3618:	84 c0                	test   %al,%al
    361a:	75 e4                	jne    3600 <printf+0x110>
      state = 0;
    361c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
    361f:	31 c9                	xor    %ecx,%ecx
    3621:	e9 1c ff ff ff       	jmp    3542 <printf+0x52>
    3626:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    362d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    3630:	83 ec 0c             	sub    $0xc,%esp
    3633:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3638:	6a 01                	push   $0x1
    363a:	e9 7b ff ff ff       	jmp    35ba <printf+0xca>
    363f:	90                   	nop
        putc(fd, *ap);
    3640:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
    3643:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    3646:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    3648:	6a 01                	push   $0x1
    364a:	57                   	push   %edi
    364b:	56                   	push   %esi
        putc(fd, *ap);
    364c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    364f:	e8 5f fd ff ff       	call   33b3 <write>
        ap++;
    3654:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    3658:	83 c4 10             	add    $0x10,%esp
      state = 0;
    365b:	31 c9                	xor    %ecx,%ecx
    365d:	e9 e0 fe ff ff       	jmp    3542 <printf+0x52>
    3662:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
    3668:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    366b:	83 ec 04             	sub    $0x4,%esp
    366e:	e9 2a ff ff ff       	jmp    359d <printf+0xad>
    3673:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3677:	90                   	nop
          s = "(null)";
    3678:	ba 3b 38 00 00       	mov    $0x383b,%edx
        while(*s != 0){
    367d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    3680:	b8 28 00 00 00       	mov    $0x28,%eax
    3685:	89 d3                	mov    %edx,%ebx
    3687:	e9 74 ff ff ff       	jmp    3600 <printf+0x110>
    368c:	66 90                	xchg   %ax,%ax
    368e:	66 90                	xchg   %ax,%ax

00003690 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    3690:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3691:	a1 54 3b 00 00       	mov    0x3b54,%eax
{
    3696:	89 e5                	mov    %esp,%ebp
    3698:	57                   	push   %edi
    3699:	56                   	push   %esi
    369a:	53                   	push   %ebx
    369b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    369e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    36a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    36a8:	89 c2                	mov    %eax,%edx
    36aa:	8b 00                	mov    (%eax),%eax
    36ac:	39 ca                	cmp    %ecx,%edx
    36ae:	73 30                	jae    36e0 <free+0x50>
    36b0:	39 c1                	cmp    %eax,%ecx
    36b2:	72 04                	jb     36b8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    36b4:	39 c2                	cmp    %eax,%edx
    36b6:	72 f0                	jb     36a8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
    36b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    36bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    36be:	39 f8                	cmp    %edi,%eax
    36c0:	74 30                	je     36f2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    36c2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    36c5:	8b 42 04             	mov    0x4(%edx),%eax
    36c8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    36cb:	39 f1                	cmp    %esi,%ecx
    36cd:	74 3a                	je     3709 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    36cf:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    36d1:	5b                   	pop    %ebx
  freep = p;
    36d2:	89 15 54 3b 00 00    	mov    %edx,0x3b54
}
    36d8:	5e                   	pop    %esi
    36d9:	5f                   	pop    %edi
    36da:	5d                   	pop    %ebp
    36db:	c3                   	ret    
    36dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    36e0:	39 c2                	cmp    %eax,%edx
    36e2:	72 c4                	jb     36a8 <free+0x18>
    36e4:	39 c1                	cmp    %eax,%ecx
    36e6:	73 c0                	jae    36a8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
    36e8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    36eb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    36ee:	39 f8                	cmp    %edi,%eax
    36f0:	75 d0                	jne    36c2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
    36f2:	03 70 04             	add    0x4(%eax),%esi
    36f5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    36f8:	8b 02                	mov    (%edx),%eax
    36fa:	8b 00                	mov    (%eax),%eax
    36fc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    36ff:	8b 42 04             	mov    0x4(%edx),%eax
    3702:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    3705:	39 f1                	cmp    %esi,%ecx
    3707:	75 c6                	jne    36cf <free+0x3f>
    p->s.size += bp->s.size;
    3709:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    370c:	89 15 54 3b 00 00    	mov    %edx,0x3b54
    p->s.size += bp->s.size;
    3712:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    3715:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    3718:	89 0a                	mov    %ecx,(%edx)
}
    371a:	5b                   	pop    %ebx
    371b:	5e                   	pop    %esi
    371c:	5f                   	pop    %edi
    371d:	5d                   	pop    %ebp
    371e:	c3                   	ret    
    371f:	90                   	nop

00003720 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    3720:	55                   	push   %ebp
    3721:	89 e5                	mov    %esp,%ebp
    3723:	57                   	push   %edi
    3724:	56                   	push   %esi
    3725:	53                   	push   %ebx
    3726:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3729:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    372c:	8b 3d 54 3b 00 00    	mov    0x3b54,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3732:	8d 70 07             	lea    0x7(%eax),%esi
    3735:	c1 ee 03             	shr    $0x3,%esi
    3738:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    373b:	85 ff                	test   %edi,%edi
    373d:	0f 84 9d 00 00 00    	je     37e0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3743:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
    3745:	8b 4a 04             	mov    0x4(%edx),%ecx
    3748:	39 f1                	cmp    %esi,%ecx
    374a:	73 6a                	jae    37b6 <malloc+0x96>
    374c:	bb 00 10 00 00       	mov    $0x1000,%ebx
    3751:	39 de                	cmp    %ebx,%esi
    3753:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    3756:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
    375d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    3760:	eb 17                	jmp    3779 <malloc+0x59>
    3762:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3768:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    376a:	8b 48 04             	mov    0x4(%eax),%ecx
    376d:	39 f1                	cmp    %esi,%ecx
    376f:	73 4f                	jae    37c0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    3771:	8b 3d 54 3b 00 00    	mov    0x3b54,%edi
    3777:	89 c2                	mov    %eax,%edx
    3779:	39 d7                	cmp    %edx,%edi
    377b:	75 eb                	jne    3768 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    377d:	83 ec 0c             	sub    $0xc,%esp
    3780:	ff 75 e4             	push   -0x1c(%ebp)
    3783:	e8 93 fc ff ff       	call   341b <sbrk>
  if(p == (char*)-1)
    3788:	83 c4 10             	add    $0x10,%esp
    378b:	83 f8 ff             	cmp    $0xffffffff,%eax
    378e:	74 1c                	je     37ac <malloc+0x8c>
  hp->s.size = nu;
    3790:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    3793:	83 ec 0c             	sub    $0xc,%esp
    3796:	83 c0 08             	add    $0x8,%eax
    3799:	50                   	push   %eax
    379a:	e8 f1 fe ff ff       	call   3690 <free>
  return freep;
    379f:	8b 15 54 3b 00 00    	mov    0x3b54,%edx
      if((p = morecore(nunits)) == 0)
    37a5:	83 c4 10             	add    $0x10,%esp
    37a8:	85 d2                	test   %edx,%edx
    37aa:	75 bc                	jne    3768 <malloc+0x48>
        return 0;
  }
}
    37ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    37af:	31 c0                	xor    %eax,%eax
}
    37b1:	5b                   	pop    %ebx
    37b2:	5e                   	pop    %esi
    37b3:	5f                   	pop    %edi
    37b4:	5d                   	pop    %ebp
    37b5:	c3                   	ret    
    if(p->s.size >= nunits){
    37b6:	89 d0                	mov    %edx,%eax
    37b8:	89 fa                	mov    %edi,%edx
    37ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    37c0:	39 ce                	cmp    %ecx,%esi
    37c2:	74 4c                	je     3810 <malloc+0xf0>
        p->s.size -= nunits;
    37c4:	29 f1                	sub    %esi,%ecx
    37c6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    37c9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    37cc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    37cf:	89 15 54 3b 00 00    	mov    %edx,0x3b54
}
    37d5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    37d8:	83 c0 08             	add    $0x8,%eax
}
    37db:	5b                   	pop    %ebx
    37dc:	5e                   	pop    %esi
    37dd:	5f                   	pop    %edi
    37de:	5d                   	pop    %ebp
    37df:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
    37e0:	c7 05 54 3b 00 00 58 	movl   $0x3b58,0x3b54
    37e7:	3b 00 00 
    base.s.size = 0;
    37ea:	bf 58 3b 00 00       	mov    $0x3b58,%edi
    base.s.ptr = freep = prevp = &base;
    37ef:	c7 05 58 3b 00 00 58 	movl   $0x3b58,0x3b58
    37f6:	3b 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    37f9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
    37fb:	c7 05 5c 3b 00 00 00 	movl   $0x0,0x3b5c
    3802:	00 00 00 
    if(p->s.size >= nunits){
    3805:	e9 42 ff ff ff       	jmp    374c <malloc+0x2c>
    380a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    3810:	8b 08                	mov    (%eax),%ecx
    3812:	89 0a                	mov    %ecx,(%edx)
    3814:	eb b9                	jmp    37cf <malloc+0xaf>
