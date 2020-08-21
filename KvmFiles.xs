#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include <fcntl.h>
#include <kvm.h>
#include <sys/types.h>
#include <sys/sysctl.h>


MODULE = OpenBSD::KvmFiles		PACKAGE = OpenBSD::KvmFiles		
PROTOTYPES: ENABLE

int
_fd_per_process(int pid)
	INIT:
		struct kinfo_file* ret;
		int c;
		kvm_t * kd;
	CODE:
		kd = kvm_open(NULL, NULL, NULL, KVM_NO_FILES, NULL);
		ret = kvm_getfiles(kd, KERN_FILE_BYPID , pid, 12, &c);
		kvm_close(kd);
		RETVAL = c;
	OUTPUT:
		RETVAL
