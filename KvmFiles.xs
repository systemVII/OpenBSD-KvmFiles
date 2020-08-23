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
		ret = kvm_getfiles(kd, KERN_FILE_BYPID , pid, 1, &c);
		kvm_close(kd);
		RETVAL = c;
	OUTPUT:
		RETVAL

AV*
_fd_info_per_process(int pid)
	INIT:
		struct kinfo_file* kf;
		int i,c;
		kvm_t * kd;
	CODE:
		RETVAL = newAV();
		sv_2mortal((SV*)RETVAL);
		kd = kvm_open(NULL, NULL, NULL, KVM_NO_FILES, NULL);
		kf = kvm_getfiles(kd, KERN_FILE_BYPID , pid, sizeof(*kf), &c);
		for (i = 0; i < c; i++) {
			HV* hash = newHV();
			hv_store(hash, "path", strlen("path"), newSVpvf("%s", kf[i].f_mntonname), 0);
			av_push(RETVAL, newRV_noinc((SV*)hash));
		}
		kvm_close(kd);
	OUTPUT:
		RETVAL
